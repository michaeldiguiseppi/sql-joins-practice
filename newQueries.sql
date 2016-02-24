SELECT title, rating FROM movies ORDER BY rating LIMIT 50;

SELECT title FROM movies WHERE rating IS NULL ORDER BY title;

SELECT title FROM movies WHERE synopsis LIKE '%thrilling%' ORDER BY title;

SELECT title, year, rating FROM movies WHERE year >= 1980 AND year <= 1989 AND rating IS NOT NULL AND genre_id = 17 ORDER BY rating DESC;


SELECT actors.name, movies.title, movies.year
    FROM actors
        INNER JOIN cast_members
            ON actors.id = cast_members.actor_id
        INNER JOIN movies
            ON cast_members.movie_id = movies.id
    WHERE cast_members.character = 'James Bond'
    ORDER BY movies.year;


SELECT actors.name, movies.title, genres.name
    FROM cast_members
        INNER JOIN actors
            ON cast_members.actor_id = actors.id
        INNER JOIN movies
            ON cast_members.movie_id = movies.id
        INNER JOIN genres
            ON movies.genre_id = genres.id
    WHERE actors.name = 'Julianne Moore'
    ORDER BY genres.name, movies.title;



SELECT movies.title, movies.year, studios.name
    FROM movies
        INNER JOIN genres
            ON movies.genre_id = genres.id
        INNER JOIN studios
            ON movies.studio_id = studios.id
    WHERE genres.name = 'Horror'
    ORDER BY movies.year
    LIMIT 5;
