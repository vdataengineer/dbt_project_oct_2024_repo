WITH KohliRunsCTE AS (
    SELECT 
        PlayerID,
        PlayerName,
        SUM(Runs) AS TotalRuns,
        COUNT(MatchDate) AS MatchesPlayed
    FROM 
      DEMO_DB.DEMO_SCH.CRICKETMATCHES
    WHERE 
        PlayerName = 'Virat Kohli'  -- Hard-coded player name
    GROUP BY 
        PlayerID, PlayerName
)
SELECT 
    k.PlayerName,
    k.TotalRuns,
    k.MatchesPlayed,
    CASE 
        WHEN k.TotalRuns > 200 THEN 'Star Player'
        ELSE 'Average Performance'
    END AS PerformanceRating
FROM 
    KohliRunsCTE k

















