-- 1
SELECT book_table.book_name FROM book_table WHERE book_table.book_issue_date BETWEEN "2008-08-21" AND "2008-08-29";

-- 2
SELECT 
    book_table.book_author,
    COUNT(book_table.book_author) AS count
FROM
    book_table
GROUP BY book_table.book_author
ORDER BY count DESC;

-- 3
SELECT 
    publisher
FROM
    (SELECT 
        book_table.book_author AS publisher,
            COUNT(book_table.book_publisher) AS count
    FROM
        book_table
    GROUP BY book_table.book_publisher
    ORDER BY count DESC
    LIMIT 1) publishers;

-- 4
SELECT COUNT(book_table.b_id) AS "Amount of Books" FROM book_table;

-- 5
SELECT COUNT(*) AS "Checked Out" FROM book_table WHERE book_table.st_id LIKE "CSB06001";

-- 6
UPDATE book_table SET book_author = 'ABC' WHERE (b_id = 'BK003');

-- 7
SELECT 
    st_name
FROM
    book_table,
    student_table
WHERE
    book_table.st_id = student_table.st_id
        AND book_table.book_name = 'Database System';
        
-- 8
SELECT department_table.dept_name, department_table.dept_total_books FROM department_table;

-- 9
SELECT book_table.book_name FROM book_table WHERE book_table.book_subject LIKE "%ora%";