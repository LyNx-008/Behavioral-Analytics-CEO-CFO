SELECT*FROM EARNINGS_CALL_analysis;
DELETE from EARNINGS_CALL_analysis where total_pause_time is null
--Find Average Hesitation by Topic
SELECT 
  question_topic,
  ROUND(AVG(total_pause_time), 2) AS avg_pause_time,
  ROUND(AVG(filler_words_count), 2) AS avg_filler_count
FROM EARNINGS_CALL_analysis
WHERE question_topic IS NOT NULL
GROUP BY question_topic
ORDER BY avg_pause_time DESC;

--Identify High-Stress Topics
SELECT 
  QUESTION_TOPIC,
  STRESS_LEVEL
FROM earnings_call_analysis
ORDER BY stress_level limit 2 ;