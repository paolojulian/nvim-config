return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    window = {
      width = 60, -- Set your desired default width here
    },
  },
  config = function(_, opts)
    require("neo-tree").setup(opts)
    -- Define the toggle function
    local toggle_width = function()
      local current_width = vim.fn.winwidth(vim.fn.bufwinnr("neo-tree"))
      local new_width = current_width == 40 and 50 or 30 -- Toggle between 40 and 50
      vim.cmd("Neotree resize " .. new_width)
    end
    -- Map the toggle function to a keybinding (e.g., <leader>nt)
    vim.keymap.set("n", "<leader>nt", toggle_width, { desc = "Toggle Neo-tree width" })
  end,
}
