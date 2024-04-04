-- Open the commit URL in browser
-- :GitBlameOpenCommitURL opens the commit URL of commit under the cursor. Tested to work with GitHub and GitLab.
--
-- Enable/Disable git blame messages
-- :GitBlameToggle toggles git blame on/off,
-- :GitBlameEnable enables git blame messages,
-- :GitBlameDisable disables git blame messages.
-- Copy SHA hash
-- :GitBlameCopySHA copies the SHA hash of current line's commit into the system's clipboard.
--
-- Copy Commit URL
-- :GitBlameCopyCommitURL copies the commit URL of current line's commit into the system clipboard.
--
-- Open file URL in browser
-- :GitBlameOpenFileURL opens the file in the default browser.
--
-- The URL is scoped to the latest commit on the current branch and has a mark of the current line. (same is true for GitBlameCopyFileURL)
--
-- Copy file URL
-- :GitBlameCopyFileURL copies the file URL into the system clipboard.

return {
  {
    "f-person/git-blame.nvim",
    keys = { { "<leader>go", "<cmd>GitBlameOpenFileURL<cr>", desc = "Git open file commit" } },
  },
}
