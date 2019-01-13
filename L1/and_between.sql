#AND and BETWEEN

SELECT *
FROM orders
WHERE standard_qty > 1000 AND poster_qty = 0 AND gloss_qty = 0;

------------------

SELECT name
FROM accounts
WHERE name NOT LIKE 'C%' AND name LIKE '%s';

-----------------

SELECT occurred_at, gloss_qty 
FROM orders
WHERE gloss_qty BETWEEN 24 AND 29;

=============================================
#OR

SELECT id
FROM orders
WHERE gloss_qty > 4000 OR poster_qty > 4000;

------------------------------

SELECT *
FROM orders
WHERE standard_qty = 0 AND (gloss_qty > 1000 OR poster_qty > 1000);

------------------------

SELECT *
FROM accounts
WHERE (name LIKE 'C%' OR name LIKE 'W%') 
           AND ((primary_poc LIKE '%ana%' OR primary_poc LIKE '%Ana%') 
           AND primary_poc NOT LIKE '%eana%');