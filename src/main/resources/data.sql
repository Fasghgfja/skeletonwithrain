
-- $2y$10$P7im4OMw6hsnPWLpJ1nVKup1jlEFsLIek9D3lglmZv.Tq05GDEhMS -> passwd
INSERT INTO USERX (ENABLED, FIRST_NAME, LAST_NAME, PASSWORD, USERNAME, CREATE_USER_USERNAME, CREATE_DATE) VALUES(TRUE, 'Admin', 'Istrator', '$2a$10$Bm27OvKm5FENObph7xPfnO2L1mbKyjpG3LdeixGrJV0xC7TgcFGX2', 'admin', 'admin', '2016-01-01');
INSERT INTO USERX_USER_ROLE (USERX_USERNAME, ROLES) VALUES ('admin', 'ADMIN');
INSERT INTO USERX_USER_ROLE (USERX_USERNAME, ROLES) VALUES ('admin', 'GARDENER');
INSERT INTO USERX (ENABLED, FIRST_NAME, LAST_NAME, PASSWORD, USERNAME, CREATE_USER_USERNAME, CREATE_DATE) VALUES(TRUE, 'Susi', 'Kaufgern', '$2a$10$Bm27OvKm5FENObph7xPfnO2L1mbKyjpG3LdeixGrJV0xC7TgcFGX2', 'user1', 'admin', '2016-01-01');
INSERT INTO USERX_USER_ROLE (USERX_USERNAME, ROLES) VALUES ('user1', 'USER');
INSERT INTO USERX_USER_ROLE (USERX_USERNAME, ROLES) VALUES ('user1', 'GARDENER');
INSERT INTO USERX (ENABLED, FIRST_NAME, LAST_NAME, PASSWORD, USERNAME, CREATE_USER_USERNAME, CREATE_DATE) VALUES(TRUE, 'Max', 'Mustermann', '$2a$10$Bm27OvKm5FENObph7xPfnO2L1mbKyjpG3LdeixGrJV0xC7TgcFGX2', 'user2', 'admin', '2016-01-01');
INSERT INTO USERX_USER_ROLE (USERX_USERNAME, ROLES) VALUES ('user2', 'USER');
INSERT INTO USERX (ENABLED, FIRST_NAME, LAST_NAME, PASSWORD, USERNAME, CREATE_USER_USERNAME, CREATE_DATE) VALUES(TRUE, 'Elvis', 'The King', '$2a$10$Bm27OvKm5FENObph7xPfnO2L1mbKyjpG3LdeixGrJV0xC7TgcFGX2', 'elvis', 'elvis', '2016-01-01');
INSERT INTO USERX_USER_ROLE (USERX_USERNAME, ROLES) VALUES ('elvis', 'ADMIN');


INSERT INTO PLANT(PLANTID, PLANT_NAME, CREATE_DATE,UPDATE_DATE) VALUES(50100, 'Atomic Northern Lights','2022-01-01','2022-01-01');
INSERT INTO PLANT(PLANTID, PLANT_NAME, CREATE_DATE,UPDATE_DATE) VALUES(50101, 'Charlotte''s Web','2022-01-01','2022-01-01');
INSERT INTO PLANT(PLANTID, PLANT_NAME, CREATE_DATE,UPDATE_DATE) VALUES(50102, 'Alpine Rocket', '2022-01-04','2022-05-01');
INSERT INTO PLANT(PLANTID, PLANT_NAME, CREATE_DATE,UPDATE_DATE) VALUES(50103, 'Blue Dream', '2022-01-02','2022-01-01');
INSERT INTO PLANT(PLANTID, PLANT_NAME, CREATE_DATE,UPDATE_DATE) VALUES(50104, 'Sour Diesel', '2022-01-01','2022-03-01');

INSERT INTO ACCESS_POINT(ACCESS_POINTID, LOCATION, VALIDATED, CREATE_DATE, UPDATE_DATE) VALUES(50100, 'Room1', TRUE, '2022-01-01', '2022-01-01');
INSERT INTO ACCESS_POINT(ACCESS_POINTID, LOCATION, VALIDATED, CREATE_DATE, UPDATE_DATE) VALUES(50101, 'Room2', TRUE, '2022-01-01', '2022-01-01');
INSERT INTO ACCESS_POINT(ACCESS_POINTID, LOCATION, VALIDATED, CREATE_DATE, UPDATE_DATE) VALUES(50102, 'Room3', TRUE, '2022-01-01', '2022-01-01');
INSERT INTO ACCESS_POINT(ACCESS_POINTID, LOCATION, VALIDATED, CREATE_DATE, UPDATE_DATE) VALUES(50103, 'Room4', TRUE, '2022-01-01', '2022-01-01');
INSERT INTO ACCESS_POINT(ACCESS_POINTID, LOCATION, VALIDATED, CREATE_DATE, UPDATE_DATE) VALUES(50104, 'Room7', TRUE, '2022-01-01', '2022-01-01');
INSERT INTO ACCESS_POINT(ACCESS_POINTID, LOCATION, VALIDATED, CREATE_DATE, UPDATE_DATE) VALUES(50105, 'Room1', TRUE, '2022-01-01', '2022-01-01');
INSERT INTO ACCESS_POINT(ACCESS_POINTID, LOCATION, VALIDATED, CREATE_DATE, UPDATE_DATE) VALUES(50106, 'Room3', TRUE, '2022-01-01', '2022-01-01');
INSERT INTO ACCESS_POINT(ACCESS_POINTID, LOCATION, VALIDATED, CREATE_DATE, UPDATE_DATE) VALUES(50107, 'Room2', TRUE, '2022-01-01', '2022-01-01');
INSERT INTO ACCESS_POINT(ACCESS_POINTID, LOCATION, VALIDATED, CREATE_DATE, UPDATE_DATE) VALUES(50108, 'Room1', TRUE, '2022-01-01', '2022-01-01');
INSERT INTO ACCESS_POINT(ACCESS_POINTID, LOCATION, VALIDATED, CREATE_DATE, UPDATE_DATE) VALUES(50109, 'Room6', TRUE, '2022-01-01', '2022-01-01');
INSERT INTO ACCESS_POINT(ACCESS_POINTID, LOCATION, VALIDATED, CREATE_DATE, UPDATE_DATE) VALUES(50110, 'Room6', TRUE, '2022-01-01', '2022-01-01');
INSERT INTO ACCESS_POINT(ACCESS_POINTID, LOCATION, VALIDATED, CREATE_DATE, UPDATE_DATE) VALUES(50111, 'Room5', TRUE, '2022-01-01', '2022-01-01');




# INSERT INTO SENSOR_STATION(SENSOR_STATION_NAME, CREATE_DATE, UPDATE_DATE, LOCATION, PLANT_PLANTID) VALUES('AAAAA','2022-01-01','2022-01-05','Room1',50100);
INSERT INTO SENSOR_STATION(SENSOR_STATION_NAME, CREATE_DATE, UPDATE_DATE, LOCATION, PLANT_PLANTID) VALUES('BBBBB','2022-01-01','2022-02-05','Room2',50101);
INSERT INTO SENSOR_STATION(SENSOR_STATION_NAME, CREATE_DATE, UPDATE_DATE, LOCATION, PLANT_PLANTID) VALUES('CCCCC','2022-01-01','2022-02-01','Room3',50102);
INSERT INTO SENSOR_STATION(SENSOR_STATION_NAME, CREATE_DATE, UPDATE_DATE, LOCATION) VALUES('DDDDD','2022-03-01','2022-02-01','Room4');
INSERT INTO SENSOR_STATION(SENSOR_STATION_NAME, CREATE_DATE, UPDATE_DATE, LOCATION) VALUES('EEEEE','2022-03-01','2022-06-01','Room5');
INSERT INTO SENSOR_STATION(SENSOR_STATION_NAME, CREATE_DATE, UPDATE_DATE, LOCATION) VALUES('FFFFF','2022-03-01','2022-05-01','Room6');
INSERT INTO SENSOR_STATION(SENSOR_STATION_NAME, CREATE_DATE, UPDATE_DATE, LOCATION) VALUES('GGGGG','2022-01-02','2022-04-01','Room7');
INSERT INTO SENSOR_STATION(SENSOR_STATION_NAME, CREATE_DATE, UPDATE_DATE, LOCATION) VALUES('HHHHH','2022-01-02','2022-03-05','Room8');
INSERT INTO SENSOR_STATION(SENSOR_STATION_NAME, CREATE_DATE, UPDATE_DATE, LOCATION) VALUES('IIIII','2022-01-02','2022-02-05','Room9');
INSERT INTO SENSOR_STATION(SENSOR_STATION_NAME, CREATE_DATE, UPDATE_DATE, LOCATION, ALARMSWITCH) VALUES('FT34','2022-01-02','2022-02-05','Room9', 'off');


INSERT INTO LOG(ID, TYPE, TEXT, SUBJECT, AUTHOR, TIME) VALUES(101, 'ERROR', 'ERROR SAVING USER', 'DATA BASE ERROR', 'admin','2022-02-01');
INSERT INTO LOG(ID, TYPE, TEXT, SUBJECT, AUTHOR, TIME) VALUES(102, 'WARNING', 'ERROR EDITING USER', 'DATA BASE WARNING', 'admin','2022-02-01');
INSERT INTO LOG(ID, TYPE, TEXT, SUBJECT, AUTHOR, TIME) VALUES(103, 'ERROR', 'ERROR SAVING USER', 'DATA BASE ERROR', 'admin','2022-02-01');
INSERT INTO LOG(ID, TYPE, TEXT, SUBJECT, AUTHOR, TIME) VALUES(104, 'WARNING', 'WARNING EDITING USER', 'DATA BASE WARNING', 'admin','2022-02-01');
INSERT INTO LOG(ID, TYPE, TEXT, SUBJECT, AUTHOR, TIME) VALUES(105, 'SUCCESS', 'SUCCESS SAVING USER', 'DATA BASE SUCCESS', 'admin','2022-02-01');
INSERT INTO LOG(ID, TYPE, TEXT, SUBJECT, AUTHOR, TIME) VALUES(106, 'SUCCESS', 'SUCCESS SAVING USER', 'DATA BASE SUCCESS', 'admin','2022-02-01');
INSERT INTO LOG(ID, TYPE, TEXT, SUBJECT, AUTHOR, TIME) VALUES(107, 'SUCCESS', 'SUCCESS SAVING USER', 'DATA BASE SUCCESS', 'admin','2022-02-01');
INSERT INTO LOG(ID, TYPE, TEXT, SUBJECT, AUTHOR, TIME) VALUES(108, 'SUCCESS', 'SUCCESS SAVING USER', 'DATA BASE SUCCESS', 'admin','2022-02-01');
INSERT INTO LOG(ID, TYPE, TEXT, SUBJECT, AUTHOR, TIME) VALUES(109, 'SUCCESS', 'SUCCESS SAVING USER', 'DATA BASE SUCCESS', 'admin','2022-02-01');
INSERT INTO LOG(ID, TYPE, TEXT, SUBJECT, AUTHOR, TIME) VALUES(110, 'SUCCESS', 'SUCCESS SAVING USER', 'DATA BASE SUCCESS', 'admin','2022-02-01');
INSERT INTO LOG(ID, TYPE, TEXT, SUBJECT, AUTHOR, TIME) VALUES(115, 'SUCCESS', 'SUCCESS SAVING USER', 'DATA BASE SUCCESS', 'admin','2022-02-01');


INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,SENSOR_STATION_NAME) VALUES(50101,'2022-02-02','HUMIDITY','%','36','AAAAA');
INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,SENSOR_STATION_NAME) VALUES(50102,'2022-02-03','HUMIDITY','%','20','AAAAA');
INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,SENSOR_STATION_NAME) VALUES(50103,'2022-02-04','HUMIDITY','%','50','AAAAA');
INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,SENSOR_STATION_NAME) VALUES(50104,'2022-02-05','HUMIDITY','%','40','AAAAA');
INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,SENSOR_STATION_NAME) VALUES(50105,'2022-02-04','HUMIDITY','%','50','AAAAA');
INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,SENSOR_STATION_NAME) VALUES(50106,'2022-02-05','HUMIDITY','%','40','AAAAA');
INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,SENSOR_STATION_NAME) VALUES(50107,'2022-02-02','TEMPERATURE','C','22','AAAAA');
INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,SENSOR_STATION_NAME) VALUES(50108,'2022-02-02','TEMPERATURE','C','24','AAAAA');
INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,SENSOR_STATION_NAME) VALUES(50109,'2022-02-02','TEMPERATURE','C','21','AAAAA');
INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,SENSOR_STATION_NAME) VALUES(50110,'2022-02-02','TEMPERATURE','C','24','AAAAA');
INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,SENSOR_STATION_NAME) VALUES(50111,'2022-02-02','TEMPERATURE','C','29','AAAAA');
INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,SENSOR_STATION_NAME) VALUES(50112,'2022-02-02','SOIL_MOISTURE','%','12','AAAAA');
INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,SENSOR_STATION_NAME) VALUES(50113,'2022-02-02','SOIL_MOISTURE','%','24','AAAAA');
INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,SENSOR_STATION_NAME) VALUES(50114,'2022-02-02','SOIL_MOISTURE','%','46','AAAAA');
INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,SENSOR_STATION_NAME) VALUES(50115,'2022-01-23','SOIL_MOISTURE','%','68','AAAAA');
INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,SENSOR_STATION_NAME) VALUES(50116,'2022-01-22','SOIL_MOISTURE','%','47','AAAAA');
INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,SENSOR_STATION_NAME) VALUES(50117,'2022-01-21','SOIL_MOISTURE','%','34','AAAAA');
INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,SENSOR_STATION_NAME) VALUES(50118,'2022-01-20','LIGHT_INTENSITY','lux','2000','AAAAA');
INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,SENSOR_STATION_NAME) VALUES(50219,'2022-01-19','LIGHT_INTENSITY','lux','1200','AAAAA');
INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,SENSOR_STATION_NAME) VALUES(50310,'2022-01-18','LIGHT_INTENSITY','lux','900','AAAAA');
INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,SENSOR_STATION_NAME) VALUES(50119,'2022-01-17','AIR_QUALITY','Assessment','350','AAAAA');



INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,SENSOR_STATION_NAME) VALUES(50020,'2022-01-02','HUMIDITY','%','10','BBBBB');
INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,SENSOR_STATION_NAME) VALUES(50021,'2022-01-03','TEMPERATURE','C','24','BBBBB');
INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,SENSOR_STATION_NAME) VALUES(50022,'2022-01-04','TEMPERATURE','C','23','BBBBB');
INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,SENSOR_STATION_NAME) VALUES(50023,'2022-01-05','TEMPERATURE','C','34','BBBBB');
INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,SENSOR_STATION_NAME) VALUES(50024,'2022-01-06','TEMPERATURE','C','22','BBBBB');
INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,SENSOR_STATION_NAME) VALUES(50025,'2022-01-07','TEMPERATURE','C','11','BBBBB');
INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,SENSOR_STATION_NAME) VALUES(50026,'2022-01-08','SOIL_MOISTURE','%','55','BBBBB');
INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,SENSOR_STATION_NAME) VALUES(50035,'2022-01-09','SOIL_MOISTURE','%','35','BBBBB');
INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,SENSOR_STATION_NAME) VALUES(50036,'2022-01-10','SOIL_MOISTURE','%','25','BBBBB');
INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,SENSOR_STATION_NAME) VALUES(50037,'2022-01-11','SOIL_MOISTURE','%','15','BBBBB');
INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,SENSOR_STATION_NAME) VALUES(50038,'2022-01-12','LIGHT_INTENSITY','lux','350','BBBBB');
INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,SENSOR_STATION_NAME) VALUES(50027,'2022-01-13','LIGHT_INTENSITY','lux','550','BBBBB');
INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,SENSOR_STATION_NAME) VALUES(50028,'2022-01-14','AIR_QUALITY','Assessment','200','BBBBB');
INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,SENSOR_STATION_NAME) VALUES(50033,'2022-01-15','HUMIDITY','%','30','BBBBB');
INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,SENSOR_STATION_NAME) VALUES(50034,'2022-01-16','HUMIDITY','%','40','BBBBB');



insert into sensor (id,uuid,sensor_station_name,type, alarm_count,upper_border, lower_border,create_date) values(1,'000019b1-0000-1000-8000-00805f9b34fb', 'G4T2', 'hygro', 0, 0, 0,'2022-01-02');
insert into sensor (id,uuid,sensor_station_name,type, alarm_count,upper_border, lower_border,create_date) values(2,'000019b0-0000-1000-8000-00805f9b34fb', 'G4T2', 'light', 0, 0, 0,'2022-01-02');
insert into sensor (id,uuid,sensor_station_name,type, alarm_count,upper_border, lower_border,create_date) values(3,'000019b2-0000-1000-8000-00805f9b34fb', 'G4T2', 'temp', 0, 0, 0,'2022-01-02');
insert into sensor (id,uuid,sensor_station_name,type, alarm_count,upper_border, lower_border,create_date) values(4,'000019b3-0000-1000-8000-00805f9b34fb', 'G4T2', 'humidity', 0, 0, 0,'2022-01-02');
insert into sensor (id,uuid,sensor_station_name,type, alarm_count,upper_border, lower_border,create_date) values(6,'000019b5-0000-1000-8000-00805f9b34fb', 'G4T2', 'gas', 0, 0, 0,'2022-01-02');