Project Name: Library Site with ASP .NET<br>Content of the Project:<br>The content and project purpose of the ASP .NET and Library System Site, which was made within the scope of the web programming course year-end homework, are stated in this section. <br>The general design of our library site named “sefabookstore.com” is given in the image below.
1. WEBSITE GENERAL FEATURES
HOMEPAGE:

Figure 1: sefabookstore.com site homepage
As can be seen on the picture above, a top banner, 5 menus, homepage screen, search for books, books, about us and There is an input menu. The design of this page is made in the index.aspx file among the software files.

![image](https://user-images.githubusercontent.com/67556543/181379115-b166ccb4-290e-4ec6-b50e-c434bb0d263d.png)

 
MEMBER LOGIN PROCEDURES:

On the other hand, the code lines of the User name and password request sections required for member login procedures are given in the image above. As can be seen in the code lines given above, the required code lines have been defined for entering the values ​​to be written in the text boxes and banner images have been added for the general appearance of the site.

 ![image](https://user-images.githubusercontent.com/67556543/181379235-b3de96f5-77c3-44a6-9de9-db94b5d33659.png)
![image](https://user-images.githubusercontent.com/67556543/181379371-7df4b5fb-600e-4292-8771-635eeea05ad1.png)

 

 

MENÜLER:
KİTAP ARA:
 
Kitap Ara sekmesinin içeriği bulunmaktadır. Sitemizde 2 farklı arama kriteri bulunmaktadır. Bunlar; Kitap Türü ve Kitap Adı

  

Yukarıdaki resimde Kitap Ara sekmesinin kod bloğu gözükmetedir.
Access veri tabanında bulunan ürünler tablosundan verileri çekebilmek için kullanılan sql sorguları aşağıdaki resimde verilmiştir. 
 
KİTAPLAR :
 
Yukaridaki resimde kitaplar kısmında Tür seçiniz kısmında dropdown kullanılmıştır. Eklenen kitaplar Hikâye, Tarihi Roman ve Roman türünde aramalar mevctttur. Kitap türünü eklemek için kitapekle.aspx dosyasında yeni bir tür belirlediğinizde dropdown eventine otamatik eklenecektir.

 
Yukarındaki kod bloğunda ise dropdown liste görüntülenecek dosyaları SqlDataSource’dan aldığı satır gözükmektedir.
KİTAP EKLE:
 
Yukarıda verilen resimde kitapekle.aspx sayfasında Kitap Adı, Katagori, Çıkış Tarihi, Kitap Tipi, Resim ekleme, Konu ekleme olarak 7 adet bilgi satırı istenmektedir.
Eklenen kitaplar sql veritabanında kayıt edilmektedir.
 
Yukarıdaki resimde accsess veritabanı ile bağlantı kurduğu kod bloğu gösterilmiştir.
HAKKIMIZDA:
Web sitemizin ana menüsü üzerinde bulunan beşinci ve son sekmemiz “HAKKIMIZDA” sekmesidir. 
 

Yukarıdaki gösterilmiş olan resimde sitemiz hakkında bilgi verilmiştir.

 
İLETİŞİM:
 
Yukarıda verilen görselde tasarımı verilen iletişim bölümünün ana içeriği; Mesaj göndermek isteyen kişinin adı soyadı, Email adresi, Adresi, Konu ve iletmek istediği mesaj alanlarından oluşmaktadır. Bu form üzerinden kullanıcı site veya restoran hakkındaki şikâyet, istek ve önerilerini bildirebilecektir. Burada istenen bilgiler ve iletilmek istenen mesaj Access veri tabanında bulunan mesaj tablosuna kaydedilecektir. Mesaj tablosunun genel özellikleri ve veri tabanı özellikleri ikinci bölümde ayrıntılı olarak verilecektir. 
	


 

Yukarıda genel hatlarıyla verilen “iletişim.aspx” dosyasının komut satırlarında görüldüğü üzere Validation işlemleri yine büyük bir oranda kod bloklarımızda yer almaktadır. Gerekli kontrollerin yapılması için bolca kullanılan Validation komutları ile girilen değerler kontrol edildikten sonra Access veri tabanına eklenmiştir. 
Genel olarak ana sayfamızda yer alan menüler ve sekmelerin kod parçacıkları bu şekildedir. Şimdi verilecek olan ikinci bölümde Access veri tabanında bulunan tablolarımız ve özellikleri yer almaktadır. 
OYLAMA:
 
Yukarıda gösterilen resimde oy kullanılması için radiobutton ve button eventleri kullanılmıştır.
Kullanılan oy accesses veritabanına yollanarak kaydedilmektedir.
2. ACCESS VERİ TABANI GENEL ÖZELLİKLERİ
Yıl sonu ödevi olarak yapılan bu web sitesinde Access veri tabanı kullanılmıştır. Veritabanı, bilgileri toplamak ve düzenlemek için bir araçtır. Veritabanları kişiler, ürünler, siparişler veya başka herhangi bir şey hakkında bilgi depolar. Bu projede web sitemizde bulunan verileri kaydetmek ve listelemek amacıyla Access Veritaban programı kullanılmıştır.  Access sayesinde:
	Veri tabanına yeni bir veri girebilirsiniz; örneğin stoka yeni bir öğe ekleyebilirsiniz
	Veritabanındaki mevcut verileri düzenleyebilirsiniz; örneğin bir öğenin mevcut konumunu değiştirebilirsiniz.
	Bir öğenin satılması veya atılması durumunda bilgiyi silebilirsiniz
	Veriyi çeşitli yöntemlerle düzenleme ve görüntüleme
	Raporlar, e-posta iletileri, intranet veya İnternet üzerinden verileri başkalarıyla paylaşma
Yukarıda verilen özellikler göz önüne alındığında Access Veritabanı ile çalışmak hem kolay hem de oldukça kullanışlı olmuştur.
Bu projede bulunan Access Veritabanında toplamda 3 adet tablo bulunmaktadır. Bu tablolar sırasıyla; “uyeler”, “kitap” ve “oy” şeklindedir. Aşağıdaki görselde Access Veritabanı üzerinde bulunan tabloların listesi gösterilmiştir.
 
KİTAPLAR TABLOSU:
Bu tablolardan ilki sitemize üye olan kullanıcıların verilerinin tutulduğu tablo olan “Kitaplar” tablosudur. 
 
Kitapadi, katagori, tarih, konu, tip, resim, tur, yazaradi ve basimyili olmak üzere 8 farklı alandan oluşan tablomuzun genel görünümü yukarıdaki görselde verilmiştir. Kitaplar sekmesi üzerinden web sitesine kayıt olan kullanıcının gerekli alanlara girmiş olduğu veriler bu tablo üzerindeki 8 farklı alana otomatik olarak yerleştirilmiştir. Kitapekle.aspx, kitapara.aspx ve kitaplar.aspx bu veritabanını kullanmaktadır.


 
OYLAR TABLOSU:
 
Yukarıda gösterilen site içi oylama yapılmış olup bunların accesses veritabanında tutularak site puantaj sistemi yapılmıştır.
ÜYELER TABLOSU:
Yukarıdaki görselde ise kayıt ol menüsünün Veritabanı ile olan bağlantısı kod parçacıkları halinde gösterilmiştir. 
 
Access veritabanında bulunan bir diğer tablo ise üyelerin tutulduğu tablodur. Bu tablonun içeriğinde ise 8 adet alan bulunmaktadır. 
Ad, soyad, kul_adi, sifre, eposta, gizlisoru, gizlicevap ve yetki olmak üzere 8 adet alandan oluşan bu tablonun ekran görüntüsü yukarıda verilmiştir. Burada web sitesinde kayıt olan kullanıcılarn saklı tutulduğu kısımdır.Üyekle.aspx ve üyesil.aspx sayfaları bu tablodan beslenmektedir.
ÜyeOl.aspx Menüsünün Kod Bloğu:
 

ÜYESİL.ASPX SAYFASININ KOD BLOĞU:
 
Yukarıdaki görselde ise iletişim menüsünün Veritabanı ile olan bağlantısı kod parçacıkları halinde gösterilmiştir. 
Genel itibariyle asp .net ile oluşturulan projenin genel hatları bu şekildedir. Projede hazır css template kullanılmıştır. Projenin yapım aşamasında kullanılan validation, sql veritabanı bağlantısı, sql veritabanı sorgu işlemleri, web site tasarımı gibi birçok web programlama dersi konuları detaylı olarak incelenmiş ve üzerlerinde çalışılmıştır. Derste alınan teorik bilgi bu projede uygulamaya dökülmüş ve asp .net ile web programlama konusu temel düzeyde anlaılmıştır. 

