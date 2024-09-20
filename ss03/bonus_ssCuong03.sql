use qlct;

alter table building add constraint fk1 foreign key (host_id) references host(id);
alter table building add constraint fk2 foreign key (contractor_id) references contractor(id);
alter table work add constraint fk3 foreign key (building_id) references building(id);
alter table work add constraint fk4 foreign key (worker_id) references worker(id);
alter table design add constraint fk5 foreign key (building_id) references building(id);
alter table design add constraint fk6 foreign key (architect_id) references architect(id);

select*from Architect;

select name,sex from Architect;

select birthday from Architect;

select name, birthday from Architect
ORDER BY birthday asc;

select name, birthday from Architect
ORDER BY birthday desc;

select*from building
order by cost asc, city asc;

select*from Architect WHERE name like '%le thanh tung';

SELECT * FROM qlct.worker;

select name, birthday from worker
WHERE skill in ('han','dien');

select name from worker
WHERE skill in ('han','dien') and birthday>1948;

select * from worker
WHERE birthday +20 >year;

select * from worker
where birthday in ('1945','1940','1948');
























