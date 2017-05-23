-- CREATE TABLE IF NOT EXISTS ``

DROP TABLE `DateCounter`;
CREATE TABLE `DateCounter` (
  `date` date NOT NULL,
  `userTimes` int(11) NOT NULL,
  `flockTimes` int(11) NOT NULL,
  `discussionTimes` int(11) NOT NULL
);


DROP TABLE `DiscussionInformation`;
CREATE TABLE `DiscussionInformation` (
  `discussionID` varchar(15) NOT NULL,
  `creatorID` varchar(15) NOT NULL,
  `createDate` date NOT NULL,
  `discussionName` varchar(50) NOT NULL,
  `theme` varchar(100) NOT NULL,
  PRIMARY KEY (`discussionID`)
);


DROP TABLE `FlockInformation`;
CREATE TABLE `FlockInformation` (
  `flockID` varchar(15) NOT NULL,
  `creatorID` varchar(15) NOT NULL,
  `createDate` date NOT NULL,
  `flockName` varchar(50) NOT NULL,
  `theme` varchar(100) NOT NULL,
  PRIMARY KEY (`flockID`)
);


DROP TABLE `FlockSpace`;
CREATE TABLE `FlockSpace` (
  `flockSpaceNum` INTEGER PRIMARY KEY AUTOINCREMENT,
  `flockID` varchar(15) NOT NULL,
  `fileType` varchar(20) NOT NULL,
  `filePath` varchar(50) NOT NULL,
  `fileName` varchar(50) NOT NULL,
  `fileInformation` varchar(100) DEFAULT NULL,
  `senderID` varchar(15) NOT NULL,
  `downloadTimes` int(11) NOT NULL
);


DROP TABLE `HistoryMessage`;
CREATE TABLE `HistoryMessage` (
  `messageID` INTEGER PRIMARY KEY AUTOINCREMENT,
  `senderID` varchar(15) NOT NULL,
  `receiverID` varchar(15) NOT NULL,
  `content` varchar(1000) NOT NULL DEFAULT '',
  `dateTime` datetime NOT NULL
);


DROP TABLE `Mail`;
CREATE TABLE `Mail` (
  `mailID` INTEGER PRIMARY KEY AUTOINCREMENT,
  `senderID` varchar(15) NOT NULL,
  `senderAddress` varchar(20) NOT NULL,
  `receiverID` varchar(15) NOT NULL,
  `receiverAddress` varchar(20) NOT NULL,
  `theme` varchar(50) NOT NULL,
  `content` varchar(5000) NOT NULL,
  `time` datetime NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  `receiverStatus` int(2) NOT NULL DEFAULT '0',
  `senderStatus` int(2) NOT NULL DEFAULT '0'
);


DROP TABLE `OfflineMessage`;
CREATE TABLE `OfflineMessage` (
  `messageID` INTEGER PRIMARY KEY AUTOINCREMENT,
  `kind` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `senderID` varchar(15) NOT NULL,
  `receiverID` varchar(15) NOT NULL,
  `content` varchar(1000) NOT NULL DEFAULT '',
  `dateTime` datetime NOT NULL
);


DROP TABLE `UserDiscussions`;
CREATE TABLE `UserDiscussions` (
  `userDiscussionNum` INTEGER PRIMARY KEY AUTOINCREMENT,
  `discussionID` varchar(15) NOT NULL,
  `userID` varchar(15) NOT NULL,
  `status` int(3) NOT NULL,
  `joinDate` datetime NOT NULL
);

DROP TABLE `UserFlocks`;
CREATE TABLE `UserFlocks` (
  `userFlockNum` INTEGER PRIMARY KEY AUTOINCREMENT,
  `flockID` varchar(15) NOT NULL,
  `userID` varchar(15) NOT NULL,
  `remark` varchar(20) DEFAULT NULL,
  `status` int(3) NOT NULL,
  `joinDate` datetime NOT NULL
);

DROP TABLE `UserFriends`;
CREATE TABLE `UserFriends` (
  `friendNum` INTEGER PRIMARY KEY AUTOINCREMENT,
  `userID` varchar(15) NOT NULL,
  `friendID` varchar(15) NOT NULL,
  `groupName` varchar(50) NOT NULL,
  `remarkName` varchar(50) DEFAULT NULL
);

DROP TABLE `UserGroup`;
CREATE TABLE `UserGroup` (
  `groupNum` INTEGER PRIMARY KEY AUTOINCREMENT,
  `userID` varchar(15) NOT NULL,
  `groupName` varchar(20) NOT NULL
);


DROP TABLE `UserInformation`;
CREATE TABLE `UserInformation` (
  `userID` varchar(15) NOT NULL,
  `head` int(11) NOT NULL DEFAULT '1',
  `nickname` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL,
  `sex` varchar(2) NOT NULL,
  `birthday` date NOT NULL,
  `question` varchar(50) NOT NULL,
  `answer` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `regDate` datetime NOT NULL,
  `status` int(3) NOT NULL DEFAULT '5',
  PRIMARY KEY (`userID`)
);
