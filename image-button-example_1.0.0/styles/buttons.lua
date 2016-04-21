--[[
Example for https://forums.factorio.com/viewtopic.php?f=34&t=24007
This contains styles for all the buttons.
--]]

data.raw["gui-style"].default["trans-image-button-style"] = {
	type = "button_style",
	parent = "button_style",
	width = 34,
	height = 34,
	default_graphical_set = {
		type = "monolith",
		monolith_image = {
			filename = "__image-button-example__/graphics/explosive-cannon-shell.png",
			width = 32,
			height = 32
		}
	},
	hovered_graphical_set = {
		type = "monolith",
		monolith_image = {
			filename = "__image-button-example__/graphics/explosive-cannon-shell.png",
			width = 32,
			height = 32
		}
	},
	clicked_graphical_set = {
		type = "monolith",
		monolith_image = {
			filename = "__image-button-example__/graphics/explosive-cannon-shell.png",
			width = 32,
			height = 32
		}
	},
	disabled_graphical_set = {
		type = "monolith",
		monolith_image = {
			filename = "__image-button-example__/graphics/explosive-cannon-shell.png",
			width = 32,
			height = 32
		}
	}
}

data.raw["gui-style"].default["full-image-button-style"] = {
	type = "button_style",
	parent = "button_style",
	width = 34,
	height = 34,
	default_graphical_set = {
		type = "monolith",
		monolith_image = {
			filename = "__image-button-example__/graphics/single-full.png",
			width = 32,
			height = 32
		}
	},
	hovered_graphical_set = {
		type = "monolith",
		monolith_image = {
			filename = "__image-button-example__/graphics/single-full.png",
			width = 32,
			height = 32
		}
	},
	clicked_graphical_set = {
		type = "monolith",
		monolith_image = {
			filename = "__image-button-example__/graphics/single-full.png",
			width = 32,
			height = 32
		}
	},
	disabled_graphical_set = {
		type = "monolith",
		monolith_image = {
			filename = "__image-button-example__/graphics/single-full.png",
			width = 32,
			height = 32
		}
	}
}

data.raw["gui-style"].default["tiled-image-button-style"] = {
	type = "button_style",
	parent = "button_style",
	width = 34,
	height = 34,
	default_graphical_set = {
		type = "monolith",
		monolith_image = {
			filename = "__image-button-example__/graphics/tiled-full.png",
			width = 32,
			height = 32,
			x = 0 -- x offset of default image in our tiled graphic
		}
	},
	hovered_graphical_set = {
		type = "monolith",
		monolith_image = {
			filename = "__image-button-example__/graphics/tiled-full.png",
			width = 32,
			height = 32,
			x = 32 -- x offset of hover image in our tiled graphic
		}
	},
	clicked_graphical_set = {
		type = "monolith",
		monolith_image = {
			filename = "__image-button-example__/graphics/tiled-full.png",
			width = 32,
			height = 32,
			x = 64 -- x offset of click image in our tiled graphic
		}
	},
	disabled_graphical_set = {
		type = "monolith",
		monolith_image = {
			filename = "__image-button-example__/graphics/tiled-full.png",
			width = 32,
			height = 32,
			x = 96 -- x offset of disabled image in our tiled graphic
		}
	}
}

-- Also just for grins, while this isn't an illustration of putting an icon on a button,
-- here is how "composition" type images can be used to generate frames (unfortunately,
-- checkboxes do not accept this). As a bonus this also shows how to add sounds to 
-- buttons (this does not work on checkboxes, which is a bummer).

data.raw["gui-style"].default["composition-button-style"] = {
	type = "button_style",
	parent = "button_style",
	default_graphical_set = {
		type = "composition",
		filename = "__image-button-example__/graphics/round-button.png",
		position = { 0, 0 },
		corner_size = { 8, 8 }
	},
	hovered_graphical_set = {
		type = "composition",
		filename = "__image-button-example__/graphics/round-button.png",
		position = { 17, 0 },
		corner_size = { 8, 8 }
	},
	clicked_graphical_set = {
		type = "composition",
		filename = "__image-button-example__/graphics/round-button.png",
		position = { 34, 0 },
		corner_size = { 8, 8 }
	},
	disabled_graphical_set = {
		type = "composition",
		filename = "__image-button-example__/graphics/round-button.png",
		position = { 51, 0 },
		corner_size = { 8, 8 }
	},
	left_click_sound = {{
		filename = "__core__/sound/gui-click.ogg",
        volume = 1
    }}
}
