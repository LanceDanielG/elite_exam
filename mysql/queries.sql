-- 1) Display total number of albums sold per artist TEST
SELECT COUNT(Artist) AS totalAlbums, Artist, Album, SUM(`2022 Sales`) AS peralbumsales FROM ref GROUP BY Artist, Album ORDER BY Artist
-- 1) Display total number of albums sold per artist 
SELECT Artist, Album, SUM(`2022 Sales`) AS peralbumsales FROM ref GROUP BY Artist, Album

-- 2) Display combined album sales per artist TEST
SELECT COUNT(Artist) AS totalAlbums, Artist, SUM(`2022 Sales`) AS combinedalbumsales FROM ref GROUP BY Artist ORDER BY Artist
-- 2) Display combined album sales per artist 
SELECT Artist, SUM(`2022 Sales`) AS combinedalbumsales FROM ref GROUP BY Artist

-- 3) Display the top 1 artist who sold most combined album sales TEST
SELECT COUNT(Artist) AS totalAlbums, Artist, SUM(`2022 Sales`) AS combinedalbumsales FROM ref GROUP BY Artist ORDER BY combinedalbumsales DESC LIMIT 1;
-- 3) Display the top 1 artist who sold most combined album sales
SELECT Artist, SUM(`2022 Sales`) AS combinedalbumsales FROM ref GROUP BY Artist ORDER BY combinedalbumsales DESC LIMIT 1;

-- 4) Display the top 10 albums per year based on their number of sales TEST
SELECT 
    totalAlbums,
    Artist,
    Album,
    peralbumsales,
    `Date Released`,
    refyear
FROM (
    SELECT 
        totalAlbums,
        Artist,
        Album,
        peralbumsales,
        `Date Released`,
        refyear,
        @rnk := IF(@prev_year = refyear, @rnk + 1, 1) AS rank,
        @prev_year := refyear AS dummy
    FROM (
        SELECT 
            COUNT(Artist) AS totalAlbums,
            Artist,
            Album,
            SUM(`2022 Sales`) AS peralbumsales,
            `Date Released`,
            YEAR(`Date Released`) AS refyear
        FROM 
            ref
        GROUP BY 
            Artist,
            Album,
            YEAR(`Date Released`)
        ORDER BY 
            YEAR(`Date Released`),
            SUM(`2022 Sales`) DESC
    ) ranked,
    (SELECT @rnk := 0, @prev_year := NULL) vars
) ranked_albums
WHERE 
    rank <= 10;
-- 4) Display the top 10 albums per year based on their number of sales
SELECT 
    Artist,
    Album,
    peralbumsales,
    `Date Released`,
    refyear
FROM (
    SELECT 
        totalAlbums,
        Artist,
        Album,
        peralbumsales,
        `Date Released`,
        refyear,
        @rnk := IF(@prev_year = refyear, @rnk + 1, 1) AS rank,
        @prev_year := refyear AS dummy
    FROM (
        SELECT 
            COUNT(Artist) AS totalAlbums,
            Artist,
            Album,
            SUM(`2022 Sales`) AS peralbumsales,
            `Date Released`,
            YEAR(`Date Released`) AS refyear
        FROM 
            ref
        GROUP BY 
            Artist,
            Album,
            YEAR(`Date Released`)
        ORDER BY 
            YEAR(`Date Released`),
            SUM(`2022 Sales`) DESC
    ) ranked,
    (SELECT @rnk := 0, @prev_year := NULL) vars
) ranked_albums
WHERE 
    rank <= 10;


-- 5) Display list of albums based on the searched artist TEST
SELECT COUNT(Artist) AS totalAlbums, Album FROM ref WHERE Artist LIKE '%SMTOWN%' GROUP BY Artist, Album;
-- 5) Display list of albums based on the searched artist
SELECT Album FROM ref WHERE Artist LIKE '%SMTOWN%' GROUP BY Artist, Album
	

	
	
