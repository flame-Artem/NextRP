/// @MOVE AND BOUNCE THE NRP

//Start up tne movement
x += xSpeed;
y += ySpeed;

//Change the colour
if hit == true{
    counter += 1;
    if counter >= 5{
        counter = 0;
    }
    if counter == 0{
        sprite_index = spr_NRP1
    }else if counter == 1{
        sprite_index = spr_NRP11
    }else if counter == 2{
        sprite_index = spr_NRP111
    }else if counter == 3{
        sprite_index = spr_NRP1111
    }else{
        sprite_index = spr_NRP11111
    }
    hit = false;
}

//move the other direction if the side of the wall is hit
if x+sprite_width/2 >= room_width{
    xSpeed *= -1;
    hit = true;
}

if x-sprite_width/2 <= 0{
    xSpeed *= -1;
    hit = true;
}

if y+sprite_height/2 >= room_height{
    ySpeed *= -1;
    hit = true;
}

if y-sprite_height/2 <= 0{
    ySpeed *= -1;
    hit = true;
}