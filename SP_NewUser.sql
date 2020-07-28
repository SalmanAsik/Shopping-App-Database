DELIMITER // 

Create PROCEDURE sp_newuser (IN Name varchar(100), IN DateOfBirth date, IN emailaddress Varchar(100), IN user_name Varchar(100), 
IN pwd varchar(100), IN loc varchar(100), IN pp longblob, IN created_at datetime, IN updated_at datetime )
BEGIN
insert into UserProfile (Name_and_Surname, DOB, Email, UserName, Password, Location, Profile_Picture, Created_at, Updated_at ) values (Name, DateOfBirth, emailaddress, user_name, pwd, loc, pp, created_at, updated_at );
END;sp_getusersp_newuser

CALL sp_newuser("Ibu", "1995-05-23", "ibukhan@gmail.com", "ik", "123", "South Africa", "F:\whatsapp images\IMG-20141216-WA0000.jpg");


CALL sp_updateuser(7, "ik@gmail.com", "ik11", "1111", "SouthAfrica", "F:\whatsapp images\IMG-20141216-WA0000.jpg", NOW());

CALL sp_getuser(2);