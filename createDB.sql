-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/0wfD1R
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

CREATE TABLE `MEMBER` (
    `memberId` int  NOT NULL ,
    `memberName` varchar(10)  NOT NULL ,
    `memberNickName` varchar(10)  NOT NULL ,
    `memberStudentId` int  NOT NULL ,
    `memberEmail` varchar(30)  NOT NULL ,
    `memberPw` varchar(30)  NOT NULL ,
    `memberSchoolId` int  NOT NULL ,
    `memberMajorId` int  NOT NULL ,
    `memberSex` varchar(5)  NOT NULL ,
    `memberImage` text  NOT NULL ,
    `memberMentos` int  NOT NULL ,
    `memberStatus` varchar(10)  NOT NULL DEFAULT 'active',
    `memberCreateAt` timestamp  NOT NULL DEFAULT current_timestamp,
    `memberUpdateAt` timestamp  NOT NULL DEFAULT current_timestamp,
    PRIMARY KEY (
        `memberId`
    )
);

CREATE TABLE `MENTO` (
    `memberId` int  NOT NULL ,
    `mentoMajorFirst` int  NOT NULL ,
    `mentoMajorSecond` int  NULL ,
    `mentoMajorThird` int  NULL ,
    `mentoScore` double  NOT NULL ,
    `mentoIntro` text  NOT NULL ,
    `mentoCreateAt` timestamp  NOT NULL DEFAULT current_timestamp,
    `mentoUpdateAt` timestamp  NOT NULL DEFAULT current_timestamp
);

CREATE TABLE `MENTI` (
    `memberId` int  NOT NULL ,
    `mentiMajorFirst` int  NOT NULL ,
    `mentiMajorSecond` int  NULL ,
    `mentiMajorThird` int  NULL ,
    `mentiIntro` text  NOT NULL ,
    `mentiCreateAt` timestamp  NOT NULL DEFAULT current_timestamp,
    `mentiUpdateAt` timestamp  NOT NULL DEFAULT current_timestamp
);

CREATE TABLE `SCHOOLCATEGORY` (
    `schoolId` int NOT NULL,
    `schoolName` varchar(10) NOT NULL,
    `schoolEmail` varchar(30) NOT NULL,
    PRIMARY KEY (
        `schoolId`
    )
);

CREATE TABLE `MAJORCATEGORY` (
    `majorCategoryId` int  NOT NULL ,
    `majorName` varchar(10)  NOT NULL ,
    `majorImgUrl` text  NOT NULL ,
    PRIMARY KEY (
        `majorCategoryId`
    )
);

CREATE TABLE `POST` (
    `postId` int  NOT NULL ,
    `memberId` int  NOT NULL ,
    `postTitle` text  NOT NULL ,
    `postContents` text  NOT NULL ,
    `postCreateAt` timestamp  NOT NULL DEFAULT current_timestamp,
    `postUpdateAt` timestamp  NOT NULL DEFAULT current_timestamp,
    PRIMARY KEY (
        `postId`
    )
);

CREATE TABLE `IMAGE` (
    `imageId` int  NOT NULL ,
    `postId` int  NOT NULL ,
    `imageUrl` text  NOT NULL ,
    PRIMARY KEY (
        `imageId`
    )
);

CREATE TABLE `MENTORING` (
    `mentoringId` int  NOT NULL ,
    `mentoringCount` int  NOT NULL ,
    `majorCategoryId` int  NOT NULL ,
    `mentoringMentos` int  NOT NULL ,
    `mentoringMentoId` int  NOT NULL ,
    `mentoringMentiId` int  NOT NULL ,
    -- 0==prev, 1==~ing 2=fin
    `mentoringStatus` int  NOT NULL DEFAULT 0,
    `mentoringCreateAt` timestamp  NOT NULL DEFAULT current_timestamp,
    `mentoringUpdateAt` timestamp  NOT NULL DEFAULT current_timestamp,
    PRIMARY KEY (
        `mentoringId`
    )
);

CREATE TABLE `REPORT` (
    `reportId` int  NOT NULL ,
    `reportDate` varchar(10)  NOT NULL ,
    `reportText` text  NOT NULL ,
    `mentoringId` int  NOT NULL ,
    `reportCreateAt` timestamp  NOT NULL DEFAULT current_timestamp,
    `reportUpdateAt` timestamp  NOT NULL DEFAULT current_timestamp,
    PRIMARY KEY (
        `reportId`
    )
);

CREATE TABLE `REVIEW` (
    `reviewId` int  NOT NULL ,
    `mentoringId` int  NOT NULL ,
    `reviewText` text  NOT NULL ,
    `reviewScore` double  NOT NULL ,
    `reviewCreateAt` timestamp  NOT NULL DEFAULT current_timestamp,
    `reviewUpdateAt` timestamp  NOT NULL DEFAULT current_timestamp,
    PRIMARY KEY (
        `reviewId`
    )
);
