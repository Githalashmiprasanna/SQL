--commit and rollback
--Commit is used for permanent changes. When we use Commit in any query then the change 
--made by that query will be permanent and visible. We can't Rollback after the Commit.

--syntax
--begin tran tranName--Command for operation--commit tran tranName--Rollback is used to undo the changes made by any command but only before a commit is done. --We can't Rollback data which has been committed in the database with the help of the commit keywordselect * from employeesbegin tran t1delete from employees where Emp_id=6commit tran t1begin tran t1delete from employees where Emp_id=5rollback tran t1