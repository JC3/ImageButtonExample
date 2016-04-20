--[[
Example for https://forums.factorio.com/viewtopic.php?f=34&t=24007
--]]

require "defines"


--[[
This function builds all the elements discussed in the guide.
--]]

function build_example_gui (frame) 

	-- Buttons

	frame.add({
		type = "button",
		name = "trans-image-button",
		style = "trans-image-button-style"
	})

	frame.add({
		type = "button",
		name = "full-image-button",
		style = "full-image-button-style"
	})
	
	frame.add({
		type = "button",
		name = "tiled-image-button",
		style = "tiled-image-button-style"
	})
	
	-- Checkboxes: state is required

	frame.add({
		type = "checkbox",
		name = "trans-image-checkbox",
		style = "trans-image-checkbox-style",
		state = false
	})
	
	frame.add({
		type = "checkbox",
		name = "full-image-checkbox",
		style = "full-image-checkbox-style",
		state = false
	})
	
	frame.add({
		type = "checkbox",
		name = "tiled-image-checkbox",
		style = "tiled-image-checkbox-style",
		state = false
	})

	-- For our hacky checkbox, we wan't state=true so the graphic displays.
	
	frame.add({
		type = "checkbox",
		name = "hacky-checkbox",
		style = "hacky-checkbox-style",
		state = true
	})
	
end


--[[
This is called when our hacky checkbox is clicked. This would be your normal event
handler for that, the only important point is that you always force the checked state
back to true to keep the graphic visible.
--]]

function on_hacky_checkbox_clicked (element)

	element.state = true -- Always do this.
	
	-- <your whatever code here>

end


--[[
Boring and boiler plate stuff below this line.
--]]

function toggle_gui (player)
	if player.gui.left["image-button-example-frame"] then
		player.gui.left["image-button-example-frame"].destroy()
	else
		local frame = player.gui.left.add({type = "frame", name = "image-button-example-frame"})
		build_example_gui(frame)
	end
end

function init_for_player (player) 
	if not player.gui.top["image-button-example-top"] then
		player.gui.top.add({
			type = "button",
			name = "image-button-example-top",
			style = "button_style",
			caption = "image-button-example"
		})
	end
end	

script.on_init(function()
	for i,p in ipairs(game.players) do
		init_for_player(p)
	end
end)

script.on_event(defines.events.on_player_created, function(event)
	init_for_player(game.players[event.player_index])
end)

script.on_event(defines.events.on_gui_click, function(event) 
	if (event.element.name == "image-button-example-top") then
		toggle_gui(game.players[event.element.player_index])
	elseif (event.element.name == "hacky-checkbox") then
		on_hacky_checkbox_clicked(event.element)
	end
end)
