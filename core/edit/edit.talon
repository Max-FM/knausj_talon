# Zoom
zoom in: edit.zoom_in()
zoom out: edit.zoom_out()
zoom reset: edit.zoom_reset()

# Searching
find it: edit.find()
next one: edit.find_next()

# Navigation

# The reason for these spoken forms is that "page up" and "page down" are globally defined as keys.
scroll up: edit.page_up()
scroll down: edit.page_down()

go word left: edit.word_left()
go word right: edit.word_right()

(go left | west): edit.left()
(go right | east): edit.right()
(go up | north): edit.up()
(go down | south): edit.down()

go line start: edit.line_start()
go line end: edit.line_end()

go way left:
    edit.line_start()
    edit.line_start()
go way right: edit.line_end()
go way up: edit.file_start()
go way down: edit.file_end()

go top: edit.file_start()
go bottom: edit.file_end()

go page up: edit.page_up()
go page down: edit.page_down()

# Selecting
(select | take) all: edit.select_all()
(select | take) line: edit.select_line()
(select | take) line start: user.select_line_start()
(select | take) line end: user.select_line_end()

(select | take) left: edit.extend_left()
(select | take) right: edit.extend_right()
(select | take) up: edit.extend_line_up()
(select | take) down: edit.extend_line_down()

(select | take) word: edit.select_word()
(select | take) word left: edit.extend_word_left()
(select | take) word right: edit.extend_word_right()

(select | take) way left: edit.extend_line_start()
(select | take) way right: edit.extend_line_end()
(select | take) way up: edit.extend_file_start()
(select | take) way down: edit.extend_file_end()

# Indentation
indent [more]: edit.indent_more()
(indent less | out dent | de dent): edit.indent_less()

# Delete
(clear | chuck) all: user.delete_all()
(clear | chuck) line: edit.delete_line()
(clear | chuck) line start: user.delete_line_start()
(clear | chuck) line end: user.delete_line_end()
(clear | chuck) left: edit.delete()
(clear | chuck) right: user.delete_right()

(clear | chuck) up:
    edit.extend_line_up()
    edit.delete()

(clear | chuck) down:
    edit.extend_line_down()
    edit.delete()

(clear | chuck) word: edit.delete_word()

(clear | chuck) word left:
    edit.extend_word_left()
    edit.delete()

(clear | chuck) word right:
    edit.extend_word_right()
    edit.delete()

(clear | chuck) way left:
    edit.extend_line_start()
    edit.delete()

(clear | chuck) way right:
    edit.extend_line_end()
    edit.delete()

(clear | chuck) way up:
    edit.extend_file_start()
    edit.delete()

(clear | chuck) way down:
    edit.extend_file_end()
    edit.delete()

# Copy
copy (that | it): edit.copy()
copy all: user.copy_all()
copy line: user.copy_line()
copy line start: user.copy_line_start()
copy line end: user.copy_line_end()
copy word: user.copy_word()
copy word left: user.copy_word_left()
copy word right: user.copy_word_right()

#to do: do we want these variants, seem to conflict
# copy left:
#      edit.extend_left()
#      edit.copy()
# copy right:
#     edit.extend_right()
#     edit.copy()
# copy up:
#     edit.extend_up()
#     edit.copy()
# copy down:
#     edit.extend_down()
#     edit.copy()

# Cut
cut (that | it): edit.cut()
cut all: user.cut_all()
cut line: user.cut_line()
cut line start: user.cut_line_start()
cut line end: user.cut_line_end()
cut word: user.cut_word()
cut word left: user.cut_word_left()
cut word right: user.cut_word_right()

#to do: do we want these variants
# cut left:
#      edit.select_all()
#      edit.cut()
# cut right:
#      edit.select_all()
#      edit.cut()
# cut up:
#      edit.select_all()
#     edit.cut()
# cut down:
#     edit.select_all()
#     edit.cut()

# Paste
(pace | paste) (that | it) : edit.paste()
(pace | paste) enter:
    edit.paste()
    key(enter)
paste match: edit.paste_match_style()
(pace | paste) all: user.paste_all()
(pace | paste) line: user.paste_line()
(pace | paste) line start: user.paste_line_start()
(pace | paste) line end: user.paste_line_end()
(pace | paste) word: user.paste_word()

# Duplication
clone (that | it) : edit.selection_clone()
clone line: edit.line_clone()

# Insert new line
new line above: edit.line_insert_up()
new line below | slap: edit.line_insert_down()

# Insert padding with optional symbols
(pad | padding): user.insert_between(" ", " ")
(pad | padding) <user.symbol_key>+:
    insert(" ")
    user.insert_many(symbol_key_list)
    insert(" ")

# Undo/redo
(undo | nope) (that | it) : edit.undo()
redo (that | it) : edit.redo()

# Save
file save: edit.save()
file save all: edit.save_all()
