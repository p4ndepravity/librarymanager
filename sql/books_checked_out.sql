SELECT
  b.id,
  b.title
FROM
  books b
WHERE
  (SELECT
    t.transaction_type_id
  FROM
    transactions t
  WHERE
    t.book_id = b.id
  ORDER BY
    t.id DESC
  LIMIT 1) = 1;