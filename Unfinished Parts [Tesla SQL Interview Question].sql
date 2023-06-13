-- Tesla is investigating production bottlenecks and they need your help to extract the relevant data. Write a query that determines which parts with the assembly steps have initiated the assembly process but remain unfinished.

-- Assumptions:

-- parts_assembly table contains all parts currently in production, each at varying stages of the assembly process.
-- An unfinished part is one that lacks a finish_date.
-- This question is straightforward, so let's approach it with simplicity in both thinking and solution.

-- Effective April 11th 2023, the problem statement and assumptions were updated to enhance clarity.

-- parts_assembly Table
-- Column Name	Type
-- part	string
-- finish_date	datetime
-- assembly_step	integer

-- parts_assembly Example Input
-- part	finish_date	assembly_step
-- battery	01/22/2022 00:00:00	1
-- battery	02/22/2022 00:00:00	2
-- battery	03/22/2022 00:00:00	3
-- bumper	01/22/2022 00:00:00	1
-- bumper	02/22/2022 00:00:00	2
-- bumper		3
-- bumper		4

-- Example Output
-- part	assembly_step
-- bumper	3
-- bumper	4

-- Explanation
-- The bumpers in step 3 and 4 are the only item that remains unfinished as it lacks a recorded finish date.


-- Solution

SELECT    DISTINCT
          part
        , assembly_step

FROM      parts_assembly

WHERE     finish_date IS NULL
;
