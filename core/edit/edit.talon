find it: edit.find()

next one: edit.find_next()

[go] word (left | west): edit.word_left()

[go] word (right | east): edit.word_right()

[go] (left | west): edit.left()

[go] (right | east): edit.right()

[go] (up | north): edit.up()

[go] (down | south): edit.down()

[go] line start: edit.line_start()

[go] line end: edit.line_end()

[go] way (left | west):
    edit.line_start()
    edit.line_start()

[go] way (right | east): edit.line_end()

[go] way (down | south): edit.file_end()

[go] way (up | north): edit.file_start()

[go] bottom: edit.file_end()

[go] top: edit.file_start()

[go] page (down | south): edit.page_down()

[go] page (up | north): edit.page_up()

# selecting
(select | take) line: edit.select_line()

(select | take) all: edit.select_all()

(select | take) (left | west): edit.extend_left()

(select | take) (right | east): edit.extend_right()

(select | take) (up | north): edit.extend_line_up()

(select | take) (down | south): edit.extend_line_down()

(select | take) word: edit.select_word()

(select | take) word (left | west): edit.extend_word_left()

(select | take) word (right | east): edit.extend_word_right()

(select | take) way (left | west): edit.extend_line_start()

(select | take) way (right | east): edit.extend_line_end()

(select | take) way (up | north): edit.extend_file_start()

(select | take) way (down | south): edit.extend_file_end()

# editing
indent [more]: edit.indent_more()

(indent less | out dent | de dent): edit.indent_less()

# deleting
(clear | wipe | chuck) line: edit.delete_line()

(clear | wipe | chuck) (left | west): key(backspace)

(clear | wipe | chuck) (right | east): key(delete)

(clear | wipe | chuck) (up | north):
    edit.extend_line_up()
    edit.delete()

(clear | wipe | chuck) (down | south):
    edit.extend_line_down()
    edit.delete()

(clear | wipe | chuck) word: edit.delete_word()

(clear | wipe | chuck) word (left | west):
    edit.extend_word_left()
    edit.delete()

(clear | wipe | chuck) word (right | east):
    edit.extend_word_right()
    edit.delete()

(clear | wipe | chuck) way (left | west):
    edit.extend_line_start()
    edit.delete()

(clear | wipe | chuck) way (right | east):
    edit.extend_line_end()
    edit.delete()

(clear | wipe | chuck) way (up | north):
    edit.extend_file_start()
    edit.delete()

(clear | wipe | chuck) way (down | south):
    edit.extend_file_end()
    edit.delete()

(clear | wipe | chuck) all:
    edit.select_all()
    edit.delete()

#copy commands
copy all:
    edit.select_all()
    edit.copy()
#to do: do we want these variants, seem to conflict
# copy (left | west):
#      edit.extend_left()
#      edit.copy()
# copy (right | east):
#     edit.extend_right()
#     edit.copy()
# copy (up | north):
#     edit.extend_up()
#     edit.copy()
# copy (down | south):
#     edit.extend_down()
#     edit.copy()

copy word:
    edit.select_word()
    edit.copy()

copy word (left | west): user.copy_word_left()

copy word (right | east): user.copy_word_right()

copy line:
    edit.select_line()
    edit.copy()

#cut commands
cut all:
    edit.select_all()
    edit.cut()
#to do: do we want these variants
# cut (left | west):
#      edit.select_all()
#      edit.cut()
# cut (right | east):
#      edit.select_all()
#      edit.cut()
# cut (up | north):
#      edit.select_all()
#     edit.cut()
# cut (down | south):
#     edit.select_all()
#     edit.cut()

cut word:
    edit.select_word()
    edit.cut()

cut word (left | west): user.cut_word_left()

cut word (right | east): user.cut_word_right()

cut line: user.cut_line()

(pace | paste) all:
    edit.select_all()
    edit.paste()

# duplication
clone that: edit.selection_clone()
clone line: edit.line_clone()
