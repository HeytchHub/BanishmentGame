if (alarm[2] > 0) {
    alarm[2] -= 1; // Countdown the delay
    if (alarm[2] == 0) {
        can_attack = true; // Allow the player to attack again after the delay
    }
}
