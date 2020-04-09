-- loai sp
declare @count int = 1;
declare @nhay int = 1;
while @count <= 30
begin
	if @count = 10
		set @nhay = 2;
	if @count = 20
		set @nhay = 3;
	insert LOAISP 
		Values('Cafe'+STR(@count),'/Resources/Image/'+Str(@count)+'.jpg','10',@nhay,'2019-3-2');
	set @count = @count + 1;
end
delete LOAISP
DBCC CHECKIDENT ('[LOAISP]', RESEED, 0)

-- san pham
declare @count1 int = 1;
declare @nhay1 int = 1;
while @count1 <= 30
begin
	insert SANPHAM 
		Values(20000,'/Resources/Image/'+Str(@count1)+'.jpg','10',100,@count);
	set @count = @count1 + ;
end
delete SANPHAM

--declare @count int = 1;
while @count <= 30
begin
	DECLARE @gia int;
	set @gia = @Count * 50000; 
	insert PRICE 
		Values(@gia,'2019-3-2','2019-12-2',@count);
	set @count = @count + 1;

end