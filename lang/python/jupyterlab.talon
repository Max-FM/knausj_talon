title: /JupyterLab/
-
tag(): user.jupyter

run all [cells] [above]: key("escape shift-home ctrl-enter down up")
run all [cells] below: key("escape shift-end ctrl-enter down up")

select all [cells] above: key("escape shift-home")
select all [cells] below: key("escape shift-end")

(sidebar | cyber): key("ctrl-b")
line numbers: key("escape L")

panel next: key("ctrl-shift-]")
panel last: key("ctrl-shift-[")
panel previous: key("ctrl-shift-#")

command palate: key("ctrl-shift-c")
simple interface: key("ctrl-shift-d")

go [line] <number>:
    key("alt-g")
    insert(number)
    key("enter")
