USE FluffyPonyManagement;

INSERT INTO ZipCode VALUES
('730','Roscoebury','Arizona','Ireland'),
('11720','Centereach','NY','USA'),
('15301','Washington','PA','USA'),
('20678','Prince Frederick','MD','USA'),
('21784','Sykesville','MD','USA'),
('29621','Anderson','SC','USA'),
('30152','Kennesaw','GA','USA'),
('31830','Warm Springs','GA','USA'),
('32174','Ormond Beach','FL','USA'),
('33139','Miami Beach','FL','USA'),
('36022','Deatsville','AL','USA'),
('42082','Symsonia','KY','USA'),
('48362','Lake Orion','MI','USA'),
('61603','Peoria','IL','USA'),
('63645','Fredericktown','MO','USA'),
('75115','Desoto','TX','USA'),
('83651','Nampa','ID','USA'),
('92111','San Diego','CA','USA'),
('94014','Daly City','CA','USA'),
('95903','Beale Afb','CA','USA'),
('DL1 1SS','Great Burdon','NULL','UK'),
('J85 8A0','East Albert','Alberta','CANADA'),
('NS0 4YT','Keelerburgh','Florida','Great Britain'),
('XX1 1FR','Emardmouth','South Carolina','Great Britain');


INSERT INTO Customers VALUES
('301','Beam Inc.','Stephen','Jones','4012 Texana Way','95903'),
('302','Games United','Gary','Plum','2805 Patuxent Ct','20678'),
('303','Lions Share Inc','Brent','Buckler','4161 White House Pkwy','31830'),
('304','Software Jockey','Tyler','Rickle','4 Springwood Cir','36022'),
('305','Power Plex Inc.','Jordan','Copper','70 Oneida Ave','11720'),
('306','FightBytes','Adrian','Michalski','627 E Embert PL','61603');

INSERT INTO Employees VALUES
('1','John','Mulley','1625 Madison St.','63645'),
('2','Sarah','Tarber','594 Southhill Blvd.','94014'),
('3','Joe','McGinty','391 Oak Level Elva Rd.','42082'),
('4','Shawn','Keebler','2250 Ellison Lakes Dr NW','30152'),
('5','Tammy','Pringle','5 Remington Rd','32174'),
('6','Jacob','Carlson','609 Bunny Run Blvd','48362');

INSERT INTO Publishers VALUES
('101','Oval Box Entertainment','3 Bohemia Dr.','15301'),
('102','YellowGrape Games','161 West Cherry Hill Ave.','33139'),
('103','Bandwidth Interactive','109 Lammas Street','DL1 1SS'),
('104','Atlas Studios','681 Kihn Inlet','730'),
('105','Cyclone Digital','7248 West Willow Ave.','21784'),
('106','343 Games','62980 Ashleigh Pines','J85 8A0');

INSERT INTO Developers VALUES
('201','Lucas Studio','9477 Chestnut Lane','83651'),
('202','Telegraph Games','0455 Luettgen Extensions','XX1 1FR'),
('203','Pineapple Treasure Studio','7554 Gates St.','92111'),
('204','Coffee House','69 Baker Rd.','29621'),
('205','Relic Arts','633 Valley Farms Drive','75115'),
('206','TakeFour Interactive','9813 Darien Islands','NS0 4YT');

INSERT INTO Sales VALUES
('11111','10/3/2021','6','301'),
('11112','10/6/2021','2','304'),
('11113','10/9/2021','3','302'),
('11114','10/12/2021','5','306'),
('11115','10/15/2021','4','303'),
('11116','10/18/2021','2','305'),
('11117','10/21/2021','1','304');

INSERT INTO Games VALUES
('1001','205','101','DungeonDuo III','19.99'),
('1002','206','103','Golf Wars','9.99'),
('1003','205','105','Chesters Adventure','24.99'),
('1004','203','102','Call to War 13','59.99'),
('1005','202','106','DigDigDoug','4.99'),
('1006','204','104','Blue Sky Simulator','39.99'),
('1007','201','106','Monkey Hospital 1.5','12.99'),
('1008','206','102','Just in time Simulator','19.99');

INSERT INTO SaleLineItems (ID, SaleID, GameID, QTY, TotalItemPrice)VALUES
('1','11111','1004','62','1549.38'),
('2','11112','1006','79','394.21'),
('3','11113','1007','23','919.77'),
('4','11113','1004','62','1549.38'),
('5','11114','1002','41','819.59'),
('6','11115','1002','94','1879.06'),
('7','11116','1003','34','339.66'),
('8','11117','1005','7','419.93');










