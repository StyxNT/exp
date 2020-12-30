create table act_choice
(
    aid      int auto_increment
        primary key,
    volun_id int null,
    act_id   int null
);

create table activity
(
    activity_id   int auto_increment
        primary key,
    activity_name varchar(50) null,
    begin_date    date       null,
    end_date     date         null,
    content       varchar(5000) null
);

create table grade
(
    gid    int auto_increment
        primary key,
    tid    int null,
    vid    int null,
    act_id int null,
    score  int null
);

create table res_project
(
    rid    int auto_increment
        primary key,
    tid    int null,
    act_id int null
);

create table user
(
    id   int auto_increment
        primary key,
    name    varchar(10)     null,
    pswd    varchar(20)     null,
    age     int             null,
    sex     varchar(10)     null,
    phone   varchar(20)     null,
    type    varchar(10)     null
);




