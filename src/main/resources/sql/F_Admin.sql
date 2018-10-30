-- auto Generated on 2018-10-29 16:15:17 
-- DROP TABLE IF EXISTS `f__admin`; 
CREATE TABLE f__admin(
    `id` INTEGER(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id',
    `code` VARCHAR(50) NOT NULL DEFAULT '' COMMENT 'code',
    `username` VARCHAR(50) NOT NULL DEFAULT '' COMMENT 'username',
    `password` VARCHAR(50) NOT NULL DEFAULT '' COMMENT 'password',
    `name` VARCHAR(50) NOT NULL DEFAULT '' COMMENT 'name',
    `sex` INTEGER(12) NOT NULL DEFAULT -1 COMMENT 'sex',
    `age` INTEGER(12) NOT NULL DEFAULT -1 COMMENT 'age',
    `post` VARCHAR(50) NOT NULL DEFAULT '' COMMENT 'post',
    `qq` VARCHAR(50) NOT NULL DEFAULT '' COMMENT 'qq',
    `tel` VARCHAR(50) NOT NULL DEFAULT '' COMMENT 'tel',
    `email` VARCHAR(50) NOT NULL DEFAULT '' COMMENT 'email',
    `other` VARCHAR(50) NOT NULL DEFAULT '' COMMENT 'other',
    `role__id` INTEGER(12) NOT NULL DEFAULT -1 COMMENT 'role_Id',
    `state` INTEGER(12) NOT NULL DEFAULT -1 COMMENT 'state',
    `add__time` VARCHAR(50) NOT NULL DEFAULT '' COMMENT 'add_Time',
    `login__time` VARCHAR(50) NOT NULL DEFAULT '' COMMENT 'login_Time',
    `remark` VARCHAR(50) NOT NULL DEFAULT '' COMMENT 'remark',
    PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT 'f__admin';
