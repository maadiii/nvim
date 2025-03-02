lua << EOF
require("nvim-tree").setup()

require('telescope').setup{
	defaults = { 
		file_ignore_patterns = {"node_modules"},
      	layout_config = { height = 0.99, width = 0.99 }
	},
	extensions = {
		'coc'
	},
}


require('nvim-treesitter.configs').setup {
  ensure_installed = "rust", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  ignore_install = {}, -- List of parsers to ignore installing

  highlight = {
    enable = true,              -- false will disable the whole extension
    --disable = { "c", "rust" },  -- list of language that will be disabled
    --disable = { "c", "rust" },  -- list of language that will be disabled
  },
}

require("todo-comments").setup {
	signs = true, -- show icons in the signs column
	sign_priority = 10, -- sign priority
	-- keywords recognized as todo comments
    keywords = {
      FIX = {
        icon = " ", -- icon used for the sign, and in search results
        color = "warning", -- can be a hex color, or a named color (see below)
        alt = { "FIXME", "BUG", "FIXIT", "ISSUE" }, -- a set of other keywords that all map to this FIX keywords
        -- signs = false, -- configure signs for some keywords individually
      },
      TODO = { icon = " ", color = "info" },
      HACK = { icon = " ", color = "warning" },
      WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
      PERF = { icon = " ", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
      NOTE = { icon = " ", color = "hint", alt = { "INFO" } },
      TEST = { icon = "⏲ ", color = "test", alt = { "TESTING", "PASSED", "FAILED" } },
    },
	merge_keywords = true, -- when true, custom keywords will be merged with the defaults
	-- highlighting of the line containing the todo comment
	-- * before: highlights before the keyword (typically comment characters)
	-- * keyword: highlights of the keyword
	-- * after: highlights after the keyword (todo text)
	highlight = {
		before = "", -- "fg" or "bg" or empty
		keyword = "wide", -- "fg", "bg", "wide" or empty. (wide is the same as bg, but will also highlight surrounding characters)
		after = "fg", -- "fg" or "bg" or empty
		pattern = [[.*<(KEYWORDS)\s*:]], -- pattern used for highlightng (vim regex)
		comments_only = true, -- uses treesitter to match keywords in comments only
		max_line_len = 400, -- ignore lines longer than this
		exclude = {}, -- list of file types to exclude highlighting
		},
	-- list of named colors where we try to extract the guifg from the
	-- list of hilight groups or use the hex color if hl not found as a fallback
	colors = {
		error = { "LspDiagnosticsDefaultError", "ErrorMsg", "#DC2626" },
		warning = { "LspDiagnosticsDefaultWarning", "WarningMsg", "#FBBF24" },
		info = { "LspDiagnosticsDefaultInformation", "#ffaa7f" },
		hint = { "LspDiagnosticsDefaultHint", "#10B981" },
		default = { "Identifier", "#7C3AED" },
		},
	search = {
		command = "rg",
		args = {
			"--color=never",
			"--no-heading",
			"--with-filename",
			"--line-number",
			"--column",
			},
		-- regex that will be used to match keywords.
		-- don't replace the (KEYWORDS) placeholder pattern = [[\b(KEYWORDS):]], -- ripgrep regex -- pattern = [[\b(KEYWORDS)\b]], -- match without the extra colon.  You'll likely get false positives
		},
	}
	local cb = require'diffview.config'.diffview_callback

	require'diffview'.setup {
	  diff_binaries = false,    -- Show diffs for binaries
	  enhanced_diff_hl = false, -- See ':h diffview-config-enhanced_diff_hl'
	  use_icons = true,         -- Requires nvim-web-devicons
	  icons = {                 -- Only applies when use_icons is true.
		 folder_closed = "",
		 folder_open = "",
	  },
	  signs = {
		 fold_closed = "",
		 fold_open = "",
	  },
	  file_panel = {
		 win_config = {
			 position = "left",                  -- One of 'left', 'right', 'top', 'bottom'
			 width = 35,                         -- Only applies when position is 'left' or 'right'
			 height = 10,   
		 },-- Only applies when position is 'top' or 'bottom'
		 listing_style = "tree",             -- One of 'list' or 'tree'
		 tree_options = {                    -- Only applies when listing_style is 'tree'
			flatten_dirs = true,              -- Flatten dirs that only contain one single dir
			folder_statuses = "only_folded",  -- One of 'never', 'only_folded' or 'always'.
		 },
	  },
	  file_history_panel = {
		 win_config = { 
			 position = "bottom",
			 width = 35,
			 height = 16,
		 },
		 log_options = {
		   git = {
			 single_file = {
			 	max_count = 512,      -- Limit the number of commits
			 	follow = true,       -- Follow renames (only for single file)
			 	all = false,          -- Include all refs under 'refs/' including HEAD
			 	merges = false,       -- List only merge commits
			 	no_merges = false,    -- List no merge commits
			 	reverse = false,      -- List commits in reverse order
			 },
			 multi_file = {
			 	max_count = 128,      -- Limit the number of commits
			 	follow = false,       -- Follow renames (only for single file)
			 	all = false,          -- Include all refs under 'refs/' including HEAD
			 	merges = false,       -- List only merge commits
			 	no_merges = false,    -- List no merge commits
			 	reverse = false,      -- List commits in reverse order
			 },
		   }
		 },
	  },
	  default_args = {    -- Default args prepended to the arg-list for the listed commands
		 DiffviewOpen = {},
		 DiffviewFileHistory = {},
	  },
	  hooks = {},         -- See ':h diffview-config-hooks'
	  key_bindings = {
		 disable_defaults = false,                   -- Disable the default key bindings
		 -- The `view` bindings are active in the diff buffers, only when the current
		 -- tabpage is a Diffview.
		 view = {
			["<tab>"]      = cb("select_next_entry"),  -- Open the diff for the next file
			["<s-tab>"]    = cb("select_prev_entry"),  -- Open the diff for the previous file
			["gf"]         = cb("goto_file"),          -- Open the file in a new split in previous tabpage
			["<C-w><C-f>"] = cb("goto_file_split"),    -- Open the file in a new split
			["<C-w>gf"]    = cb("goto_file_tab"),      -- Open the file in a new tabpage
			["<leader>e"]  = cb("focus_files"),        -- Bring focus to the files panel
			["<leader>b"]  = cb("toggle_files"),       -- Toggle the files panel.
		 },
		 file_panel = {
			["j"]             = cb("next_entry"),           -- Bring the cursor to the next file entry
			["<down>"]        = cb("next_entry"),
			["k"]             = cb("prev_entry"),           -- Bring the cursor to the previous file entry.
			["<up>"]          = cb("prev_entry"),
			["<cr>"]          = cb("select_entry"),         -- Open the diff for the selected entry.
			["o"]             = cb("select_entry"),
			["<2-LeftMouse>"] = cb("select_entry"),
			["-"]             = cb("toggle_stage_entry"),   -- Stage / unstage the selected entry.
			["S"]             = cb("stage_all"),            -- Stage all entries.
			["U"]             = cb("unstage_all"),          -- Unstage all entries.
			["X"]             = cb("restore_entry"),        -- Restore entry to the state on the left side.
			["R"]             = cb("refresh_files"),        -- Update stats and entries in the file list.
			["<tab>"]         = cb("select_next_entry"),
			["<s-tab>"]       = cb("select_prev_entry"),
			["gf"]            = cb("goto_file"),
			["<C-w><C-f>"]    = cb("goto_file_split"),
			["<C-w>gf"]       = cb("goto_file_tab"),
			["i"]             = cb("listing_style"),        -- Toggle between 'list' and 'tree' views
			["f"]             = cb("toggle_flatten_dirs"),  -- Flatten empty subdirectories in tree listing style.
			["<leader>e"]     = cb("focus_files"),
			["<leader>b"]     = cb("toggle_files"),
		 },
		 file_history_panel = {
			["g!"]            = cb("options"),            -- Open the option panel
			["<C-A-d>"]       = cb("open_in_diffview"),   -- Open the entry under the cursor in a diffview
			["y"]             = cb("copy_hash"),          -- Copy the commit hash of the entry under the cursor
			["zR"]            = cb("open_all_folds"),
			["zM"]            = cb("close_all_folds"),
			["j"]             = cb("next_entry"),
			["<down>"]        = cb("next_entry"),
			["k"]             = cb("prev_entry"),
			["<up>"]          = cb("prev_entry"),
			["<cr>"]          = cb("select_entry"),
			["o"]             = cb("select_entry"),
			["<2-LeftMouse>"] = cb("select_entry"),
			["<tab>"]         = cb("select_next_entry"),
			["<s-tab>"]       = cb("select_prev_entry"),
			["gf"]            = cb("goto_file"),
			["<C-w><C-f>"]    = cb("goto_file_split"),
			["<C-w>gf"]       = cb("goto_file_tab"),
			["<leader>e"]     = cb("focus_files"),
			["<leader>b"]     = cb("toggle_files"),
		 },
		 option_panel = {
			["<tab>"] = cb("select"),
			["q"]     = cb("close"),
		 },
	  },
	}
	-- function _G.symbol_line()
	--   local curwin = vim.g.statusline_winid or 0
	--   local curbuf = vim.api.nvim_win_get_buf(curwin)
	--   local ok, line = pcall(vim.api.nvim_buf_get_var, curbuf, 'coc_symbol_line')
	--   return ok and line or ''
	-- end
      
	-- vim.o.tabline = '%!v:lua.symbol_line()'
	-- vim.o.statusline = '%!v:lua.symbol_line()'
EOF
