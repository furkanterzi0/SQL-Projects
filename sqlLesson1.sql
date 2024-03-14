-- select * from shopapp.products
-- select Name from shopapp.products
-- select Name,Price from shopapp.products
-- select name as productName,Price as Fiyat from shopapp.products

-- ******************************************************

-- select * from shopapp.products where Id=1
-- select * from shopapp.products where Price=7000
-- select Name,Price from shopapp.products where Price > 3000
-- select Name,Price from shopapp.products where Price > 3000 and Price < 5000
-- select Id,Name,Price from shopapp.products where Price >= 2000 or Id > 2
-- select Name,Price from shopapp.products where Name != 'samsung s5'
-- select Name,Price from shopapp.products where NOT Name = 'samsung s5'
-- select Name,Price from shopapp.products where name='samsung s5' and Price > 2000
-- select Name,Price from shopapp.products where name='samsung s5' and (Price > 2000 or Price < 3600)

-- ****************************

-- select * from shopapp.products where Price Between 2000 and 4000
-- select * from shopapp.products where Id NOT Between 1 and 3

-- select * from shopapp.products where Category IN('telefon','bilgisayar')
-- select * from shopapp.products where Id NOT IN(1,2)

-- select * from shopapp.products where Name LIKE '%samsung%' -- yüzdeler basinda ve sonnunda herhangi bir karakter olabilir demek
-- select * from shopapp.products where Name LIKE 'samsung%'  -- sonda ne olduğu onemli değil ama samsung ile baslayacak
-- select * from shopapp.products where Name LIKE '_a%'  -- ikinci harfi a olanları getir
-- select * from shopapp.products where Name LIKE 'S_m%' and Price > 2000  -- 1 s 3 m olsun sonrası onemli değil
-- select * from shopapp.products where Description LIKE '%cift%' and Name LIKE '%samsung%'

-- *************** Order - Kayıt Sıralama
-- select * from shopapp.Products order by Name ASC -- alfabetik siralama ASC=ALFABETİK yazsanda olur yazmasanda
-- select * from shopapp.Products order by Name DESC -- alfabetik siralama DESC=ALFABETİK TAM TERSİ
-- select * from shopapp.Products order by Price DESC -- ASC = DEFAULT BUYUKTEN KUCUGE OLANIN TAM TERSİ
-- select * from shopapp.Products order by Category DESC,Price ASC

-- ******************* SQL FONKSİYONLARI(int)
-- select min(Price) as 'minimum fiyat' from shopapp.products
-- select max(Price) as 'maksimum fiyat' from shopapp.products
-- select Name,Price from shopapp.products order by Price limit 2 -- küçükten büyüge siraladim en üstekini aldım fakat bu management studio IDE'sinde limit 2 seklinde değil de top 2 sekline kullanılıyor (en üstteki 2 kayıdı getir)

-- select count(*) from shopapp.products
-- select count(Name) as adet from shopapp.products -- kac adet ürün var onu buluyo diyebiliriz

-- select avg(price) as ortalama from shopapp.products -- avg=avarage=ortalama sayisal degerlerinn ortalamasi
-- select sum(price) as toplam from shopapp.products -- sum=toplam sayisal degerlerinn toplamı
-- select sum(price * stock) as toplam from shopapp.products -- ürünün adet sayisiyla fiyati carptik toplam fiyati bulduk

-- ******************* SQL FONKSİYONLARI(string)

-- select length('Furkan Terzi') as karaktersayisi
-- select length(Name) as karakteruzunlugu ,Id from shopapp.products
-- select name, concat(left(Name,3),'....')  from shopapp.products -- left soldan kac karakter alacagini söyler concat=birlestirme
-- select right(name,2) from shopapp.products
-- select Name , upper(name) as upperName from shopapp.products -- lower da kücültür
-- select Name, replace(Name,' ','-') as replaceName from shopapp.products
-- select Name, trim(Name) from shopapp.products -- trim sagdan soldan bosluk varsa yok eder ltrim soldan rtrim sagdan bosluk siler

-- ****************** Group by - Distinct

-- select distinct(Category) from shopapp.products -- distinct cakma gruplama denebilir telefon categorisini 10 kere yazmıyo categori olarak telefon ve bilgisayar var diyo
-- select Category, Count(*) as adet from shopapp.products group by Category -- grupladık ve gruplanan her kategori icin count calisti
-- select Category, sum(Price) as toplam from shopapp.products group by Category -- grupladık ve gruplanan her kategori icin sum calisti
 -- select Category, avg(Price) as ortalamaFiyat from shopapp.products where Price > 2000 group by Category -- fiyati 2000den fazla olanlar icin ortalama al (kategori icindeki her eleman icin bakar)
-- select Category, Count(*) as adet from shopapp.products group by Category having Count(*) > 1 -- 'KATEGORİ İCİN FİLTRELE' ADETİ 1'DEN FAZLA OLANI GETİR (kategori icindeki elemanlar için degil)

-- ********************* INSERT
-- INSERT INTO shopapp.products (name,Price,Imageurl,Category,Description,stock) VALUES ('iphone xr',7800,'8.jpg','telefon','cift sim',10);
 
-- ********************* UPDATE
-- SET SQL_SAFE_UPDATES=0; -- where yazmadan update calistirmak icin yazilmali

-- UPDATE shopapp.products SET Price = Price + 100 -- where yazmadığım icin bütün fiyatlara 100 ekle (price=price * 1.5 yaparsam %50 zam yapar)

-- UPDATE shopapp.products SET ImageUrl='null.jpg' WHERE ImageUrl IS NULL -- imageurl null ise imageurl = noproduct.jpg yap
-- select*from shopapp.products

-- ********************* DELETE
-- DELETE from shopapp.products WHERE price <3000
-- DELETE from shopapp.products WHERE description IS NULL
select*from shopapp.products