use Keep_Note
select * from Users
------------ 1 -------------------------
select * from Users where user_id=112233 and user_password='Maya1214'
------------ 2 -------------------------
select * from note where note_creation_date='01/31/2019'
------------ 3 -------------------------
select * from Category where category_creation_date>'2019-01-22'
------------ 4 -------------------------
select * from Category inner join note on note.note_id=Category.category_id where note_id=1
------------ 5 -------------------------
select * from note where user_id=112244
------------ 6 -------------------------
select * from Category
select * from note
select Category_creator from Category where category_id=1
select * from note where user_id=(select Category_creator from Category where category_id=1)
------------ 7 -------------------------
select remainder_id,remainder_name,remainder_descr,remainder_type,remainder_creation_date,remainder_creator,note_id from Remainder inner join note on note_id=2
------------ 8 -------------------------
update note set note_status='completed' where note_id=3
select * from note
------------ 9 -------------------------
select remainder_id,remainder_type,note_id from Remainder  inner join note on  note_id=1  and remainder_type='personal remainder'
------------ 10 -------------------------
select * from Remainder
select * from note
select note_id from note where note_id=2
delete from Remainder where remainder_creator=(select note_id from note where note_id=2)
delete from NoteReminder where note_id=2
select * from NoteReminder