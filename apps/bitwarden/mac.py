from talon import Module, Context, actions

ctx = Context()

ctx.matches = r"""
os: mac
app: bitwarden
"""

@ctx.action_class("user")
class Actions:
    def bitwarden_lock_vault():
        """Lock the vault."""
        actions.key("cmd-l")
    def bitwarden_new_login():
        """Add new login."""
        actions.key("cmd-n")
    def bitwarden_copy_username():
        """Copy username to clipboard."""
        actions.key("cmd-u")
    def bitwarden_bitwarden_copy_password():
        """Copy password to clipboard."""
        actions.key("cmd-p")
    def bitwarden_bitwarden_copy_totp():
        """Copy one time password to clipboard."""
        actions.key("cmd-t")
    def bitwarden_password_generator():
        """View password generator."""
        actions.key("cmd-g")
