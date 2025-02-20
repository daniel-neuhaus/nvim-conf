return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local harpoon = require("harpoon")
    harpoon:setup()

    local function safe_harpoon_list()
      return harpoon:list() or { add = function() end, select = function() end, prev = function() end, next = function() end }
    end

    vim.keymap.set("n", "<leader>ha", function() safe_harpoon_list():add() end)
    vim.keymap.set("n", "<leader>hs", function()
      local hlist = harpoon:list()
      if hlist then harpoon.ui:toggle_quick_menu(hlist) end
    end)

    for i = 1, 6 do
      vim.keymap.set("n", string.format("<leader>h%d", i), function()
        safe_harpoon_list():select(i)
      end)
    end

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set("n", "<C-S-P>", function() safe_harpoon_list():prev() end)
    vim.keymap.set("n", "<C-S-N>", function() safe_harpoon_list():next() end)
  end
}

