tag: user.jupyter
-
tag(): user.python

(insert | new) [cell] below: user.vscode("notebook.cell.insertCodeCellBelowAndFocusContainer")
(insert | new) [cell] above: user.vscode("notebook.cell.insertCodeCellAboveAndFocusContainer")
(delete | wipe | clear | chuck) cell: user.vscode("notebook.cell.delete")
code cell: user.vscode("notebook.cell.changeToCode")
(markdown | text) cell: user.vscode("notebook.cell.changeToMarkdown")
