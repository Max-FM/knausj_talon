app: bitwarden
-
# General
lock vault: user.bitwarden_lock_vault()

# File
new login: user.bitwarden_new_login()

# Edit
username copy: user.bitwarden_copy_username()
password copy: user.bitwarden_copy_password()
one time password copy: user.bitwarden_bitwarden_copy_totp()

# View
password generator: user.bitwarden_password_generator()
