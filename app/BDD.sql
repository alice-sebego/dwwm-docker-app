CREATE TABLE IF NOT EXISTS `users` (
  `id` INTEGER PRIMARY KEY AUTO_INCREMENT,
  `name` VARCHAR(35) NOT NULL UNIQUE,
  `email` VARCHAR(60) NOT NULL UNIQUE,
  `description` TEXT,
  `password` VARCHAR(256) NOT NULL,
  `picture` VARCHAR(75),
  `role` INT(1)
)ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `posts` (
  `id` INTEGER PRIMARY KEY AUTO_INCREMENT,
  `author` INTEGER NOT NULL,
  `title` VARCHAR(80) NOT NULL,
  `content` TEXT NOT NULL,
  `published_at` DATETIME NOT NULL,
  `updated_at` DATETIME,
  `illustration` VARCHAR(75),
  `notation` INT NOT NULL,
  FOREIGN KEY(author) REFERENCES users(id)
)ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `post_category` (
  `post_id` INTEGER,
  `category_id` INTEGER,
  PRIMARY KEY(post_id, category_id)
)ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `category` (
  `id` INTEGER PRIMARY KEY AUTO_INCREMENT,
  `name` VARCHAR(30) NOT NULL UNIQUE
)ENGINE = InnoDB;