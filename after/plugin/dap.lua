require("neodev").setup({
  library = { plugins = { "nvim-dap-ui" }, types = true },
  ...
})

require("mason-nvim-dap").setup({
    automatic_setup = true,
})

require("dapui").setup()
