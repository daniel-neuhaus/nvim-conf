return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    vim.keymap.set('n', '<C-e>', function()
      local buf_ft = vim.bo.filetype
      local command = require('neo-tree.command')
      if buf_ft == 'neo-tree' then
        command.execute({
          action = "close",
          source = "filesystem",
        })
      else
        command.execute({
          action = "focus",
          source = "filesystem",
          position = "left",
        })
      end
    end,
      { desc = "todo desc" }
    );
  end
}



