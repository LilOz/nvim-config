return {
  {
    "github/copilot.vim",
    config = function()
      -- Toggle Copilot on/off
      vim.keymap.set("n", "<leader>ct", function()
        if vim.g.copilot_enabled == 1 then
          vim.cmd("Copilot disable")
          print("🛑 Copilot disabled")
        else
          vim.cmd("Copilot enable")
          print("✅ Copilot enabled")
        end
      end, { desc = "Toggle Copilot" })
    end,
  },
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "nvim-lua/plenary.nvim", branch = "master" },
    },
    build = "make tiktoken",
    opts = {},
    keys = {
      { "<leader>cc", "<cmd>CopilotChat<cr>", desc = "Open Copilot Chat" },
    },
  },
}
