INSERT INTO genres (genre)
VALUES ('Action'),
       ('Comedy'),
       ('Drama'),
       ('Thriller'),
       ('Horror'),
       ('Sci-Fi'),
       ('Romance'),
       ('Documentary'),
       ('Animation'),
       ('Fantasy');

INSERT INTO movie_tags (genre_id, tag)
VALUES (1, 'Martial Arts'),
       (1, 'Espionage'),
       (1, 'Superhero'),
       (1, 'Heist'),
       (2, 'Slapstick'),
       (2, 'Romantic Comedy'),
       (2, 'Dark Comedy'),
       (2, 'Parody'),
       (3, 'Period Drama'),
       (3, 'Crime Drama'),
       (3, 'Family Drama'),
       (3, 'Legal Drama'),
       (4, 'Psychological Thriller'),
       (4, 'Crime Thriller'),
       (4, 'Mystery'),
       (4, 'Political Thriller'),
       (5, 'Slashers'),
       (5, 'Haunted House'),
       (5, 'Demons'),
       (5, 'Zombie'),
       (6, 'Space Opera'),
       (6, 'Cyberpunk'),
       (6, 'Time Travel'),
       (6, 'Dystopian');


SELECT *
FROM movie_tags;