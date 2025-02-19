declare
    user_id integer;
    quantity numeric(5);
    url varchar;
    myrow tablename%ROWTYPE;
    myfield tablename.columnname%TYPE;
    arow RECORD;
    quantity integer DEFAULT 32;
    url varchar := 'http://mysite.com';
    transaction_time CONSTANT timestamp with time zone := now();
    x integer := 1;
    y integer := x + 1;
begin
    null;
end;

BEGIN
    SELECT * INTO STRICT myrec FROM emp WHERE empname = myname;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RAISE EXCEPTION 'employee % not found', myname;
        WHEN TOO_MANY_ROWS THEN
            RAISE EXCEPTION 'employee % not unique', myname;
END;

BEGIN
    y := x / 0;
EXCEPTION
    WHEN division_by_zero THEN
        NULL;  -- ignore the error
END;

BEGIN
    y := x / 0;
EXCEPTION
    WHEN division_by_zero THEN  -- ignore the error
END;
