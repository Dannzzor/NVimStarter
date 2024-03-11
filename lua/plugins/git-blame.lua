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
    opts = {

      --gitblame_ignored_filetypes = ['lua', 'c'],
      --gitblame_delay = 250
      gitblame_message_when_not_committed = "I can't believe you've done this!",
      --gitblame_highlight_group = "Comment",
      -- option: "Question"

      --gitblame_date_format = '%r',
      -- %r  relative date (e.g., 3 days ago)
      -- %a  abbreviated weekday name (e.g., Wed)
      -- %A  full weekday name (e.g., Wednesday)
      -- %b  abbreviated month name (e.g., Sep)
      -- %B  full month name (e.g., September)
      -- %c  date and time (e.g., 09/16/98 23:48:10)
      -- %d  day of the month (16) [01-31]
      -- %H  hour, using a 24-hour clock (23) [00-23]
      -- %I  hour, using a 12-hour clock (11) [01-12]
      -- %M  minute (48) [00-59]
      -- %m  month (09) [01-12]
      -- %p  either "am" or "pm" (pm)
      -- %S  second (10) [00-61]
      -- %w  weekday (3) [0-6 = Sunday-Saturday]
      -- %x  date (e.g., 09/16/98)
      -- %X  time (e.g., 23:48:10)
      -- %Y  full year (1998)
      -- %y  two-digit year (98) [00-99]
      -- %%  the character `%´
    },
  },
}
