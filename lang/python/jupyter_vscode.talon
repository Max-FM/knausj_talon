tag: user.jupyter
-
tag(): user.python

(insert | new) cell [(below | down)]: user.vscode("notebook.cell.insertCodeCellBelowAndFocusContainer")
(insert | new) [cell] (above | up): user.vscode("notebook.cell.insertCodeCellAboveAndFocusContainer")
(delete | wipe | clear | chuck) cell: user.vscode("notebook.cell.delete")
code cell: user.vscode("notebook.cell.changeToCode")
(markdown | text) cell: user.vscode("notebook.cell.changeToMarkdown")
cell language: user.vscode("notebook.cell.changeLanguage")
edit cell: user.vscode("notebook.cell.edit")
exit cell: user.vscode("notebook.cell.exitEdit")

copy cell: user.vscode("notebook.cell.copy")
clone cell [(below | down)]: user.vscode("notebook.cell.copyDown")
clone [cell] (above | up): user.vscode("notebook.cell.copyUp")
paste cell: user.vscode("notebook.cell.paste")
paste cell (above | up): user.vscode("notebook.cell.pasteAbove")
cut cell: user.vscode("notebook.cell.cut")

run [cell]: user.vscode("notebook.cell.execute")
run [cell] next: user.vscode("notebook.cell.executeAndSelectBelow")
run [cell] (insert | new): user.vscode("notebook.cell.executeAndInsertBelow")

move [cell] up: user.vscode("notebook.cell.moveUp")
move [cell] down: user.vscode("notebook.cell.moveDown")

run all [cells]: user.vscode("notebook.execute")
run all [cells] (above | up): user.vscode("notebook.executeAbove")
run all [cells] (below | down): user.vscode("notebook.executeBelow")

split cell: user.vscode("notebook.cell.split")
merge cell (above | up): user.vscode("notebook.cell.joinAbove")
merge cell (below | down): user.vscode("notebook.cell.joinBelow")

format notebook: user.vscode("notebook.format")
format cell: user.vscode("notebook.cell.format")

line numbers: user.vscode("notebook.toggleLineNumbers")
line numbers cell: user.vscode("notebook.cell.toggleLineNumbers")

clear outputs: user.vscode("notebook.cell.clearOutputs")
