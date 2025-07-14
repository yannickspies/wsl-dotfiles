return {
  "sindrets/diffview.nvim",
  dependencies = "nvim-lua/plenary.nvim",
  cmd = {
    "DiffviewOpen",
    "DiffviewClose",
    "DiffviewToggleFiles",
    "DiffviewFocusFiles",
    "DiffviewRefresh",
    "DiffviewFileHistory",
  },
  keys = {
    { "<leader>gv", "<cmd>DiffviewOpen HEAD~1<cr>", desc = "Open Diffview (last commit)" },
    { "<leader>gw", "<cmd>DiffviewOpen<cr>", desc = "Working changes (uncommitted)" },
    { "<leader>gh", "<cmd>DiffviewFileHistory %<cr>", desc = "File History (current)" },
    { "<leader>gH", "<cmd>DiffviewFileHistory<cr>", desc = "File History (all)" },
    { "<leader>gm", "<cmd>DiffviewOpen origin/main...HEAD<cr>", desc = "Compare with main" },
    { "<leader>gc", ":DiffviewOpen ", desc = "Compare branches/commits" },
    { "<leader>gf", "<cmd>DiffviewFileHistory --follow %<cr>", desc = "File History (follow renames)" },
    { "<leader>gl", "<cmd>DiffviewFileHistory --range=HEAD~10..HEAD<cr>", desc = "Log recent commits (10)" },
    { "<leader>go", ":DiffviewOpen ", desc = "Open specific commit" },
  },
  opts = {
    enhanced_diff_hl = true,
    view = {
      default = {
        layout = "diff2_horizontal",
        winbar_info = true,
      },
      merge_tool = {
        layout = "diff3_mixed",
        disable_diagnostics = true,
        winbar_info = true,
      },
      file_history = {
        layout = "diff2_horizontal",
        winbar_info = true,
      },
    },
    file_panel = {
      listing_style = "tree",
      tree_options = {
        flatten_dirs = true,
        folder_statuses = "only_folded",
      },
      win_config = {
        position = "left",
        width = 35,
      },
    },
    hooks = {},
    keymaps = {
      disable_defaults = false,
    },
  },
}