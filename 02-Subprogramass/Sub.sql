
SET SERVEROUTPUT ON;
CREATE OR REPLACE PROCEDURE PRO_DB_TESTE is
    in_stock NUMBER;
BEGIN
    DBMS_OUTPUT.PUT_LINE('There are ' || in_stock || ' items in stock.');
END;

