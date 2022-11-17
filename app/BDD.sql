CREATE TABLE IF NOT EXISTS `users` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `name` VARCHAR(20) NOT NULL UNIQUE,
  `email` VARCHAR(60) NOT NULL UNIQUE,
  `description` TEXT,
  `password` VARCHAR(256) NOT NULL,
  `picture` VARCHAR(75),
  `role` INT(1),
)ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `article` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `author` INTEGER NOT NULL,
  `title` VARCHAR(80) NOT NULL,
  `content` TEXT NOT NULL,
  `published_at` DATETIME NOT NULL,
  `updated_at` DATETIME,
  `illustration` VARCHAR(75),
  `notation` INT NOT NULL

  FOREIGN KEY(author) REFERENCES users(id)
)ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `article_category` (
  `article_id` INTEGER,
  `category_id` INTEGER,
  PRIMARY KEY(article_id, category_id)
)ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `category` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `name` VARCHAR(30) NOT NULL UNIQUE
)ENGINE = InnoDB;