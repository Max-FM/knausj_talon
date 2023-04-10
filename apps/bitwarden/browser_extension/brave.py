from talon import Module, Context, actions

ctx = Context()
ctx.matches = r"""
app: brave
"""

@ctx.action_class("user")
class ExtensionActions:
    def bitwarden_extension_activate():
        """Activate Bitwarden extension."""
        actions.key("ctrl-shift-u")
    def bitwarden_extension_lock():
        """Lock the vault."""
        # No predefined shortcut.
