SELECT 
users.id, 
users.country, 
users.gender, 
groups.device, 
groups.group, 
CASE WHEN SUM(activity.spent) > 0 THEN 1 ELSE 0 END AS converted, SUM( COALESCE(activity.spent, 0) ) AS total_spent 
FROM 
users 
LEFT JOIN activity 
ON users.id = activity.uid 
LEFT JOIN 
groups ON users.id = groups.uid 
GROUP BY 
users.id, 
users.country, 
users.gender, 
groups.device, 
groups.group;
