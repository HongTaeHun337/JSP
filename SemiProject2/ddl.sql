-- SemiProject > ddl.sql

drop table tblUser;

-- 회원 테이블
create table tblUser (
    id varchar2(50) primary key,                        --아이디(PK)
    pw varchar2(50) not null,                           --암호
    name varchar2(50) not null,                         --이름
    email varchar2(100) not null,                       --이메일
    lv number(1) not null,                              --등급(1-일반,2-관리자)
    pic varchar2(100) default 'pic.png' not null,       --프로필사진
    intro varchar2(500) null,                           --자기소개
    regdate date default sysdate not null,              --가입날짜
    ing number(1) default 1 not null                    --활동유무(1-활동,0-탈퇴)
);


--게시판 테이블
create table tblBoard (
    seq number primary key,                         --번호(PK)
    subject varchar2(500) not null,                 --제목
    content varchar2(4000) not null,                --내용
    id varchar2(50) not null references tblUser(id),--아이디(FK)
    regdate date default sysdate not null,          --작성날짜
    readcount number default 0 not null             --조회수
);
create sequence seqBoard;

select * from tblBoard;

create or replace view vwBoard
as
select
    seq, subject, id, regdate, readcount, content,
    (select name from tblUser where id = tblBoard.id) as name,
    (sysdate - regdate)as isnew,
    (select count(*) from tblComment where bseq= tblBoard.seq) as commentCount
from tblBoard order by seq desc;


select *
from vwBoard;

-- 페이징
select * from (select a.*, ROWNUM as rnum from vwBoard a)
    where rnum between 251 and 260;



-- 댓글 테이블
create table tblComment (
    seq number primary key ,
    content varchar2(2000) not null ,
    regdate date default sysdate not null ,
    id varchar2(50) not null references tblUser(id),
    bseq number not null references TBLBOARD(seq)
);

create sequence seqComment;

select *
from tblComment;

select a.*, (select name from tblUser where id = a.id) as name
    from tblComment a where bseq = 274
        order by seq asc;







