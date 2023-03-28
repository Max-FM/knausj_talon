tag: user.jupyter
-
tag(): user.python

insert [cell] below: key("escape b")
insert [cell] above: key("escape a")
(delete | wipe | clear | chuck) cell: key("escape d d")
markdown cell: key("escape m")
code cell: key("escape y")
copy cell: key("escape c")
paste cell: key("escape v")
undo cell: key("escape z")
redo cell: key("escape shift-z")

run [cell]: key("ctrl-enter")
run [cell] next: key("shift-enter")
run [cell] insert: key("alt-enter")
run all [cells]: key("escape ctrl-a ctrl-enter")

select [cell] above: key("escape shift-up")
select [cell] below: key("escape shift-down")
select all [cells]: key("escape ctrl-a")

save notebook: key("ctrl-s")
save notebook as: key("ctrl-shift-s")

comment line: key("ctrl-/")
indent line: key("ctrl-]")
(outdent | dedent) line: key("ctrl-[")

split cell: key("ctrl-shift--")
merge below: key("escape M")
merge above: key("escape shift-up M")

restart kernel: key("escape 0 0")
interrupt kernel: key("escape i i")
