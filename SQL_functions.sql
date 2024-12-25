select  * from customers
--New change is made

--system functions ...min max......

-- user defined functions - accept zero or more  parameters 

-- scalar function - it returns single value

-- Table value functions - it returns table variable

--
---scalar function zero parameter
--alter function getCustomers()
--returns varchar(20)
--as
--begin

--return (select customername from  customers where customerid=1 )

--end


--print dbo.getCustomers()

-- scalar function with parameter
--create function getCustomerswihparam(@custid int)
--returns varchar(20)
--as
--begin

--return (select customername from  customers where  customerid=@custid)

--end


--print dbo.getCustomerswihparam(2)

--select dbo.getCustomerswihparam(2)



--table value function with zero parameter
--alter function getcustomerTVFwithZeroParam()
--returns table
--as 
--return (select customername,customerid from  customers )

--select * from  dbo.getcustomerTVFwithZeroParam()


--table value function with  parameters

--alter function getcustomerTVFwithParam(@custid int)
--returns table
--as 
--return (select customername as name,customerid as id from  customers where customerid=@custid)





--select name,id from  dbo.getcustomerTVFwithParam(1)






---sscalar function
CREATE FUNCTION CalculateCircleArea (@Radius FLOAT)RETURNS FLOATASBEGIN    DECLARE @Area FLOAT    SET @Area = PI() * POWER(@Radius, 2)    RETURN @AreaEND


select dbo.CalculateCircleArea(1.2)

--stored procedure--can insert update , delete(dML statements) etc. they may or may not return vlues
--fubnction -must return a value. it will not allow dml statements. only allow select statewment

--stored procedure can have input and output parameter but functions will allow only input parameter does not support output parameter

--exception handling(try and catch can be used in side a sp. but cannot be used inside a function

--sp can support transactions(roll back and commit ) but functions cannot do that

--sp can support temporary tables and table variables. but function can support only table variables

--we can call a function inside a sp.but a sp cannot be called inside a function













