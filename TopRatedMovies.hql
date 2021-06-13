CREATE VIEW IF NOT EXISTS topMovieIDs  AS
SELECT movieID, AVG(rating) AS averageRating, COUNT(movieID) AS ratingCount
FROM ratings
GROUP BY movieID
HAVING COUNT(movieID) > 10
ORDER BY averageRating DESC;

SELECT n.title, t.averageRating
FROM topMovieIDs t JOIN names n ON t.movieID = n.movieID;