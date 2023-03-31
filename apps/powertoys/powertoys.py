from talon import Context, Module, actions

mod = Module()
ctx = Context()
ctx.matches = r"""
os: windows
"""

@mod.action_class
class Actions:
    def powertoys_run(search_text: str):
        """Runs PowerToys Run"""
        actions.key("escape")
        actions.key("alt-space")
        actions.insert(search_text)
