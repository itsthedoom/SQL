/* Pull these extensions and provide how many of each website type exist in the accounts table. */
SELECT RIGHT(website, 3) AS domain, COUNT(*) num_companies
FROM accounts
GROUP BY 1
GROUP BY 2 DESC;

/*  pull the first letter of each company name to see the distribution of company names that begin with each letter (or number) */
SELECT LEFT (UPPER(name), 1) AS first_letter, COUNT(*) num_companies
FROM accounts
GROUP BY 1
ORDER BY 2 DESC;

/* Use the accounts table to create first and last name columns that hold the first and last names for the primary_poc. */
SELECT LEFT(primary_poc, STRPOS(primary_poc, ' ') -1 ) first_name,
RIGHT(primary_poc, LENGTH(primary_poc) - STRPOS(primary_poc, ' ')) last_name
FROM accounts;



/* Do the same thing for every rep name in the sales_reps table. Again provide first and last name columns */
SELECT LEFT(name, STRPOS(name, ' ') -1 ) first_name,
       RIGHT(name, LENGTH(name) - STRPOS(name, ' ')) last_name
FROM sales_reps;
