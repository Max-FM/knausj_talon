from talon import Module, Context, actions

mod = Module()
ctx = Context()

@mod.capture(rule="(plus | minus)")
def dice_modifier_sign(m) -> str:
    if "plus" in m:
        return "+"
    elif "minus" in m:
        return "-"
    else:
        return ""

@mod.capture(rule="(advantage | disadvantage)")
def dice_advantage(m) -> str:
    if "advantage" in m:
        return "kh"
    elif "disadvantage" in m:
        return "kl"
    else:
        return ""

@mod.action_class
class Actions:
    #  TODO: See if I can pass this directly to the Foundry VTT API.
    def roll_dice(no_of_dice: int, dice_type: int, modifier_sign: str, modifier: int, advantage: str):
        """Roll dice in FoundryVTT"""
        if advantage:
            no_of_dice = 2
        dice_roll = f"{no_of_dice}d{dice_type}"

        if modifier_sign:
            dice_roll += f"{modifier_sign}{modifier}"
        elif advantage:
            dice_roll += f"{advantage}"

        print(f"Rolling {dice_roll}")
        actions.insert("/r " + dice_roll)
        actions.key("enter")
