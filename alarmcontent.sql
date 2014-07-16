报警具体内容如下:

insert into alarm_info values('sysdb故障报警',1,1,1,1,'系统数据库发生故障');
insert into alarm_info values('Master故障报警',2,1,1,1,'Master发生故障');
insert into alarm_info values('Agent故障报警',3,1,1,1,'DBN Agent发生故障');
insert into alarm_info values('悬挂事务故障报警',4,1,1,1,'系统出现悬挂超时事务');
insert into alarm_info values('DBN故障报警',5,1,1,1,'DBN发生故障');
insert into alarm_info values('数据备份报警',6,1,1,1,'数据库备份操作故障');
insert into alarm_info values('数据导出报警',7,1,1,1,'数据导出操作故障');
insert into alarm_info values('分区管理报警',8,1,1,1,'数据库分区操作故障');
insert into alarm_info values('数据迁移报警',9,1,1,1,'数据迁移操作故障');
insert into alarm_info values('slave超时报警',10,1,1,1,'slave超过最大延时报警');
insert into alarm_info values('计划任务报警',11,1,1,1,'计划任务执行异常');
insert into alarm_info values('slave复制失败报警',12,1,1,1,'slave复制失败报警');
insert into alarm_info values('DBN Processlist监控报警',13,1,1,1,'DBN Processlist监控报警');
INSERT INTO alarm_info VALUES('QS监控报警',14,1,1,1,'查询服务器监控报警');