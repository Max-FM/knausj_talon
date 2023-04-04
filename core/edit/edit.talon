find it: edit.find()

next one: edit.find_next()

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

go way down: edit.file_end()

go way up: edit.file_start()

go bottom: edit.file_end()

go top: edit.file_start()

go page down: edit.page_down()

go page up: edit.page_up()

# selecting
(select | take) line: edit.select_line()

(select | take) all: edit.select_all()

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

# editing
indent [more]: edit.indent_more()

(indent less | out dent | de dent): edit.indent_less()

# deleting
(clear | chuck) line: edit.delete_line()

(clear | chuck) left: key(backspace)

(clear | chuck) right: key(delete)

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

(clear | chuck) all:
    edit.select_all()
    edit.delete()

#copy commands
copy all:
    edit.select_all()
    edit.copy()
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

copy word:
    edit.select_word()
    edit.copy()

copy word left: user.copy_word_left()

copy word right: user.copy_word_right()

copy line:
    edit.select_line()
    edit.copy()

#cut commands
cut all:
    edit.select_all()
    edit.cut()
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

cut word:
    edit.select_word()
    edit.cut()

cut word left: user.cut_word_left()

cut word right: user.cut_word_right()

cut line: user.cut_line()

(pace | paste) all:
    edit.select_all()
    edit.paste()

# duplication
clone that: edit.selection_clone()
clone line: edit.line_clone()
