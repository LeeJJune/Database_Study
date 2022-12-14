/*************************select************************/
/*	*는 전체 조회 그외는 키값으로 조회 가능 */
/* ex1) select id from student_mst; */
/* ex2) select id, name from student_mst; */
/* name 처럼 색이 다른건 예약어로 'name' 처럼 사용 해야 된다 */
/*		where 사용가능			*/
/* select * from student_mst  */
/*	 	where age = 1;		  */
select * from student_mst;

select 
	id, `name`, age
	from 
		student_mst 
	where 
    `name` like '도%' /*  "도" 로시작하는*/
    or
    `name` like '%민'; /*  "민" 으로 끝나는*/
/* %김% 		~ 시작하고 "김" 을 포함하고  ~ 으로 끝나는 조건 */

select *
	from 
		student_mst
    where
		age > 25
	and
		age < 30;

select *
	from 
		student_mst
    where
		age not between 25 and 30;
/* null 검색 */
select *
	from 
		student_mst
	where
		age is not null;