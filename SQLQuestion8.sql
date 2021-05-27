-- In descending order, list the frequency count of employee last names
-- i.e., how many employees share each last name.

SELECT last_name,
COUNT(last_name) AS "Last Name frequency"
FROM "Employees"
GROUP BY last_name 
ORDER BY "Last Name frequency" DESC;