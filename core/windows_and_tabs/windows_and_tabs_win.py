# defines the default app actions for windows

from talon import Module, Context, actions

mod = Module()
ctx = Context()
ctx.matches = r"""
os: windows
"""


@ctx.action_class("app")
class AppActions:
    # app.preferences()

    def tab_close():
        actions.key("ctrl-w")

    def tab_next():
        actions.key("ctrl-tab")

    def tab_open():
        actions.key("ctrl-t")

    def tab_previous():
        actions.key("ctrl-shift-tab")

    def tab_reopen():
        actions.key("ctrl-shift-t")

    def window_close():
        actions.key("alt-f4")

    def window_hide():
        actions.key("alt-space n")

    def window_hide_others():
        actions.key("win-d alt-tab")

    def window_open():
        actions.key("ctrl-n")
        # requires easy window switcher or equivalent (built into most Linux)

    def window_previous():
        actions.key("alt-shift-`")


@mod.action_class
class Actions:
    def window_maximize():
        """Maximize the active window."""
        actions.key("super-up")

    def window_minimize():
        """Minimize the active window."""
        actions.key("super-down")


@ctx.action_class("user")
class UserActions:
    def switcher_focus_last():
        actions.key("alt-tab")
