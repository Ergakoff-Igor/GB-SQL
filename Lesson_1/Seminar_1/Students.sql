USE seminar_1;

CREATE TABLE `teachers` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(30) NOT NULL,
  `post` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));
  
  CREATE TABLE `course` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(30) NOT NULL,
  `teacherName` VARCHAR(30) NOT NULL,
  `studentName` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));