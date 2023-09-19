require("neodev").setup({
  library = { plugins = { "nvim-dap-ui" }, types = true },
  ...
})

require("dapui").setup()

require("mason-nvim-dap").setup({
    automatic_setup = true,
})


local dap = require('dap')
dap.adapters.codelldb = {
    type = 'server',
    host = '127.0.0.1',
    port = "13000",
    executable = {
      command = '/home/johnny/.local/share/nvim/mason/bin/codelldb',
      args = {"--port", "13000"},
    }
}

dap.configurations.cpp = {
  {
    name = "Launch file",
    type = "codelldb",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ' .. vim.fn.getcwd() .. "/")
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
  },
}

dap.configurations.c = dap.configurations.cpp
dap.configurations.rust = dap.configurations.cpp

