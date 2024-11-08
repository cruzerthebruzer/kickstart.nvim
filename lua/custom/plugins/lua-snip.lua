return {
  'L3MON4D3/LuaSnip',
  config = function()
    local ls = require 'luasnip'
    local fmt = require('luasnip.extras.fmt').fmt

    local s = ls.snippet
    local f = ls.function_node
    local t = ls.text_node
    local i = ls.insert_node

    local function uuid()
      local id, _ = vim.fn.system('uuidgen'):gsub('\n', '')
      return id
    end

    local function local_date_time()
      local date_time, _ = vim.fn.system('date +"%Y-%m-%dT%H:%M:%SZ"'):gsub('\n', '')
      return date_time
    end

    local function utc_date_time()
      local date_time, _ = vim.fn.system('date -u +"%Y-%m-%dT%H:%M:%SZ"'):gsub('\n', '')
      return date_time
    end

    local function local_date()
      local date, _ = vim.fn.system('date +"%Y-%m-%d"'):gsub('\n', '')
      return date
    end

    ls.add_snippets('all', {
      s('uuid', f(uuid, {})),
      s('date_time_local', f(local_date_time, {})),
      s('date_time_utc', f(utc_date_time, {})),
      s('date_local', f(local_date, {})),
    })

    local function pascal_to_spinal_case(str)
      str = str:gsub('^%u', string.lower)
      str = str:gsub('(%u)', '-%1'):lower()
      return str
    end

    ls.add_snippets('typescriptreact', {
      s(
        'generate_component_test',
        fmt(
          [[
import {{ render }} from '@testing-library/react';
import {ComponentName}, {{ {ComponentProps} }} from './{ComponentName}';

describe('{ComponentName}', () => {{
  let defaultProps: {ComponentProps};

  beforeEach(() => {{
    defaultProps = {{
      {}
    }};
  }});

  it('should render correctly', () => {{
    const {{ asFragment }} = render(<{ComponentName} {{...defaultProps}} />);
    expect(asFragment()).toMatchSnapshot();
  }});
}});
  ]],
          {
            i(0),
            ComponentName = i(1, 'ComponentName'),
            ComponentProps = f(function(args)
              return string.format('I%sProps', args[1][1])
            end, { 1 }),
          },
          {
            repeat_duplicates = true,
          }
        )
      ),

      s(
        'generate_function_component',
        fmt(
          [[
import {{ ClassName }} from "@busybusy/webapp-react-ui";
import classNames from "classnames";

export interface {ComponentProps} {{
  className?: ClassName;
}}

export default function {ComponentName}({{ className }}: {ComponentProps}) {{
  {}
  const classes = classNames('{ComponentClassName}', className);
  return <{WrapperTag} className={{classes}}></{WrapperTag}>;
}}
]],
          {
            i(0),
            ComponentName = i(1, 'ComponentName'),
            ComponentProps = f(function(args)
              return string.format('I%sProps', args[1][1])
            end, { 1 }),
            ComponentClassName = f(function(args)
              return pascal_to_spinal_case(args[1][1])
            end, { 1 }),
            WrapperTag = i(2, 'WrapperTag'),
          },
          {
            repeat_duplicates = true,
          }
        )
      ),
    })
  end,
}
