-- C:\code\server\JDBCTest\script.sql

-- 주소록 테이블

create table tblAddress (
    seq number primary key ,
    name varchar2(30) not null ,
    age number(3) not null check ( age between 0 and 120),
    gender char(1) not null  check ( gender in('m', 'f') ),
    tel varchar2(15) not null ,
    address varchar2(300) not null ,
    regdate date default sysdate not null
);

    create sequence seqAddress;

    --CRUD
    --1. 검증
    --2. JDBC > 프로그램 작업을 위해서 미리 작성
insert into tblAddress(seq, name, age, gender, tel, address, regdate)
    values (seqAddress.nextval, '홍길동', 20, 'm', '010-1234-5678'
            , '서울시 강남구 대치동', default);

select * from tblAddress;

update tblAddress set address = '서울시 강남구 역삼동' where seq = 1;

delete from tblAddress where seq = 10;

commit;

select * from tabs;

insert into tblAddress(seq, name, age, gender, tel, address, regdate)values (seqAddress.nextval, '거죽이', 100, 'm', '010-1111-2222', '제주도 남해', default)

select count(*) from tblAddress;

insert into tblAddress (seq, name, age, gender, tel, address, regdate) values (seqAddress.nextVal, '꿀꿀이2', 3, 'm', '010-1234-5678', '서울시 강남구 천호동 Dog''s Home', default)
1