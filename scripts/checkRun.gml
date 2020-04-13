if (gamepad.run) {
    return gamepad.run;
} else {
    if (!global.mobileBuild) {
        if (!global.toggleRunEnabled) {
            return (keyboard_check(global.keyRunVal) or
                    gamepad_button_check(global.joyid, global.joyRunVal));
        } else {
            return global.toggleRun;
        }
    } else {
        return global.toggleRun;
    }
}
