-- 1
SELECT 
    customer.customer_name,
    customer.customer_address,
    customer.customer_age,
    customer.customer_contactNumber,
    customer.customer_email
FROM
    customer,
    accounts
WHERE
    accounts.account_number = customer.customer_account
        AND accounts.account_type = 'savings';
        
-- 2
SELECT 
    customer.customer_name, customer.customer_address
FROM
    customer,
    accounts
WHERE
    accounts.account_number = customer.customer_account
        AND accounts.account_type = 'loan'
        AND accounts.account_balance > 50000;
        
-- 3
UPDATE customer SET customer_name = 'ABC' WHERE (customer_id = '1');

-- 4
SELECT 
    transaction_account
FROM
    (SELECT 
        T1.transaction_account, SUM(T1.transaction_amount) AS sum
    FROM
        transactions T1
    WHERE
        T1.action = 'deposit'
    GROUP BY T1.transaction_account) a
WHERE
    sum > 80000;

-- 5
SELECT COUNT(*) AS "Fixed Accounts" FROM accounts WHERE accounts.account_type="fixed";

-- 6
SELECT 
    customer.customer_name,
    customer.customer_address,
    customer.customer_age,
    customer.customer_contactNumber,
    customer.customer_email
FROM
    customer,
    accounts
WHERE
    accounts.account_number = customer.customer_account
        AND accounts.date_of_creation BETWEEN "2008-01-20" AND "2008-08-20";
        
-- 7
SELECT * FROM transactions WHERE transactions.transaction_date="28-Aug-08";

-- 8
SELECT 
    deposits AS 'Amount Deposited',
    withdrawals AS 'Amount Withdrawn'
FROM
    (SELECT 
        SUM(T1.transaction_amount) AS deposits
    FROM
        transactions T1
    WHERE
        T1.action = 'deposit'
            AND T1.transaction_date = '29-Aug-08') deposit,
    (SELECT 
        SUM(T1.transaction_amount) AS withdrawals
    FROM
        transactions T1
    WHERE
        T1.action = 'withdraw'
            AND T1.transaction_date = '29-Aug-08') withdraw;
            
	-- 9
SELECT 
    customer.customer_name,
    customer.customer_address,
    customer.customer_age,
    customer.customer_contactNumber,
    customer.customer_email
FROM
    customer,
    accounts
WHERE
    accounts.account_number = customer.customer_account
        AND accounts.account_type = 'loan';