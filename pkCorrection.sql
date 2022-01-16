use mentos;

ALTER TABLE `mentos`.`image` 
CHANGE COLUMN `imageId` `imageId` INT NOT NULL AUTO_INCREMENT ;

ALTER TABLE `mentos`.`member` 
CHANGE COLUMN `memberId` `memberId` INT NOT NULL AUTO_INCREMENT ;

ALTER TABLE `mentos`.`mentoring` 
CHANGE COLUMN `mentoringId` `mentoringId` INT NOT NULL AUTO_INCREMENT ;

ALTER TABLE `mentos`.`post` 
CHANGE COLUMN `postId` `postId` INT NOT NULL AUTO_INCREMENT ;

ALTER TABLE `mentos`.`report` 
CHANGE COLUMN `reportId` `reportId` INT NOT NULL AUTO_INCREMENT ;

ALTER TABLE `mentos`.`review` 
CHANGE COLUMN `reviewId` `reviewId` INT NOT NULL AUTO_INCREMENT ;