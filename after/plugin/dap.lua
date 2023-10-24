local dap = require('dap')

  dap.adapters.lldb = {
    type = 'executable',
    command = '/usr/bin/lldb-vscode-14',
    name = "lldb"
  }
  dap.configurations.cpp = {
    {
      name = "Launch",
      type = "lldb",
      request = "launch",
      program = function()
        return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
      end,
      cwd = '${workspaceFolder}',
      stopOnEntry = true,
      args = {},
      runInTerminal = true,
    },
}

dap.configurations.c = dap.configurations.cpp

-- Dap UI
require("dapui").setup()


-- Setup breakpoints
vim.fn.sign_define('DapBreakpoint', {text='🛑', texthl='', linehl='', numhl=''})
vim.fn.sign_define('DapLogPoint', {text='📝', texthl='', linehl='', numhl=''})
vim.fn.sign_define('DapStopped', {text='▶️', texthl='', linehl='', numhl=''})

