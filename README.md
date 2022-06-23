# ASP.NET-VISUAL-BASIC-KUTUPHANE-SITESI
Projenin Adı: ASP .NET ile Kütüphane Sitesi
Projenin İçeriği:
Web programlama dersi yıl sonu ödevi kapsamında yapılmış olunan ASP .NET ile Kütüphane Sistemi Sitesinin içeriği ve proje amacı bu bölümde belirtilmiştir. 
“sefabookstore.com” isimli kütüphane  sitemizin genel tasarımı aşağıdaki görselde verilmiştir. 
1. WEBSİTE GENEL ÖZELLİKLERİ
ANASAYFA:
 
Şekil 1: sefabookstore.com site anasayfası
Yukarıda verilen resim üzerinde de görüleceği gibi site ana sayfasında bir üst banner, 5 adet menü, anasayfa ekranı, kitap ara, kitaplar, hakkımızda ve giriş menüsü bulunmaktadır. Bu sayfanın tasarımı yazılım dosyaları arasında index.aspx dosyası içerisinde yapılmıştır. 
 


Yukarıda verilen kod satırında ana sayfa masterpage ayarlamaları, banner ve ana sayfada bulunan resimlerin linkleri verilmiştir. 
ÜYE GİRİŞ İŞLEMLERİ:
 
Yukarıda verilen görselde ise Üye giriş işlemleri için gerekli olan Kullanıcı adı ve şifre isteme bölümlerinin kod satırları verilmiştir. Yukarıda verilen kod satırlarında da görüldüğü üzere metin kutuları içerisine yazılacak olan değerler ile giriş yapılabilmesi için gerekli kod satırları tanımlanmış ve sitenin genel görünümü için banner resimleri eklenmiştir. 
 
 
Örnek olarak kullanıcı doğru giriş yaptığında gözüken ekranın görüntüsü yukarıda verilmiştir.
 

 
 
Yukarıdaki kod satırlarında yeni üyelik işlemlerin gerçekleştirilmesi için gerekli olan komutlar yazıldıktan sonra eğer kullanıcı yeni bir üyelik açmak isterse kayıt ol sayfasına yönlendirmek amacıyla “Üye Ol” bölümü eklenmiştir.  Aşağıdaki kod bloğu “üyeol.aspx” aittir.Resimde kod bloğu gözükmediğinden kodları word dosyasında kod bloğu olarak gösterilmiştir.
Üye Ol Kod Bloğu:
1.	
240.	 
Üye Ol sekmesinin accsess veri tabanı ile bağlantılı olduğu kod bloğu aşğıdaki resimde gösterilmiştir.
 

ÜYE SİL
 
Yukarıdaki bölümde ise üyesil.aspx yani admin sayfasında site içindeki üyelerin bilgilerini güncelleme, silme ve ekleme bölümü bulunmaktadır.
 
Yukarıdaki bölümde ise “üyesil.aspx” sayfasının kod satırları bulunmaktadır.
ADMİN SAYFASI
 

Yukaridaki resimde admin sayfasının yetkileri gösterilmektedir. İki sayfaya yönlendirilmektedir.1. sayfa “kitapekle.aspx” ve son sayfa olarak “üyesil.aspx” sayfasına yönledirme yapmaktadır.
Admin sayfasının kod bloğu ise aşağıda resimde verilmeştir.
 

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

