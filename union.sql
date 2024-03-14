select city from employees
union                                 -- tekrarlaayan degerleri getirmez
select city from customers

select city from employees
union all                             -- tekrarlaayan degerleri getirir
select city from customers