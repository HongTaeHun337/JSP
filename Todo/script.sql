-- Todo > script.sql

create table tblTodo (
  seq number primary key ,
  todo varchar2(100) not null ,
  state char(1) default  'n' not null,
  regdate date default sysdate not null
);
create sequence seqTodo;

insert into tblTodo (seq, todo, state, regdate)
    VALUES (seqTodo.nextval, '컴퓨터 포맷하기', default, default);
insert into tblTodo (seq, todo, state, regdate)
    VALUES (seqTodo.nextval, '강아지 산책하기', default, default);
insert into tblTodo (seq, todo, state, regdate)
    VALUES (seqTodo.nextval, '고양이 목욕하기', default, default);

commit ;

select * from tblTodo;

update tblTodo set state = 'y' where seq in (2,3);


commit;



