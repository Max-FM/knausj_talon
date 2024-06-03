#Defines the Elgato Stream Deck Pedal commands that sleep/wake Talon
mode: all
-
deck(pedal_middle):
    speech.toggle()
    user.mouse_sleep()
