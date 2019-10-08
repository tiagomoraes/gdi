create or replace function inc
(qvendas number)
return number is
qinc number;
begin
    qinc := qvendas + 1;
    return qinc;
end inc;
