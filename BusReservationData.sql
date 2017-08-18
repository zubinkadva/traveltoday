insert into route values('R01'   ,'500' ,'Pune'     ,'Mumbai'   ,'14:00','16:30')
insert into route values('R01RET','500' ,'Mumbai'   ,'Pune'     ,'19:00','21:30')
insert into route values('R02'   ,'900' ,'Goa'      ,'Mumbai'   ,'13:00','15:30')
insert into route values('R02RET','1500','Mumbai'   ,'Goa'      ,'17:00','19:30')
insert into route values('R03'   ,'500' ,'Ahmedabad','Mumbai'   ,'10:00','14:00')
insert into route values('R03RET','500' ,'Mumbai'   ,'Ahmedabad','16:30','01:30')
insert into route values('R04'   ,'1000','Bangalore','Mumbai'   ,'07:00','17:00')
insert into route values('R04RET','1000','Mumbai'   ,'Bangalore','19:30','04:00')
insert into route values('R05'   ,'800' ,'Ahmedabad','Bangalore','19:00','07:00')
insert into route values('R05RET','800' ,'Bangalore','Ahmedabad','10:00','22:00')
insert into route values('R06'   ,'700' ,'Pune'     ,'Ahmedabad','07:30','15:00')
insert into route values('R06RET','700' ,'Ahmedabad','Pune'     ,'17:00','01:00')
insert into route values('R07'   ,'800' ,'Pune'     ,'Bangalore','16:30','06:30')
insert into route values('R07RET','800' ,'Bangalore','Pune'     ,'09:00','00:00')
insert into route values('R08'   ,'900' ,'Ahmedabad','Goa'      ,'16:30','04:30')
insert into route values('R08RET','900' ,'Goa'      ,'Ahmedabad','06:00','19:00')
insert into route values('R09'   ,'500' ,'Bangalore','Goa'      ,'11:00','19:00')
insert into route values('R09RET','500' ,'Goa'      ,'Bangalore','21:00','04:00')
insert into route values('R10'   ,'500' ,'Bangalore','Pune'     ,'09:00','19:00')
insert into route values('R10RET','500' ,'Pune'     ,'Bangalore','20:30','05:00')

insert into bus_master values('B01','Volvo Multiaxle Sleeper','Sleeper','yes',0,39,39,'R01'   ,'')
insert into bus_master values('B02','Volvo Multiaxle Sleeper','Sleeper','yes',0,39,39,'R01RET','')
insert into bus_master values('B03','Mercedes Benz'          ,'Sleeper','yes',0,45,45,'R05'   ,'') 
insert into bus_master values('B04','Mercedes Benz'          ,'Sleeper','yes',0,45,45,'R05RET','')
insert into bus_master values('B05','Volvo AC'               ,'Normal' ,'yes',0,45,45,'R06'   ,'')
insert into bus_master values('B06','Volvo AC'               ,'Normal' ,'yes',0,45,45,'R06RET','')
insert into bus_master values('B07','Isuzu AC'               ,'Sleeper','yes',0,40,40,'R04'   ,'')
insert into bus_master values('B08','Isuzu AC'               ,'Sleeper','yes',0,40,40,'R04RET','')
insert into bus_master values('B09','Tempo Traveller'        ,'Normal' ,'no' ,0,20,20,'R02'   ,'')
insert into bus_master values('B10','Tempo Traveller'        ,'Normal' ,'no' ,0,20,20,'R02RET','')
insert into bus_master values('B11','Mercedes Benz'          ,'Sleeper','yes',0,40,40,'R07'   ,'')
insert into bus_master values('B12','Mercedes Benz'          ,'Sleeper','yes',0,40,40,'R07RET','')
insert into bus_master values('B13','Volvo AC'               ,'Normal' ,'yes',0,45,45,'R03'   ,'')
insert into bus_master values('B14','Volvo AC'               ,'Normal' ,'yes',0,45,45,'R03RET','')
insert into bus_master values('B15','Tempo Traveller'        ,'Normal' ,'no' ,0,20,20,'R09'   ,'')
insert into bus_master values('B16','Tempo Traveller'        ,'Normal' ,'no' ,0,20,20,'R09RET','')
insert into bus_master values('B17','Izuzu AC'               ,'Sleeper','yes',0,30,30,'R10'   ,'')
insert into bus_master values('B18','Izuzu AC'               ,'Sleeper','yes',0,30,30,'R10RET','')
insert into bus_master values('B19','Mercedes Benz'          ,'Sleeper','yes',0,45,45,'R08'   ,'')
insert into bus_master values('B20','Mercedes Benz'          ,'Sleeper','yes',0,45,45,'R08RET','') 

insert into agent values('A01','Lala','Rajput','M.K. Gandhi Road, Pune 415332','M','1232562125',
'9854123512','lalaranjput@hotmail.com','V.L. Travels',0.02)
insert into agent values('A03','Ronnie','D''Souza','Brooklyn Street, Mumbai 400025','M','0222435681',
'6462526226','ronnied@rediffmail.com','Roland Travels',0.10)
insert into agent values('A04','Sana','Daruwalla','Raheja Towers, Nariman Point, Mumbai 400013','F','02254612484',
'9865315265','s_daruwalla@gmail.com','Pishu Travels',0.03)

insert into login_master values('jsmith'   ,'redrose' ,'Father''s Name'  ,'Jerry','admin')
insert into login_master values('helen_mat','audi_a6' ,'Favorite Food'   ,'Sushi','member')
insert into login_master values('kekmeh'   ,'emirates','Favorite Country','Japan','member')

insert into passenger values(701,'A03','B05','R02','John','Smith','Maker Chambers, Nariman Point, Mumbai 400010',
'M','jsmith@gmail.com','02222236541','9813265812','jsmith','',null)
insert into passenger values(702,'A04','B06','R07RET','Helen','Matsushi','Nariman Street, Napeasea Road, Mumbai 400023',
'F','helenm@ymail.com','02254658162','9851236521','helen_mat','',null)
insert into passenger values(703,'A01','B09','R10','Keki','Mehta','Park Avenue, Dr. D.N. Road, Pune 415332',
'M','k4mehta@emirates.com','12354521485','9965121512','kekmeh','',null)

insert into payment values(801,701,null,null)
insert into payment values(802,702,null,null)
insert into payment values(803,703,null,null)

