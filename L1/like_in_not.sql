-----------------------
#LIKE

SELECT name
FROM accounts
WHERE name LIKE 'C%';


SELECT name
FROM accounts
WHERE name LIKE '%one%';

SELECT name
FROM accounts
WHERE name LIKE '%s';

----------------
#IN

SELECT name, primary_poc, sales_rep_id
FROM accounts
WHERE name IN ('Walmart', 'Target', 'Nordstrom');

--------------------
#NOT IN 

SELECT name, primary_poc, sales_rep_id
FROM accounts
WHERE name NOT IN ('Walmart', 'Target', 'Nordstrom');

--------------------
#NOT LIKE

SELECT name
FROM accounts
WHERE name NOT LIKE 'C%';