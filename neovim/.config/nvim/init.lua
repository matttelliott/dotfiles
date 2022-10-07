require("user.options")
-- local clipboard = require("user.clipboard") error, not working
-- local greeter = require('user.greeter') --disabled: not useful, sometimes lingers
local colors = require("user.colors")
local colortils = require("user.colortils")
local comment = require("user.comment") -- not working
local completion = require("user.completion")
local database = require("user.database")
local explorer = require("user.explorer")
local http = require("user.http")
local formatting = require("user.formatting")
local git = require("user.git")
local highlighting = require("user.highlighting") -- causing errors
local htop = require("user.htop")
local keymap = require("user.keymap")
local lsp = require("user.lsp")
local motion = require("user.motion")
local plugins = require("user.plugins")
local quickfix = require("user.quickfix")
local search = require("user.search")
local statusline = require("user.statusline")
local terminal = require("user.terminal")
local environment = require("user.environment")
local undo = require("user.undo")
local vimwiki = require("user.vimwiki")

local modules = {
	colors,
	colortils,
	http,
	vimwiki,
	environment,
	completion,
	comment,
  highlighting,
	database,
	explorer,
	formatting,
	git,
	highlighting,
	htop,
	lsp,
	motion,
	quickfix,
	search,
	statusline,
	terminal,
	undo,
}

plugins.setup_plugins(modules)
keymap.setup_keymap(modules)
