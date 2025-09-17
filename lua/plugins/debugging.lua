return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui",
    "nvim-neotest/nvim-nio",
  },
  config = function()
    local dap = require("dap")
    local dapui = require("dapui")

    dapui.setup()

    dap.listeners.before.attach.dapui_config = function() dapui.open() end
    dap.listeners.before.launch.dapui_config = function() dapui.open() end
    dap.listeners.before.event_terminated.dapui_config = function() dapui.close() end
    dap.listeners.before.event_exited.dapui_config = function() dapui.close() end

    -- Adapter pwa-node
    dap.adapters["pwa-node"] = {
      type = "server",
      host = "localhost",
      port = "${port}",
      executable = {
        command = "node",
        args = { os.getenv("HOME") .. "/.local/share/js-debug/js-debug/src/dapDebugServer.js", "${port}" },
      },
    }

    -- Config cho JS/TS
    dap.configurations.javascript = {
      {
        type = "pwa-node",
        request = "launch",
        name = "Launch current file",
        program = "${file}",
        cwd = vim.fn.getcwd(),
      },
    }
    dap.configurations.typescript = dap.configurations.javascript

    -- Keymaps
    vim.keymap.set("n", "<leader>dt", dap.toggle_breakpoint, {})
    vim.keymap.set("n", "<leader>dc", dap.continue, {})
  end,
}

