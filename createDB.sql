
CREATE TABLE `MEMBER` (
    `memberId` int AUTO_INCREMENT NOT NULL ,
    `memberName` varchar(10)  NOT NULL ,
    `memberNickName` varchar(10)  NOT NULL ,
    `memberStudentId` int  NOT NULL ,
    `memberEmail` varchar(30)  NOT NULL ,
    `memberPw` text  NOT NULL ,
    `memberSchoolId` int  NOT NULL ,
    `memberMajor` varchar(20)  NOT NULL DEFAULT '전공명을 입력해주세요' ,
    `memberSex` varchar(5)  NOT NULL ,
    `memberMentos` int  NOT NULL DEFAULT 10,
    `memberNotificationFlag` int NOT NULL DEFAULT 1,
    `memberSexFlag` int NOT NULL DEFAULT 1,
    `memberStatus` varchar(10)  NOT NULL DEFAULT 'active',
    `memberCreateAt` timestamp  NOT NULL DEFAULT current_timestamp,
    `memberUpdateAt` timestamp  NOT NULL DEFAULT current_timestamp ON UPDATE current_timestamp,
    PRIMARY KEY (
        `memberId`
    ),
    CONSTRAINT `uc_MEMBER_memberNickName` UNIQUE (
        `memberNickName`
    ),
    CONSTRAINT `uc_MEMBER_memberEmail` UNIQUE (
        `memberEmail`
    )
);

CREATE TABLE `MENTO` (
    `memberId` int  NOT NULL ,
    `mentoMajorFirst` int  NOT NULL ,
    `mentoMajorSecond` int  NULL ,
    `mentoImage` text ,
    `mentoScore` double  NOT NULL DEFAULT 0,
    `mentoIntro` text  NOT NULL ,
    `mentoCreateAt` timestamp  NOT NULL DEFAULT current_timestamp,
    `mentoUpdateAt` timestamp  NOT NULL DEFAULT current_timestamp ON UPDATE current_timestamp
);

CREATE TABLE `MENTI` (
    `memberId` int  NOT NULL ,
    `mentiMajorFirst` int  NOT NULL ,
    `mentiMajorSecond` int  NULL ,
    `mentiImage` text ,
    `mentiIntro` text  NOT NULL ,
    `mentiCreateAt` timestamp  NOT NULL DEFAULT current_timestamp,
    `mentiUpdateAt` timestamp  NOT NULL DEFAULT current_timestamp ON UPDATE current_timestamp
);

CREATE TABLE `SCHOOLCATEGORY` (
    `schoolId` int AUTO_INCREMENT NOT NULL ,
    `schoolEmail` varchar(30)  NOT NULL ,
    `schoolName` varchar(20)  NOT NULL ,
    PRIMARY KEY (
        `schoolId`
    )
);

CREATE TABLE `MAJORCATEGORY` (
    `majorCategoryId` int AUTO_INCREMENT NOT NULL ,
    `majorName` varchar(10)  NOT NULL ,
    `majorImgUrl` text  NULL ,
    PRIMARY KEY (
        `majorCategoryId`
    )
);

CREATE TABLE `POST` (
    `postId` int AUTO_INCREMENT NOT NULL ,
    `majorCategoryId` int NOT NULL,
    `memberId` int  NOT NULL ,
    `postTitle` text  NOT NULL ,
    `postContents` text  NOT NULL ,
    `postCreateAt` timestamp  NOT NULL DEFAULT current_timestamp,
    `postUpdateAt` timestamp  NOT NULL DEFAULT current_timestamp ON UPDATE current_timestamp,
    PRIMARY KEY (
        `postId`
    )
);

CREATE TABLE `IMAGE` (
    `imageId` int AUTO_INCREMENT NOT NULL ,
    `postId` int  NOT NULL ,
    `imageUrl` text  NOT NULL ,
    PRIMARY KEY (
        `imageId`
    )
);

CREATE TABLE `MENTORING` (
    `mentoringId` int AUTO_INCREMENT NOT NULL ,
    `mentoringCount` int  NOT NULL ,
    `majorCategoryId` int  NOT NULL ,
    `mentoringMentos` int  NOT NULL ,
    `mentoringMentoId` int  NOT NULL ,
    `mentoringMentiId` int  NOT NULL ,
    -- 0==prev, 1==~ing 2=fin
    `mentoringStatus` int  NOT NULL DEFAULT 0,
    `mentoringCreateAt` timestamp  NOT NULL DEFAULT current_timestamp,
    `mentoringUpdateAt` timestamp  NOT NULL DEFAULT current_timestamp ON UPDATE current_timestamp,
    PRIMARY KEY (
        `mentoringId`
    )
);

CREATE TABLE `REPORT` (
    `reportId` int AUTO_INCREMENT NOT NULL ,
    `reportText` text  NOT NULL ,
    `mentoringId` int  NOT NULL ,
    `reportCreateAt` timestamp  NOT NULL DEFAULT current_timestamp,
    `reportUpdateAt` timestamp  NOT NULL DEFAULT current_timestamp ON UPDATE current_timestamp,
    PRIMARY KEY (
        `reportId`
    )
);

CREATE TABLE `REVIEW` (
    `reviewId` int AUTO_INCREMENT NOT NULL ,
    `mentoringId` int  NOT NULL ,
    `reviewText` text  NOT NULL ,
    `reviewScore` double  NOT NULL ,
    `reviewCreateAt` timestamp  NOT NULL DEFAULT current_timestamp,
    `reviewUpdateAt` timestamp  NOT NULL DEFAULT current_timestamp ON UPDATE current_timestamp,
    PRIMARY KEY (
        `reviewId`
    )
);
CREATE TABLE `USERDEVICE` (
    `deviceId` int  AUTO_INCREMENT NOT NULL ,
    `memberId` int  NULL ,
    `deviceToken` varchar(100) ,
    `mentoCreateAt` timestamp  NOT NULL DEFAULT current_timestamp,
    `mentoUpdateAt` timestamp  NOT NULL DEFAULT current_timestamp ON UPDATE current_timestamp,
    `deleteFlag` int NOT NULL DEFAULT 0,
    PRIMARY KEY (
        `deviceId`
    )
);

CREATE TABLE `NOTICE` (
    `noticeId` int AUTO_INCREMENT NOT NULL ,
    `content` text  NOT NULL ,
    `createAt` timestamp  NOT NULL DEFAULT current_timestamp,
    `updateAt` timestamp  NOT NULL DEFAULT current_timestamp,
    PRIMARY KEY (
        `noticeId`
    )
);
CREATE TABLE `NOTIFICATION` (
    `notificationId` int AUTO_INCREMENT NOT NULL ,
    `memberId` int NOT NULL,
    `statusFlag` int NOT NULL,
    `content` text  NOT NULL ,
    `createAt` timestamp  NOT NULL DEFAULT current_timestamp,
    `updateAt` timestamp  NOT NULL DEFAULT current_timestamp,
    PRIMARY KEY (
        `notificationId`
    )
);
