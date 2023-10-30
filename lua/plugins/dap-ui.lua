return {
  "rcarriga/nvim-dap-ui",
  requires = { "mfussenegger/nvim-dap", "mfussenegger/nvim-dap-python" },
  config = function()
    local dap = require("dap")
    local dapui = require("dapui")
    dapui.setup()
    dap.listeners.after.event_initialized["dapui_config"] = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated["dapui_config"] = function()
      dapui.close()
    end
    dap.listeners.before.event_exited["dapui_config"] = function()
      dapui.close()
    end
  end,
  keys = {
    {
      "<leader>dPd",
      function()
        require("dap-python").debug_selection()
      end,
      desc = "Debug selection",
      ft = "python",
    },
    {
      "<leader>dt",
      function()
        require("dap-python").test_method()
      end,
      desc = "Debug Method",
      ft = "python",
    },
    {
      "<leader>dc",
      function()
        require("dap-python").test_class()
      end,
      desc = "Debug Class",
      ft = "python",
    },
    { "<leader>db", "<cmd> DapToggleBreakpoint <cr>", desc = "toggle breakpoint", ft = "python" },
  },
}
