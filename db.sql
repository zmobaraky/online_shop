CREATE Database IF NOT EXISTS `online_shop` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `online_shop` ;

-- -----------------------------------------------------
-- Table `online_shop`.`products`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `online_shop`.`products` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `price` decimal NULL,
  `gross` decimal NULL,
  `image` VARCHAR(255) NULL,
  `color` VARCHAR(255) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;
-- -----------------------------------------------------
-- Table `online_shop`.`basket`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `online_shop`.`basket` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `p_id` INT NOT NULL,
  `u_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_basket_products`
    FOREIGN KEY (`p_id`)
    REFERENCES `online_shop`.`products` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
-- -----------------------------------------------------
-- Data for table `online_shop`.`products`
-- -----------------------------------------------------
START TRANSACTION;
USE `online_shop`;
INSERT INTO `online_shop`.`products` (`name`, `price`, `gross`, `image`, `color`) VALUES ('Shirt1', '94', '95','Shirt1.jpg','white');
INSERT INTO `online_shop`.`products` (`name`, `price`, `gross`, `image`, `color`) VALUES ('Hat1', '30', '32','Hat1.jpg','red');
INSERT INTO `online_shop`.`products` (`name`, `price`, `gross`, `image`, `color`) VALUES ('T-Shirt1', '94', '95','T-Shirt1.jpg','green');
INSERT INTO `online_shop`.`products` (`name`, `price`, `gross`, `image`, `color`) VALUES ('Shoes1', '130', '140','Shoes1.jpg','blue');
INSERT INTO `online_shop`.`products` (`name`, `price`, `gross`, `image`, `color`) VALUES ('Shirt2', '94', '95','Shirt2.jpg','red');
INSERT INTO `online_shop`.`products` (`name`, `price`, `gross`, `image`, `color`) VALUES ('Hat2', '20', '22','Hat2.jpg','blue');
INSERT INTO `online_shop`.`products` (`name`, `price`, `gross`, `image`, `color`) VALUES ('T-Shirt2', '54', '58','T-Shirt2.jpg','blue');
INSERT INTO `online_shop`.`products` (`name`, `price`, `gross`, `image`, `color`) VALUES ('Shoes2', '90', '90','Shoes2.jpg','red');
INSERT INTO `online_shop`.`products` (`name`, `price`, `gross`, `image`, `color`) VALUES ('Shirt3', '94', '94','Shirt2.jpg','green');
INSERT INTO `online_shop`.`products` (`name`, `price`, `gross`, `image`, `color`) VALUES ('Shoes3', '120', '120','Shoes3.jpg','black');
INSERT INTO `online_shop`.`products` (`name`, `price`, `gross`, `image`, `color`) VALUES ('Shirt4', '94', '98','Shirt4.jpg','red');
INSERT INTO `online_shop`.`products` (`name`, `price`, `gross`, `image`, `color`) VALUES ('Hat4', '30', '35','Hat4.jpg','yellow');
INSERT INTO `online_shop`.`products` (`name`, `price`, `gross`, `image`, `color`) VALUES ('T-Shirt4', '94', '94','T-Shirt4.jpg','green');
INSERT INTO `online_shop`.`products` (`name`, `price`, `gross`, `image`, `color`) VALUES ('Shoes4', '130', '94','Shoes4.jpg','yellow');
INSERT INTO `online_shop`.`products` (`name`, `price`, `gross`, `image`, `color`) VALUES ('Shirt5', '94', '100','Shirt5.jpg','red');
INSERT INTO `online_shop`.`products` (`name`, `price`, `gross`, `image`, `color`) VALUES ('Hat5', '20', '30','Hat5.jpg','blue');
INSERT INTO `online_shop`.`products` (`name`, `price`, `gross`, `image`, `color`) VALUES ('T-Shirt5', '54', '64','T-Shirt5.jpg','yellow');
INSERT INTO `online_shop`.`products` (`name`, `price`, `gross`, `image`, `color`) VALUES ('Shoes5', '90', '94','Shoes5.jpg','red');
INSERT INTO `online_shop`.`products` (`name`, `price`, `gross`, `image`, `color`) VALUES ('Shirt6', '94', '99','Shirt6.jpg','green');
INSERT INTO `online_shop`.`products` (`name`, `price`, `gross`, `image`, `color`) VALUES ('Shoes6', '120', '100','Shoes6.jpg','yellow');

COMMIT;


