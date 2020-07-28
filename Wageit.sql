show databases;
use wageit;
select * from UserProfile;

DESC UserProfile;

create table Wagers(WagerId int primary key NOT NULL AUTO_INCREMENT, UserId INT NOT NULL,
    CONSTRAINT fk_user
    FOREIGN KEY (UserId) 
    REFERENCES UserProfile(UserId)
        ON UPDATE CASCADE
        ON DELETE CASCADE, CommunityWagerName varchar(100),
ShortDescription varchar(1000), VerificationSourceType varchar(100), VerificationSourceImgDoc LONGBLOB, VerificationSourceURL varchar(100), Prediction varchar(1000)
, WagerAmount int not null, JudgementdateTime datetime, Initiator varchar(100), InvitedEmails varchar(100), InvitedContactsName varchar(100), Status varchar(100), Created_at datetime,Updated_at datetime) ;

create table Pool(PoolId int primary key NOT NULL AUTO_INCREMENT, WagerId INT NOT NULL, UserId INT NOT NULL,
    CONSTRAINT fk_wagers
    FOREIGN KEY (WagerId) 
    REFERENCES Wagers(WagerId)
        ON UPDATE CASCADE
        ON DELETE CASCADE, 
    FOREIGN KEY (UserId) 
    REFERENCES UserProfile(UserId)
        ON UPDATE CASCADE
        ON DELETE CASCADE, ParticipantsName varchar(100),
UserName varchar(100), AdminApprovalforInvitation varchar(100), InvitedCount int, FinalSourceType varchar(100), FinalSourceImgDoc longblob
, FinalSourceURL varchar(1000), VerificationCount int, IsActive varchar(100), Created_at datetime, Updated_at datetime) ;

create table PaymentDetails(PaymentId int primary key not null auto_increment, WagerId INT NOT NULL, UserId INT NOT NULL,
    FOREIGN KEY (WagerId) 
    REFERENCES Wagers(WagerId)
        ON UPDATE CASCADE
        ON DELETE CASCADE, 
    FOREIGN KEY (UserId) 
    REFERENCES UserProfile(UserId)
        ON UPDATE CASCADE
        ON DELETE CASCADE, WagerAmount int, ParticipantsCount int, 
        WinnerRefId varchar(100), TotalAmount int, TotalCommissionAmount int, 
        WinnerPrice int, TotalWagerAmountId varchar(100), TotalComAmtId varchar(100), Created_at datetime,
        Updated_at datetime);
select *from Wagers;
select *from pool;

Desc Pool;

Insert into wagers(UserId, CommunityWagerName, ShortDescription, VerificationSourceType, VerificationSourceImgDoc, Prediction, WagerAmount, JudgementdateTime, Initiator,
InvitedEmails, InvitedContactsName, Status, Created_at, Updated_at) values (1, 'ExchangeRate', 'I want to play on 05th july for exchange rate wager', 'Image','C:\Users\SalmanAsik\Desktop\cake.jpeg', '1$ would be 18R', '200', '2020-06-05 12:50:00', 'Y','testtt@gmail.com', 'testttt', 'A', '2020-06-02 00:00:00','2020-06-02 00:00:00');

Insert Into Pool(WagerId, UserId, ParticipantsName, UserName, AdminApprovalforInvitation, InvitedCount, FinalSourceType
, FinalSourceImgDoc, FinalSourceURL, VerificationCount, IsActive, Created_at, Updated_at) values (1,1, 'Testtt', 'Spider'
,'Y', 5, 'URL', '', 'https://dev.mysql.com/doc/refman/8.0/en/create-table-foreign-keys.html', 6, 'Y', '2020-06-03 00:00:00',
 '2020-06-03 00:00:00');
 
 Select *from Pool;
 
 Select *from PaymentDetails;
 
 insert into PaymentDetails(WagerId, UserId, WagerAmount, ParticipantsCount, WinnerRefId,
 TotalAmount, TotalCommissionAmount, WinnerPrice, TotalWagerAmountId, TotalComAmtId,
 Created_at, Updated_at) Values (1, 1, 200, 6, 'ERWIN1', 1200, 120, 1080, 'EC1', 'ECCOM1',
 '2020-06-03 00:00:00','2020-06-03 00:00:00');
 
UPDATE wagers SET VerificationSourceImgDoc=('C:\Users\SalmanAsik\Desktop\cake.jpeg') where WagerId=1;

Create table UserStat(UserStatId int primary key not null auto_increment, WagerId INT NOT NULL, UserId INT NOT NULL,
    FOREIGN KEY (WagerId) 
    REFERENCES Wagers(WagerId)
        ON UPDATE CASCADE
        ON DELETE CASCADE, 
    FOREIGN KEY (UserId) 
    REFERENCES UserProfile(UserId)
        ON UPDATE CASCADE
        ON DELETE CASCADE, ParticipatedWager varchar(100), Status varchar(100), Created_at datetime, Updated_at datetime);

insert into UserStat(WagerId, UserId, ParticipatedWager, Status, Created_at, Updated_at) values (
1, 1, 'ExchangeRate', 'W', '2020-06-03 00:00:00', '2020-06-03 00:00:00');

select *from UserStat;
drop table pool;

Create Table UserSpec(UserSpecId int primary key not null auto_increment, UserId INT NOT NULL,
    FOREIGN KEY (UserId) 
    REFERENCES UserProfile(UserId)
        ON UPDATE CASCADE
        ON DELETE CASCADE, PushNotificationStatus varchar(100), ParticipatedWagersCount int, WinningPercentage int, 
        Created_at datetime, Updated_at datetime);
	Insert Into UserSpec(UserId, PushNotificationStatus, ParticipatedWagersCount, WinningPercentage,
   Created_at, Updated_at ) values (1, '',  4, 80,  '2020-06-03 00:00:00', '2020-06-03 00:00:00');
drop table wagers;
drop table UserStat;
drop table pool;
select *from wagers;
select *from PaymentDetails;

select * from UserSpec;