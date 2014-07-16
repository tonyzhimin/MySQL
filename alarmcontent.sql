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



4:R620机器需求


 E5-24xx 96G 2*500G(2.5''SATA) 12*3T(3.5''SATA) RAID-1  
 机器配置:  Dell R620 192G 600G*8（2.5''SAS 15K rpm)/RAID-1/双电/双端口单网卡
 使用人: 吴志敏
 服务器数量：4
 资产用途: 北京企业归档邮箱服务
 
 系统版本:
 OS: as6 64位
 8块磁盘做 RAID1 
 分区如下:
 swap : 4G
 /ext4 : 2G
 /tmp ext4 : 4G
 /usr ext4 : 4G
 /var ext4 : 4G
 /home ext4：剩余
 /data1 xfs :600G
 /data2 xfs : 600G
 /data3 xfs : 600G


浪潮机器安装要求:

系统版本: as6 64位
RAID1
分区
swap : 4G
/ ext4 : 2G
/tmp ext4 : 4G
/usr ext4 : 4G
/var ext4 : 4G
/home ext4:  500G
/data1 ext4:  剩余
/data2 ext4 : 3T
/data3 ext4 : 3T
/data4 ext4 : 3T
/data5 ext4 : 3T
/data6 ext4 : 3T



4:
应用决定一切

	数据库调优大致有四类优化：
	a. 优化系统内核的锁，尽量减少需要保护的临界资源，提升并发性能；
	b. 改进优化器处理复杂查询的能力，以便生成尽可能高效的查询计划；
	c. 提升系统表达式的计算性能，HASH处理、分组、排序性能。发挥系统的潜力，还需要DBA对系统有充分的了解和实践经验的不断积累。
	d. 如何更快/更简单地设计靠谱的索引