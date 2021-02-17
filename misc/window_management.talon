window new: app.window_open()
window next: app.window_next()
window last: app.window_previous()
window close: app.window_close()
focus <user.running_applications>: user.switcher_focus(running_applications)
running list: user.switcher_toggle_running()
start <user.launch_applications>: user.switcher_launch(launch_applications)
pop <user.window_snap_position>: user.snap_window(window_snap_position)
pop next screen: user.move_window_next_screen()
pop last screen: user.move_window_previous_screen()
pop screen <number>: user.move_window_to_screen(number)
pop <user.running_applications> <user.window_snap_position>:
    user.snap_app(running_applications, window_snap_position)
pop <user.running_applications> [screen] <number>:
    user.move_app_to_screen(running_applications, number)
desktop show: key(super-d)