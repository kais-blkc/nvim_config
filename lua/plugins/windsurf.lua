return {
    "Exafunction/windsurf.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "hrsh7th/nvim-cmp",
    },
    config = function()
        require("codeium").setup({
          enable_chat = true,
          virtual_text = {
            enabled = true,
          },
          workspace_root = {
            use_lsp = true,
          },
        })
    end
}
