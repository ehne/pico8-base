pico-8 cartridge // http://www.pico-8.com
version 16
__lua__
-- your game name
-- by name

function _init()
	-- base stuff
	cls()
	_upd,_drw=update_logo,draw_logo
	--logo stuff
	logo_timer=60
	sfx(00)
	-- menu stuff
	button_pressed=false
end

function _update60()
	_upd()
end
function _draw()
	_drw()
end

function start_game()
	cls()
	
end
-->8
-- updates
function update_logo()
	logo_timer -= 1
	if logo_timer == 0 then
		_upd = update_menu
		_drw = draw_menu
	end
end

function update_menu()
	
	if btn(❎) then
		button_pressed=true
		start_game()
		_upd=update_game
		_drw=draw_game
	else
		button_pressed=false
	end
	
end

function update_game()

end
-->8
-- draws
function draw_logo()
	cls()

	
	sspr(9,4,11,12,64-11/2,50)
	
	c_print(" lone paperclip",64,64,8)
	c_print("      paperclip",64,64,10)
end

function draw_menu()
	cls(0)
	if button_pressed == false then
		c_print("press ❎ to start",64,101,5)
		c_print("press ❎ to start",64,100,7)
	else
		c_print("press ❎ to start",64,101,7)
		
	end
	
end

function draw_debug()
	cls(8)
	c_print("you have found the debug world",64,64,0)
end

function draw_game()

end
-->8
-- ui guff
function c_print(_t,_x,_y,_c)
	print(_t,_x-#_t*2,_y,_c)
end

__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000008800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000080080000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000800008000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000008008008000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000080080080000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000800800800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000008008008000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000008080080080000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000008008800800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000800008000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000088880000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__sfx__
010400003005030041300313002137050370413704137031370313702137021370113701137011370113701500000000000000000000000000000000000000000000000000000000000000000000000000000000
013200202000020000200002000020000200002000020000200002000020000200001e0001e0001c0001c00023000230002300023000210002100020000200001c0001c0001c0001c0001c0001c0001c0001c000
01320020171001910014100101001710019100141000f10014100171001b1000f10014100171001b1000d1001010015100141000d1001010017100191000d1001010015100141000d10010100171001910000000
013200202370023700237002370023700237002370023700237002370023700217002170020700207002870028700287002870025700257002370023700207002070020700207002070020700207002070000000
0119002001600016000160001600016000160004600076000b60012600166001b6002060028600306003560038600336002d6002960025600206001c6001860012600106000c6000860004600026000260001600
01140000020000100001000240001b0001e000060000f0001200012000120000e0000b0000900007000060000600006000060000600006000060000500003000010001c0001c0000600005000050000600007000
