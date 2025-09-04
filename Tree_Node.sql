# Write your MySQL query statement below
select id,
    Case
        when p_id is null then 'Root'
        when id in (select p_id from tree where p_id is not null group by p_id) then 'Inner'
        else 'Leaf'
    end as type
from tree
order by id;
