show_message("you are dead");

state = "dead";
speed = 0;

if (!is_dead) {
    is_dead = true;

    show_message("you are dead");

    state = "dead";
    speed = 0;
}