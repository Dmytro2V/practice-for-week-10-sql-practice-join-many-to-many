-- Step 2
-- Just like with one-to-many relationships, you can filter one table by any
-- associated data on a conected table.
-- Your code here
.read seed-data.sql
SELECT musicians.first_name, last_name, instruments.type 
    FROM 
        musician_instruments JOIN musicians ON (musician_instruments.musician_id = musicians.id)
        JOIN  instruments ON (musician_instruments.instrument_id = instruments.id)
    WHERE type = 'piano'
;