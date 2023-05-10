

/*
The SPOOL command in Oracle SQL Developer supports several parameters that can be used to change the format of the query output. Here are some of the commonly used parameters:

SET HEADING OFF: This parameter can be used to turn off column headings in the output.

SET LINESIZE n: This parameter can be used to set the maximum width of the output lines to "n" characters. If a line exceeds this width, it will wrap to the next line.

SET PAGESIZE n: This parameter can be used to set the number of lines per page to "n". If the output exceeds the specified number of lines, it will be split across multiple pages.

SET TRIMSPOOL ON: This parameter can be used to remove any leading or trailing spaces from each line in the output.

SET TERMOUT OFF: This parameter can be used to turn off screen output while spooling.

Here is an example of how you can use these parameters with the SPOOL command to change the format of the query output:
*/

SET HEADING OFF
SET LINESIZE 1000
SET PAGESIZE 0
SET TRIMSPOOL ON
SET TERMOUT OFF

SPOOL C:\Users\YourUserName\Desktop\myoutput1.txt

SELECT column1 || '|' || column2 || '|' || column3 AS output
FROM table_name1;

SPOOL OFF

SPOOL C:\Users\YourUserName\Desktop\myoutput2.txt

SELECT column4 || '|' || column5 || '|' || column6 AS output
FROM table_name2;

SPOOL OFF

SPOOL C:\Users\YourUserName\Desktop\myoutput3.txt

SELECT column7 || '|' || column8 || '|' || column9 AS output
FROM table_name3;

SPOOL OFF


--Once you have saved this script with a .sql extension, you can run it in SQL*Plus or any other Oracle SQL client by using the "@" command followed by the file path of the script. For example:
@C:\Users\YourUserName\Desktop\myscript.sql
