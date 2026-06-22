# Baltic Theme for Neovim

## Local Install

With lazy.nvim:

```lua
{
  dir = "~/Repos/mls-themes/nvim",
  name = "baltic.nvim",
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("baltic")
  end,
}
```

Manual:

```vim
:set runtimepath+=~/Repos/mls-themes/nvim
:colorscheme baltic
```

