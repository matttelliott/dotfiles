-- since this is just an example spec, don't actually load anything here and return an empty spec
-- stylua: ignore
-- if true then return {} end

return {
  {"folke/flash.nvim", enabled = false },
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      -- change a keymap
      { "<leader>o", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
    },
  }
}
