-- *******************************************
--   TIB/Adapter for ActiveDatabase
--     Demo SQL script 
-- *******************************************

-- Spool the output of sql commands to a log file
spool demo.log

-- *******************************************
-- Create test tables
-- *******************************************

-- Publication source table
CREATE TABLE ORDER_TABLE (
   ORDER_ID NUMBER PRIMARY KEY,
   ORDER_DESCRIPTION VARCHAR2(128),
   ORDER_PRICE NUMBER(10,3)
);

-- Create the destination table
CREATE TABLE SUB_ORDER (
   ORDER_ID NUMBER PRIMARY KEY,
   ORDER_DESCRIPTION VARCHAR2(128),
   ORDER_PRICE NUMBER(10,3)
);

/

insert into order_table values(142,'TESTING JDBC CONNECTION',3000);
insert into sub_order values(142,'DESTINATION RECORD',2000);

commit;