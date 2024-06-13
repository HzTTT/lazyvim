return {
  "coffebar/neovim-project",
  init = function()
    -- enable saving the state of plugins in the session
    vim.opt.sessionoptions:append("globals") -- save global variables that start with an uppercase letter and contain at least one lowercase letter.
  end,
  dependencies = {
    { "nvim-lua/plenary.nvim" },
    { "nvim-telescope/telescope.nvim", tag = "0.1.4" },
    { "Shatur/neovim-session-manager" },
  },
  lazy = false,
  priority = 100,
  opts = {
    -- Project directories
    projects = {
    },
    -- Load the most recent session on startup if not in the project directory
    last_session_on_startup = false,
    -- Dashboard mode prevent session autoload on startup
    dashboard_mode = true,
  },
  keys = {
    { "<leader>p", "", desc = "project", mode = { "n", "v" } },
    { "<leader>pf", "<cmd>Telescope neovim-project discover<cr>", desc = "project found" },
    { "<leader>ph", "<cmd>Telescope neovim-project history<cr>", desc = "project history" },
    { "<leader>pr", "<cmd>NeovimProjectLoadRecent<cr>", desc = "recent project " },
  },
}
