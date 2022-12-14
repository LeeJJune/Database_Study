/*
	DML 종류
    1. insert	C	데이터 추가
    2. select	R	데이터 조회
    3. update	U	데이터 수정
    4. delete	D	데이터 삭제
    
    where <= 조건문
*/
set sql_safe_updates = 0;

select * from student_mst;

/*************************insert************************/
insert into student_mst
	(id, name, age) 
values
	(1, '형빈', 20);
insert into student_mst(name, id, age) values ('규민', 2, 20);
insert into student_mst(name, id) values ('경호', 3);
insert into student_mst values (4, '혜진', 26);

insert into student_mst
values
	(5,'도영', 25),
	(6,'성욱', 25),
	(7,'경민', 32),
	(8,'혜민', 26);
    
/*************************update************************/
select * from student_mst;

update student_mst
	set
		name = '순동',
        age = 22
	where
		id = 6;
        
update student_mst
	set
		age = age + 1
	where
		id = 6;
/*************************delete************************/
select * from student_mst;

delete
from student_mst
where	name = null;
/*************************select************************/
