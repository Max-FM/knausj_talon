from talon import Module, Context, actions

ctx = Context()

ctx.matches = r"""
os: windows
os: linux
app: bitwarden
"""

@ctx.action_class("user")
class Actions:
    def bitwarden_lock_vault():
        """Lock the vault."""
        actions.key("ctrl-l")
    def bitwarden_new_login():
        """Add new login."""
        actions.key("ctrl-n")
    def bitwarden_copy_username():
        """Copy username to clipboard."""
        actions.key("ctrl-u")
    def bitwarden_copy_password():
        """Copy password to clipboard."""
        actions.key("ctrl-p")
    def bitwarden_copy_totp():
        """Copy one time password to clipboard."""
        actions.key("ctrl-t")
    def bitwarden_password_generator():
        """View password generator."""
        actions.key("ctrl-g")
