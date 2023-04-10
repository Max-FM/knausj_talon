from talon import Module, Context, actions

ctx = Context()
mod = Module()

ctx.matches = r"""
tag: browser
"""

@mod.action_class
class ExtensionActions:
    def bitwarden_extension_activate():
        """Activate Bitwarden extension."""
        actions.key("ctrl-shift-y")
    def bitwarden_extension_autofill():
        """Auto-fill the last used login for the current website."""
        actions.key("ctrl-shift-l")
    def bitwarden_extension_generate():
        """Generate and copy a new random password to the clipboard."""
        actions.key("ctrl-shift-9")
    def bitwarden_extension_lock():
        """Lock the vault."""
        actions.key("ctrl-shift-n")
