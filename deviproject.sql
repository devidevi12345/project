create database thiru2;
use thiru2;
create table books(bookid int identity(1000,1),title varchar(70) not null,author varchar(70) not null,
 genre varchar(70),yearpublished int,availablecopies int constraint t1 primary key(bookid));
insert into books values('Junior Level Books','Amit Garg','Introduction to Computer',2011,01); 
insert into books values('Publish News Letter','Amit Garg','publics services',1999,02);
insert into books values('Client Server Computing','server management','server computing',2022,03);
insert into books values('Verma Data Structure Using C','Sharad Kumar','structure managing',2019,04);
insert into books values('Server Computing','Kumar','manipulation of server',1988,05);
insert into books values( 'Verma Computer Networks','Sharad Kumar','Sun India Publication',2010,06);
insert into books values(' Verma .NET Framework ','Sharad Kuma' ,'Sun India Publication',2009,07);
insert into books values('Gunjan Verma',' Sharad Kuma','CBOT Thakur Publications', 2014,08);
insert into books values('Computing','thiruvasagam','developed',2003,09);
insert into books values('compiler system','niganya','system managing',2000,10);
select*from books;


create table members (memberid int identity(101,1),name  text not null,email text constraint t2 primary key(memberid));
insert into members values('aruna','aruna03@gmail.com');
insert into members values('atchaya','atchaya04@gmail.com');
insert into members values('devi','devi03@gmail.com');
insert into members values('mathu','mathu08@gmail.com');
insert into members values('then','then03@gmail.com');
insert into members values('gayu','gayu02@gmail.com');
insert into members values('kani','kani05@gmail.com');
insert into members values('pandi','pandi08@gmail.com');
insert into members values('vasagam','chlm05@gmail.com');
insert into members values('kanmani','kathija@gmail.com');
select*from members;

create table loans(loanid int identity(10000,1) ,bookid int,memberid int,borrowdate date,returndate date,constraint d1 primary key(loanid),
constraint d2 foreign key(bookid) references books (bookid),constraint q1 foreign key(memberid) references members(memberid));
insert into loans values(1000,101,'2024-01-13','2024-09-05');
insert into loans values(1001,102,'2023-10-15','2023-11-25');
insert into loans values(1002,103,'2024-11-13','2024-03-05');
insert into loans values(1003,104,'2020-05-14','2020-05-28');
insert into loans values(1004,105,'2024-08-15','2024-08-16');
insert into loans values(1005,106,'2024-08-15',null);
select*from loans;

2. select*from books where availablecopies=1;

3. select title,author,COUNT(author) as timesborrowed from books group by title,author;

4.  select distinct*from books;

6. select*from books where author='kumar';

7. select author,title from books;

10. select*from books where availablecopies>0;

8. select memberid, COUNT (borrowdate) as numberofbooksborrowed from loans group by memberid;

5. select m.memberid,m.name from members m join loans l on m.memberid=l.memberid where l.returndate is null;

9. select b.title,b.author,l.borrowdate,l.returndate from books b join loans l on b.bookid=l.bookid where l.memberid=105;

 select b.title,b.author,l.borrowdate,l.returndate from books b join loans l on b.bookid=l.bookid;
    
select count(*) Count_1 from schema.tab1 union all select count(*) Count_2 from schema.tab2
SELECT 'table_1' AS table_name, COUNT(*) FROM table_1
UNION
SELECT 'table_2' AS table_name, COUNT(*) FROM table_2
UNION
SELECT 'table_3' AS table_name, COUNT(*) FROM table_3
 
   
  select bookid,memberid, COUNT (bookid) as total from members m join books b on m.memberid=b.bookid group by bookid,memberid;
  
  select title,author,COUNT(title) as total_title from books group by title,author;
 
select title,author,COUNT(title) as total_title from books group by title,author;

select*from books,members;

SELECT 'table_1' AS table_name, COUNT(*) FROM table_1 UNION SELECT 'table_2' AS table_name, COUNT(*) FROM table_2 UNION SELECT 'table_3' AS table_name, COUNT(* ...

select bookid as totalbook,COUNT(*) from books union select memberid as totalmember;

select COUNT (bookid) as totalbooks from books full outer join select COUNT(memberid) as totalmember members;
select*from books full outer join select*from members;

selec

