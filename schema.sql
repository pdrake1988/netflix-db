CREATE TABLE users
(
    user_id  VARCHAR(255) PRIMARY KEY NOT NULL,
    username VARCHAR(40)              NOT NULL UNIQUE,
    email    VARCHAR(150)             NOT NULL UNIQUE
);

CREATE TABLE actors
(
    id   INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE genres
(
    id    INT PRIMARY KEY AUTO_INCREMENT,
    genre VARCHAR(60) NOT NULL UNIQUE
);

CREATE TABLE tags
(
    id       INT PRIMARY KEY AUTO_INCREMENT,
    genre_id INT         NOT NULL,
    tag      VARCHAR(80) NOT NULL UNIQUE
);

CREATE TABLE movies
(
    id           INT PRIMARY KEY AUTO_INCREMENT,
    title        VARCHAR(255) NOT NULL,
    description  TEXT         NOT NULL,
    genre_id     INT          NOT NULL,
    tag_id       INT          NOT NULL,
    release_year INT          NOT NULL,
    director     VARCHAR(255) NOT NULL,
    rating       INT          NOT NULL
);

CREATE TABLE movie_actors
(
    movie_id INT NOT NULL,
    actor_id INT NOT NULL,
    PRIMARY KEY (movie_id, actor_id),
    FOREIGN KEY (movie_id) REFERENCES movies (id),
    FOREIGN KEY (actor_id) REFERENCES actors (id)
);

CREATE TABLE tv_tags
(
    id       INT PRIMARY KEY AUTO_INCREMENT,
    genre_id INT         NOT NULL,
    tag      VARCHAR(80) NOT NULL UNIQUE,
    FOREIGN KEY (genre_id) REFERENCES genres (id)
);

CREATE TABLE tv_shows
(
    id           INT PRIMARY KEY AUTO_INCREMENT,
    title        VARCHAR(255) NOT NULL,
    genre_id     INT          NOT NULL,
    tag_id       INT          NOT NULL,
    release_year INT          NOT NULL,
    director     VARCHAR(255) NOT NULL,
    rating       INT          NOT NULL,
    description  TEXT         NOT NULL,
    FOREIGN KEY (genre_id) REFERENCES genres (id),
    FOREIGN KEY (tag_id) REFERENCES tv_tags (id)
);


CREATE TABLE tv_show_actors
(
    tv_show_id INT NOT NULL,
    actor_id   INT NOT NULL,
    PRIMARY KEY (tv_show_id, actor_id),
    FOREIGN KEY (tv_show_id) REFERENCES tv_shows (id),
    FOREIGN KEY (actor_id) REFERENCES actors (id)
);

CREATE TABLE seasons
(
    id            INT PRIMARY KEY AUTO_INCREMENT,
    tv_show_id    INT NOT NULL,
    season_number INT NOT NULL,
    FOREIGN KEY (tv_show_id) REFERENCES tv_shows (id)
);

CREATE TABLE episodes
(
    id             INT PRIMARY KEY AUTO_INCREMENT,
    season_id      INT          NOT NULL,
    episode_number INT          NOT NULL,
    title          VARCHAR(255) NOT NULL,
    description    TEXT         NOT NULL,
    FOREIGN KEY (season_id) REFERENCES seasons (id)
);

CREATE TABLE user_movies
(
    user_id  VARCHAR(255) NOT NULL,
    movie_id INT          NOT NULL,
    PRIMARY KEY (user_id, movie_id),
    FOREIGN KEY (user_id) REFERENCES users (user_id),
    FOREIGN KEY (movie_id) REFERENCES movies (id)
);

CREATE TABLE user_tv_shows
(
    user_id    VARCHAR(255) NOT NULL,
    tv_show_id INT          NOT NULL,
    PRIMARY KEY (user_id, tv_show_id),
    FOREIGN KEY (user_id) REFERENCES users (user_id),
    FOREIGN KEY (tv_show_id) REFERENCES tv_shows (id)
);
