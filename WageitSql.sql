create database Wageit;

use Wageit;

-- --creating a table
-- ---------------



create table UserProfile(UserId int primary key NOT NULL AUTO_INCREMENT, Name_and_Surname varchar(100), DOB date,
Email varchar(100), UserName varchar(100), Password varchar(100), Location varchar(100)
, Profile_Picture LONGBLOB, Created_at datetime, Updated_at datetime) ;

drop table UserProfile;

select * from UserProfile;

