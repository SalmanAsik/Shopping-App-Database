
Create PROCEDURE sp_newuser (IN Name varchar(100), IN DateOfBirth date, IN emailaddress Varchar(100), IN user_name Varchar(100), 
IN pwd varchar(100), IN loc varchar(100), IN pp longblob )
BEGIN
insert into UserProfile(Name_and_Surname, DOB, Email, UserName, Password, Location, Profile_Picture ) values (Name, DateOfBirth, emailaddress, user_name, pwd, loc, pp);
END 