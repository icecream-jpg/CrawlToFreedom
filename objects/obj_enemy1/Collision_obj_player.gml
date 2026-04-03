show_message("you are dead");

state = "dead";
speed = 0;

if (!is_dead) {
    is_dead = true;


	room_goto(GameOver);

    state = "dead";
    speed = 0;
}