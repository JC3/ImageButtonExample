--[[
Example for https://forums.factorio.com/viewtopic.php?f=34&t=24007
This contains styles for all the checkboxes. I've included an empty.png in the graphics
folder although I don't actually have an example for it here. You could use it, say, as
the checkmark graphic on a checkbox, if you're using it as a button with a background
image and want to hide the fact that it's a checkbox.
--]]

data.raw["gui-style"].default["trans-image-checkbox-style"] = {
	type = "checkbox_style",
	parent = "checkbox_style",
	width = 34,
	height = 34,
	default_background = {
		filename = "__image-button-example__/graphics/explosive-cannon-shell.png",
		width = 32,
		height = 32,
		shift = { 0, -8 }
	},
	hovered_background = {
		filename = "__image-button-example__/graphics/explosive-cannon-shell.png",
		width = 32,
		height = 32,
		shift = { 0, -8 }
	},
	clicked_background = {
		filename = "__image-button-example__/graphics/explosive-cannon-shell.png",
		width = 32,
		height = 32,
		shift = { 0, -8 }
	},
	disabled_background = {
		filename = "__image-button-example__/graphics/explosive-cannon-shell.png",
		width = 32,
		height = 32,
		shift = { 0, -8 }
	}
	-- Here we'll use base style 'checked' image, which is just a litle X.
}

data.raw["gui-style"].default["full-image-checkbox-style"] = {
	type = "checkbox_style",
	parent = "checkbox_style",
	width = 34,
	height = 34,
	default_background = {
		filename = "__image-button-example__/graphics/single-full.png",
		width = 32,
		height = 32,
		shift = { 0, -8 }
	},
	hovered_background = {
		filename = "__image-button-example__/graphics/single-full.png",
		width = 32,
		height = 32,
		shift = { 0, -8 }
	},
	clicked_background = {
		filename = "__image-button-example__/graphics/single-full.png",
		width = 32,
		height = 32,
		shift = { 0, -8 }
	},
	disabled_background = {
		filename = "__image-button-example__/graphics/single-full.png",
		width = 32,
		height = 32,
		shift = { 0, -8 }
	},
	checked = {
		filename = "__image-button-example__/graphics/no.png",
		width = 32,
		height = 32,
		shift = { 0, -8 }
	}
}

data.raw["gui-style"].default["tiled-image-checkbox-style"] = {
	type = "checkbox_style",
	parent = "checkbox_style",
	width = 34,
	height = 34,
	default_background = {
		filename = "__image-button-example__/graphics/tiled-full.png",
		width = 32,
		height = 32,
		shift = { 0, -8 },
		x = 0
	},
	hovered_background = {
		filename = "__image-button-example__/graphics/tiled-full.png",
		width = 32,
		height = 32,
		shift = { 0, -8 },
		x = 32
	},
	clicked_background = {
		filename = "__image-button-example__/graphics/tiled-full.png",
		width = 32,
		height = 32,
		shift = { 0, -8 },
		x = 64
	},
	disabled_background = {
		filename = "__image-button-example__/graphics/tiled-full.png",
		width = 32,
		height = 32,
		shift = { 0, -8 },
		x = 96
	},
	checked = {
		filename = "__image-button-example__/graphics/no.png",
		width = 32,
		height = 32,
		shift = { 0, -8 }
	}
}

data.raw["gui-style"].default["hacky-checkbox-style"] = {
	type = "checkbox_style",
	parent = "checkbox_style",
	width = 38,
	height = 38,
	default_background = {
		filename = "__core__/graphics/gui.png",
		width = 36,
		height = 36,
		shift = { 0, -10 },
		x = 111
	},
	hovered_background = {
		filename = "__core__/graphics/gui.png",
		width = 36,
		height = 36,
		shift = { 0, -10 },
		x = 148
	},
	clicked_background = {
		filename = "__core__/graphics/gui.png",
		width = 36,
		height = 36,
		shift = { 0, -10 },
		x = 184
	},
	disabled_background = {
		filename = "__core__/graphics/gui.png",
		width = 36,
		height = 36,
		shift = { 0, -10 },
		x = 111
	},
	checked = {
		filename = "__image-button-example__/graphics/explosive-cannon-shell.png",
		width = 32,
		height = 32,
		shift = { 0, -10 }
	}
}
