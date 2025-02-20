FOR i IN 1..10 LOOP
    null;
END LOOP;

FOR i IN REVERSE 10..1 LOOP
    null;
END LOOP;

FOR i IN REVERSE 10..1 BY 2 LOOP
    null;
END LOOP;

FOR mviews IN
    (SELECT n.nspname AS mv_schema,
            c.relname AS mv_name,
            pg_catalog.pg_get_userbyid(c.relowner) AS owner
        FROM pg_catalog.pg_class c
    LEFT JOIN pg_catalog.pg_namespace n ON (n.oid = c.relnamespace)
    WHERE c.relkind = 'm'
    ORDER BY 1)
LOOP
    null;
END LOOP;
