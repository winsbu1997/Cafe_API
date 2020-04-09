declare @number int = 1;
while @number <= 170
begin
	--insert into Product 
	--	values('acscd','a','adaafa',10000,'fsfffsf',100,'sfffsfsf',1,1,2,1,'12-1-2019');
	--delete from Product
	--insert Image
	--	values('~/Data/Client/Images/Phone/1.png',@number);
	--update Image
	--set Src = '/Data/Client/Images/Phone/1.png'
	--
	update Product set Name = 'dienthoai' + Str(@number) where ID = @number
	Set @number = @number + 1;
end

delete product
DBCC CHECKIDENT ('[Product]', RESEED, 0)