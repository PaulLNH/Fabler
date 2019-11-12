###Schema

CREATE DATABASE fabler_db;
USE fabler_db;

CREATE TABLE users
(
  user_id INT NOT NULL
  AUTO_INCREMENT PRIMARY KEY,
	user_name VARCHAR
  (255) NOT NULL,
	user_email VARCHAR
  (255) NOT NULL,
	user_password VARCHAR
  (255) NOT NULL
);

CREATE TABLE games
(
    game_id INT NOT NULL
    AUTO_INCREMENT PRIMARY KEY,
	game_author VARCHAR
    (255) NOT NULL,
	game_name VARCHAR
    (255) NOT NULL,
	game_subtitle VARCHAR
    (255) NOT NULL,
	game_description TEXT,
  game_version VARCHAR
    (255) NOT NULL,
  game_category VARCHAR
    (255) NOT NULL,
  game_published_date VARCHAR
    (255),
  game_public BOOLEAN NOT NULL
);

CREATE TABLE places
(
  place_id INT NOT NULL
      AUTO_INCREMENT PRIMARY KEY,
	place_name VARCHAR
      (255) NOT NULL,
	place_description TEXT,
  place_in_game INT NOT NULL, /* fk_game_id */
  place_exists BOOLEAN NOT NULL,
  
  FOREIGN KEY
      (product_in_game, game_id)
      REFERENCES games (game_id)
);
