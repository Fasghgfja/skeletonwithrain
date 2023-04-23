
-- $2y$10$P7im4OMw6hsnPWLpJ1nVKup1jlEFsLIek9D3lglmZv.Tq05GDEhMS -> passwd
INSERT INTO USERX (ENABLED, FIRST_NAME, LAST_NAME, PASSWORD, USERNAME, CREATE_USER_USERNAME, CREATE_DATE) VALUES(TRUE, 'Admin', 'Istrator', '$2a$10$Bm27OvKm5FENObph7xPfnO2L1mbKyjpG3LdeixGrJV0xC7TgcFGX2', 'admin', 'admin', '2016-01-01')
    INSERT INTO USERX_USER_ROLE (USERX_USERNAME, ROLES) VALUES ('admin', 'ADMIN')
INSERT INTO USERX_USER_ROLE (USERX_USERNAME, ROLES) VALUES ('admin', 'GARDENER')
INSERT INTO USERX (ENABLED, FIRST_NAME, LAST_NAME, PASSWORD, USERNAME, CREATE_USER_USERNAME, CREATE_DATE) VALUES(TRUE, 'Susi', 'Kaufgern', '$2a$10$Bm27OvKm5FENObph7xPfnO2L1mbKyjpG3LdeixGrJV0xC7TgcFGX2', 'user1', 'admin', '2016-01-01')
INSERT INTO USERX_USER_ROLE (USERX_USERNAME, ROLES) VALUES ('user1', 'USER')
INSERT INTO USERX_USER_ROLE (USERX_USERNAME, ROLES) VALUES ('user1', 'GARDENER')
INSERT INTO USERX (ENABLED, FIRST_NAME, LAST_NAME, PASSWORD, USERNAME, CREATE_USER_USERNAME, CREATE_DATE) VALUES(TRUE, 'Max', 'Mustermann', '$2a$10$Bm27OvKm5FENObph7xPfnO2L1mbKyjpG3LdeixGrJV0xC7TgcFGX2', 'user2', 'admin', '2016-01-01')
INSERT INTO USERX_USER_ROLE (USERX_USERNAME, ROLES) VALUES ('user2', 'USER')
INSERT INTO USERX (ENABLED, FIRST_NAME, LAST_NAME, PASSWORD, USERNAME, CREATE_USER_USERNAME, CREATE_DATE) VALUES(TRUE, 'Elvis', 'The King', '$2a$10$Bm27OvKm5FENObph7xPfnO2L1mbKyjpG3LdeixGrJV0xC7TgcFGX2', 'elvis', 'elvis', '2016-01-01')
INSERT INTO USERX_USER_ROLE (USERX_USERNAME, ROLES) VALUES ('elvis', 'ADMIN')


INSERT INTO PLANT(PLANTID, PLANT_NAME, CREATE_DATE,UPDATE_DATE, DESCRIPTION) VALUES(100, 'Atomic Northern Lights','2022-01-01','2022-01-01','Atomic Northern Lights has a history of world travel. In the 1980s, Afghani indica seeds were brought to the U.S. and bred with Thai Haze.')
INSERT INTO PLANT(PLANTID, PLANT_NAME, CREATE_DATE,UPDATE_DATE, DESCRIPTION) VALUES(101, 'Charlotte''s Web','2022-01-01','2022-01-01','Charlotte''s Web is a sativa marijuana strain and hemp cultivar that was specifically bred by the Stanley Brothers of Colorado for its high CBD and low THC content. ')
INSERT INTO PLANT(PLANTID, PLANT_NAME, CREATE_DATE,UPDATE_DATE, DESCRIPTION) VALUES(102, 'Alpine Rocket', '2022-01-04','2022-05-01','This strain has a terpene feature that blends with its pungent and complex aromas and has curly leaves if cure properly with whitish trichomes.')
INSERT INTO PLANT(PLANTID, PLANT_NAME, CREATE_DATE,UPDATE_DATE) VALUES(103, 'Blue Dream', '2022-01-02','2022-01-01')
INSERT INTO PLANT(PLANTID, PLANT_NAME, CREATE_DATE,UPDATE_DATE) VALUES(104, 'Sour Diesel', '2022-01-01','2022-03-01')

INSERT INTO ACCESS_POINT(ACCESS_POINTID, LOCATION, VALIDATED, CREATE_DATE, UPDATE_DATE) VALUES(100, 'Room1', TRUE, '2022-01-01', '2022-01-01')
INSERT INTO ACCESS_POINT(ACCESS_POINTID, LOCATION, VALIDATED, CREATE_DATE, UPDATE_DATE) VALUES(101, 'Room2', TRUE, '2022-01-01', '2022-01-01')
INSERT INTO ACCESS_POINT(ACCESS_POINTID, LOCATION, VALIDATED, CREATE_DATE, UPDATE_DATE) VALUES(102, 'Room3', TRUE, '2022-01-01', '2022-01-01')
INSERT INTO ACCESS_POINT(ACCESS_POINTID, LOCATION, VALIDATED, CREATE_DATE, UPDATE_DATE) VALUES(103, 'Room4', TRUE, '2022-01-01', '2022-01-01')
INSERT INTO ACCESS_POINT(ACCESS_POINTID, LOCATION, VALIDATED, CREATE_DATE, UPDATE_DATE) VALUES(104, 'Room7', TRUE, '2022-01-01', '2022-01-01')
INSERT INTO ACCESS_POINT(ACCESS_POINTID, LOCATION, VALIDATED, CREATE_DATE, UPDATE_DATE) VALUES(105, 'Room1', TRUE, '2022-01-01', '2022-01-01')
INSERT INTO ACCESS_POINT(ACCESS_POINTID, LOCATION, VALIDATED, CREATE_DATE, UPDATE_DATE) VALUES(106, 'Room3', TRUE, '2022-01-01', '2022-01-01')
INSERT INTO ACCESS_POINT(ACCESS_POINTID, LOCATION, VALIDATED, CREATE_DATE, UPDATE_DATE) VALUES(107, 'Room2', TRUE, '2022-01-01', '2022-01-01')
INSERT INTO ACCESS_POINT(ACCESS_POINTID, LOCATION, VALIDATED, CREATE_DATE, UPDATE_DATE) VALUES(108, 'Room1', TRUE, '2022-01-01', '2022-01-01')
INSERT INTO ACCESS_POINT(ACCESS_POINTID, LOCATION, VALIDATED, CREATE_DATE, UPDATE_DATE) VALUES(109, 'Room6', TRUE, '2022-01-01', '2022-01-01')
INSERT INTO ACCESS_POINT(ACCESS_POINTID, LOCATION, VALIDATED, CREATE_DATE, UPDATE_DATE) VALUES(110, 'Room6', TRUE, '2022-01-01', '2022-01-01')
INSERT INTO ACCESS_POINT(ACCESS_POINTID, LOCATION, VALIDATED, CREATE_DATE, UPDATE_DATE) VALUES(111, 'Room5', TRUE, '2022-01-01', '2022-01-01')




INSERT INTO SENSOR_STATION(SENSOR_STATION_NAME, CREATE_DATE, UPDATE_DATE, LOCATION, PLANT_PLANTID) VALUES('AAAAA','2022-01-01','2022-01-05','Room1',100)
INSERT INTO SENSOR_STATION(SENSOR_STATION_NAME, CREATE_DATE, UPDATE_DATE, LOCATION, PLANT_PLANTID) VALUES('BBBBB','2022-01-01','2022-02-05','Room2',101)
INSERT INTO SENSOR_STATION(SENSOR_STATION_NAME, CREATE_DATE, UPDATE_DATE, LOCATION, PLANT_PLANTID) VALUES('CCCCC','2022-01-01','2022-02-01','Room3',102)
INSERT INTO SENSOR_STATION(SENSOR_STATION_NAME, CREATE_DATE, UPDATE_DATE, LOCATION) VALUES('DDDDD','2022-03-01','2022-02-01','Room4')
INSERT INTO SENSOR_STATION(SENSOR_STATION_NAME, CREATE_DATE, UPDATE_DATE, LOCATION) VALUES('EEEEE','2022-03-01','2022-06-01','Room5')
INSERT INTO SENSOR_STATION(SENSOR_STATION_NAME, CREATE_DATE, UPDATE_DATE, LOCATION) VALUES('FFFFF','2022-03-01','2022-05-01','Room6')
INSERT INTO SENSOR_STATION(SENSOR_STATION_NAME, CREATE_DATE, UPDATE_DATE, LOCATION) VALUES('GGGGG','2022-01-02','2022-04-01','Room7')
INSERT INTO SENSOR_STATION(SENSOR_STATION_NAME, CREATE_DATE, UPDATE_DATE, LOCATION) VALUES('HHHHH','2022-01-02','2022-03-05','Room8')
INSERT INTO SENSOR_STATION(SENSOR_STATION_NAME, CREATE_DATE, UPDATE_DATE, LOCATION) VALUES('IIIII','2022-01-02','2022-02-05','Room9')


INSERT INTO LOG(ID, TYPE, TEXT, SUBJECT, AUTHOR, TIME) VALUES(101, 'ERROR', 'ERROR SAVING USER', 'DATA BASE ERROR', 'admin','2022-02-01')
INSERT INTO LOG(ID, TYPE, TEXT, SUBJECT, AUTHOR, TIME) VALUES(102, 'WARNING', 'ERROR EDITING USER', 'DATA BASE WARNING', 'admin','2022-02-01')
INSERT INTO LOG(ID, TYPE, TEXT, SUBJECT, AUTHOR, TIME) VALUES(103, 'ERROR', 'ERROR SAVING USER', 'DATA BASE ERROR', 'admin','2022-02-01')
INSERT INTO LOG(ID, TYPE, TEXT, SUBJECT, AUTHOR, TIME) VALUES(104, 'WARNING', 'WARNING EDITING USER', 'DATA BASE WARNING', 'admin','2022-02-01')
INSERT INTO LOG(ID, TYPE, TEXT, SUBJECT, AUTHOR, TIME) VALUES(105, 'SUCCESS', 'SUCCESS SAVING USER', 'DATA BASE SUCCESS', 'admin','2022-02-01')
INSERT INTO LOG(ID, TYPE, TEXT, SUBJECT, AUTHOR, TIME) VALUES(106, 'SUCCESS', 'SUCCESS SAVING USER', 'DATA BASE SUCCESS', 'admin','2022-02-01')
INSERT INTO LOG(ID, TYPE, TEXT, SUBJECT, AUTHOR, TIME) VALUES(107, 'SUCCESS', 'SUCCESS SAVING USER', 'DATA BASE SUCCESS', 'admin','2022-02-01')
INSERT INTO LOG(ID, TYPE, TEXT, SUBJECT, AUTHOR, TIME) VALUES(108, 'SUCCESS', 'SUCCESS SAVING USER', 'DATA BASE SUCCESS', 'admin','2022-02-01')
INSERT INTO LOG(ID, TYPE, TEXT, SUBJECT, AUTHOR, TIME) VALUES(109, 'SUCCESS', 'SUCCESS SAVING USER', 'DATA BASE SUCCESS', 'admin','2022-02-01')
INSERT INTO LOG(ID, TYPE, TEXT, SUBJECT, AUTHOR, TIME) VALUES(110, 'SUCCESS', 'SUCCESS SAVING USER', 'DATA BASE SUCCESS', 'admin','2022-02-01')
INSERT INTO LOG(ID, TYPE, TEXT, SUBJECT, AUTHOR, TIME) VALUES(115, 'SUCCESS', 'SUCCESS SAVING USER', 'DATA BASE SUCCESS', 'admin','2022-02-01')


INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,PLANT_ID,SENSOR_STATION_NAME) VALUES(101,'2022-02-02','HUMIDITY','%','36',100,'AAAAA')
INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,PLANT_ID,SENSOR_STATION_NAME) VALUES(102,'2022-02-03','HUMIDITY','%','20',100,'AAAAA')
INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,PLANT_ID,SENSOR_STATION_NAME) VALUES(103,'2022-02-04','HUMIDITY','%','50',100,'AAAAA')
INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,PLANT_ID,SENSOR_STATION_NAME) VALUES(104,'2022-02-05','HUMIDITY','%','40',100,'AAAAA')
INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,PLANT_ID,SENSOR_STATION_NAME) VALUES(105,'2022-02-04','HUMIDITY','%','50',100,'AAAAA')
INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,PLANT_ID,SENSOR_STATION_NAME) VALUES(106,'2022-02-05','HUMIDITY','%','40',100,'AAAAA')
INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,PLANT_ID,SENSOR_STATION_NAME) VALUES(107,'2022-02-02','TEMPERATURE','C','22',100,'AAAAA')
INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,PLANT_ID,SENSOR_STATION_NAME) VALUES(108,'2022-02-02','TEMPERATURE','C','24',100,'AAAAA')
INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,PLANT_ID,SENSOR_STATION_NAME) VALUES(109,'2022-02-02','TEMPERATURE','C','21',100,'AAAAA')
INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,PLANT_ID,SENSOR_STATION_NAME) VALUES(110,'2022-02-02','TEMPERATURE','C','24',100,'AAAAA')
INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,PLANT_ID,SENSOR_STATION_NAME) VALUES(111,'2022-02-02','TEMPERATURE','C','29',100,'AAAAA')
INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,PLANT_ID,SENSOR_STATION_NAME) VALUES(112,'2022-02-02','SOIL_MOISTURE','%','12',100,'AAAAA')
INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,PLANT_ID,SENSOR_STATION_NAME) VALUES(113,'2022-02-02','SOIL_MOISTURE','%','24',100,'AAAAA')
INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,PLANT_ID,SENSOR_STATION_NAME) VALUES(114,'2022-02-02','SOIL_MOISTURE','%','46',100,'AAAAA')
INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,PLANT_ID,SENSOR_STATION_NAME) VALUES(115,'2022-01-23','SOIL_MOISTURE','%','68',100,'AAAAA')
INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,PLANT_ID,SENSOR_STATION_NAME) VALUES(116,'2022-01-22','SOIL_MOISTURE','%','47',100,'AAAAA')
INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,PLANT_ID,SENSOR_STATION_NAME) VALUES(117,'2022-01-21','SOIL_MOISTURE','%','34',100,'AAAAA')
INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,PLANT_ID,SENSOR_STATION_NAME) VALUES(118,'2022-01-20','LIGHT_INTENSITY','lux','2000',100,'AAAAA')
INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,PLANT_ID,SENSOR_STATION_NAME) VALUES(219,'2022-01-19','LIGHT_INTENSITY','lux','1200',100,'AAAAA')
INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,PLANT_ID,SENSOR_STATION_NAME) VALUES(310,'2022-01-18','LIGHT_INTENSITY','lux','900',100,'AAAAA')
INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,PLANT_ID,SENSOR_STATION_NAME) VALUES(119,'2022-01-17','AIR_QUALITY','Assessment','350',100,'AAAAA')



INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,PLANT_ID,SENSOR_STATION_NAME) VALUES(20,'2022-01-02','HUMIDITY','%','10',101,'BBBBB')
INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,PLANT_ID,SENSOR_STATION_NAME) VALUES(21,'2022-01-03','TEMPERATURE','C','24',101,'BBBBB')
INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,PLANT_ID,SENSOR_STATION_NAME) VALUES(22,'2022-01-04','TEMPERATURE','C','23',101,'BBBBB')
INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,PLANT_ID,SENSOR_STATION_NAME) VALUES(23,'2022-01-05','TEMPERATURE','C','34',101,'BBBBB')
INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,PLANT_ID,SENSOR_STATION_NAME) VALUES(24,'2022-01-06','TEMPERATURE','C','22',101,'BBBBB')
INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,PLANT_ID,SENSOR_STATION_NAME) VALUES(25,'2022-01-07','TEMPERATURE','C','11',101,'BBBBB')
INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,PLANT_ID,SENSOR_STATION_NAME) VALUES(26,'2022-01-08','SOIL_MOISTURE','%','55',101,'BBBBB')
INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,PLANT_ID,SENSOR_STATION_NAME) VALUES(35,'2022-01-09','SOIL_MOISTURE','%','35',101,'BBBBB')
INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,PLANT_ID,SENSOR_STATION_NAME) VALUES(36,'2022-01-10','SOIL_MOISTURE','%','25',101,'BBBBB')
INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,PLANT_ID,SENSOR_STATION_NAME) VALUES(37,'2022-01-11','SOIL_MOISTURE','%','15',101,'BBBBB')
INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,PLANT_ID,SENSOR_STATION_NAME) VALUES(38,'2022-01-12','LIGHT_INTENSITY','lux','350',101,'BBBBB')
INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,PLANT_ID,SENSOR_STATION_NAME) VALUES(27,'2022-01-13','LIGHT_INTENSITY','lux','550',101,'BBBBB')
INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,PLANT_ID,SENSOR_STATION_NAME) VALUES(28,'2022-01-14','AIR_QUALITY','Assessment','200',101,'BBBBB')
INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,PLANT_ID,SENSOR_STATION_NAME) VALUES(33,'2022-01-15','HUMIDITY','%','30',101,'BBBBB')
INSERT INTO MEASUREMENT(ID ,TIMESTAMP,TYPE,UNIT,VALUE_S,PLANT_ID,SENSOR_STATION_NAME) VALUES(34,'2022-01-16','HUMIDITY','%','40',101,'BBBBB')



