INSERT INTO `PmDB`.`M_USER` (`USER_ID`,`LAST_NM`,`FIRST_NM`,`LOGIN_PWD`,`EMAIL`,`USER_TYPE_CD`)
	VALUES ('wenyong',null,'文勇','123456','wenyong@walkclass.com','ADMIN');

INSERT INTO `PmDB`.`PROJECT`
(`PROJECT_NM`)
VALUES
('学呗云课堂');

INSERT INTO `PmDB`.`MODULE` (`MODULE_NM`,`PROJECT_ID`,`SN_NBR`) VALUES('管理后台',1, 0);
INSERT INTO `PmDB`.`MODULE` (`MODULE_NM`,`PROJECT_ID`,`SN_NBR`) VALUES('安卓APP',1, 1);
INSERT INTO `PmDB`.`MODULE` (`MODULE_NM`,`PROJECT_ID`,`SN_NBR`) VALUES('iOs App',1, 2);

