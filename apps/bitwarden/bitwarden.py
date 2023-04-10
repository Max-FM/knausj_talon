from talon import Module, Context, actions

ctx = Context()
mod = Module()

apps = mod.apps
apps.bitwarden = "app.name: Bitwarden"
apps.bitwarden = "app.name: Bitwarden.exe"

ctx.matches = r"""
tag: bitwarden
"""

@mod.action_class
class Actions:
    def bitwarden_lock_vault():
        """Lock the vault."""

    def bitwarden_new_login():
        """Add new login."""

    def bitwarden_copy_username():
        """Copy username to clipboard."""

    def bitwarden_copy_password():
        """Copy password to clipboard."""

    def bitwarden_copy_totp():
        """Copy one time password to clipboard."""

    def bitwarden_password_generator():
        """View password generator."""
