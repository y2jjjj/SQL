SELECT a.first_name,a.last_name,b.province_name
FROM patients AS a
JOIN province_names AS b
ON a.province_id=b.province_id;
