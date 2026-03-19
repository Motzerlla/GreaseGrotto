//TO-DO : implent better Air control on jumping along with just knowing what to do slightly better
//Feature When you jump you have more air control than peppino normally does, 
//Pressing grab allows you to change accelerate in the oposite direction mid air
// pressing down no long puts you into a dive instead it makes you fall faster
function player_crescentjump(){
	
	hsp = xscale*movespeed;
	
	if(grounded){
		state = states.mach2;
	}

	
	if(input.down.check){
		do_groundpound()
	}
	
	if(scr_hitwall(x + xscale, y) && !place_meeting(x + hsp, y, obj_destroyable) && !place_meeting(x+ hsp, y, obj_metalblock)){
		wallspeed = max(1,movespeed);
		
		state = states.climbwall;
		
	}
	
	
	
	if (!jumpstop && !input.jump.check && vsp < 0)
	{
		jumpstop = true
		vsp /= 10
	}
	
	sprite_index = spr_player_crescentjump;
	
	image_speed = 0.6;
	

}