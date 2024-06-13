-- Script that creates a view need_meeting that lists all students
-- that have a score < 80 and no last_meeting or more than 1 month.
CREATE VIEW need_meeting AS SELECT name from students WHERE score < 80
AND (last_meeting IS NULL OR last_meeting < DATE(CURDATE() - INTERVAL 1 MONTH));
