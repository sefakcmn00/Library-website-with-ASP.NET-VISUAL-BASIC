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
1.	<%@ Page Title="" Language="VB" MasterPageFile="~/anasayfa.master" AutoEventWireup="false" CodeFile="uyeol.aspx.vb" Inherits="uyeol" %>
2.	 
3.	<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
4.	    <style type="text/css">
5.	    .style3
6.	    {
7.	        width: 99px;
8.	        color: #FF0000;
9.	        font-weight: bold;
10.	    }
11.	    .style4
12.	    {
13.	        width: 74px;
14.	    }
15.	    .style5
16.	    {
17.	    }
18.	    .style6
19.	    {
20.	        width: 132px;
21.	    }
22.	    .style28
23.	    {
24.	        width: 99px;
25.	        color: #FF0000;
26.	        font-weight: bold;
27.	        height: 13px;
28.	    }
29.	    .style29
30.	    {
31.	        height: 13px;
32.	        width: 110px;
33.	    }
34.	    .style30
35.	    {
36.	        width: 110px;
37.	        height: 16px;
38.	    }
39.	    .style31
40.	    {
41.	        width: 99px;
42.	        color: #FF0000;
43.	        font-weight: bold;
44.	        height: 16px;
45.	    }
46.	    .style37
47.	    {
48.	        width: 161px;
49.	    }
50.	    .style40
51.	    {
52.	        width: 161px;
53.	        height: 13px;
54.	    }
55.	    .style41
56.	    {
57.	        height: 13px;
58.	    }
59.	    .style42
60.	    {
61.	        width: 110px;
62.	    }
63.	    .style43
64.	    {
65.	        width: 110px;
66.	        height: 64px;
67.	    }
68.	    .style44
69.	    {
70.	        width: 99px;
71.	        color: #FF0000;
72.	        font-weight: bold;
73.	        height: 64px;
74.	    }
75.	</style>
76.	</asp:Content>
77.	<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
78.	    <table style="width: 444px; height: 341px" >
79.	        <tr>
80.	            <td class="style29">
81.	                </td>
82.	            <td class="style1">
83.	                Ad</td>
84.	            <td class="style40">
85.	                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
86.	            </td>
87.	            <td class="style41">
88.	                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
89.	                    ControlToValidate="TextBox1" ErrorMessage="Ad kısmı boş.">*</asp:RequiredFieldValidator>
90.	            </td>
91.	        </tr>
92.	        <tr>
93.	            <td class="style42">
94.	                </td>
95.	            <td class="style1">
96.	                Soyad</td>
97.	            <td class="style37">
98.	                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
99.	            </td>
100.	            <td>
101.	                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
102.	                    ControlToValidate="TextBox2" ErrorMessage="Soyad boş .">*</asp:RequiredFieldValidator>
103.	            </td>
104.	        </tr>
105.	        <tr>
106.	            <td class="style42">
107.	                </td>
108.	            <td class="style1">
109.	                Kullanıcı Adı</td>
110.	            <td class="style37">
111.	                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
112.	            </td>
113.	            <td>
114.	                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
115.	                    ControlToValidate="TextBox3" ErrorMessage="Kullanıcı adı boş.">*</asp:RequiredFieldValidator>
116.	            </td>
117.	        </tr>
118.	        <tr>
119.	            <td class="style42">
120.	                </td>
121.	            <td class="style1">
122.	                Sifre : </td>
123.	            <td class="style37">
124.	                <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
125.	            </td>
126.	            <td>
127.	                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
128.	                    ControlToValidate="TextBox4" ErrorMessage="Şifre girin .">*</asp:RequiredFieldValidator>
129.	            </td>
130.	        </tr>
131.	        <tr>
132.	            <td class="style42">
133.	                </td>
134.	            <td class="style1">
135.	                Sifre Tekrar :</td>
136.	            <td class="style37">
137.	                <asp:TextBox ID="TextBox5" runat="server" Height="22px" TextMode="Password"></asp:TextBox>
138.	            </td>
139.	            <td>
140.	                <asp:CompareValidator ID="CompareValidator1" runat="server" 
141.	                    ControlToCompare="TextBox4" ControlToValidate="TextBox5" 
142.	                    ErrorMessage="Şifreler Uyuşmuyor">*</asp:CompareValidator>
143.	                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
144.	                    ControlToValidate="TextBox5" ErrorMessage="Boş Bırakmayınız">*</asp:RequiredFieldValidator>
145.	            </td>
146.	        </tr>
147.	        <tr>
148.	            <td class="style42">
149.	                </td>
150.	            <td class="style1">
151.	                E-Posta :</td>
152.	            <td class="style37">
153.	                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
154.	            </td>
155.	            <td>
156.	                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
157.	                    ControlToValidate="TextBox6" ErrorMessage="Lütfen geçerli bir mail giriniz." 
158.	                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
159.	                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
160.	                    ControlToValidate="TextBox6" ErrorMessage="Boş Bırakmayınız">*</asp:RequiredFieldValidator>
161.	            </td>
162.	        </tr>
163.	        <tr>
164.	            <td class="style42">
165.	                </td>
166.	            <td class="style1">
167.	                Birini Seçin :</td>
168.	            <td class="style37">
169.	                <asp:DropDownList ID="DropDownList1" runat="server">
170.	                </asp:DropDownList>
171.	            </td>
172.	            <td>
173.	                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
174.	                    ControlToValidate="DropDownList1" ErrorMessage="Gizli soru seçin.">*</asp:RequiredFieldValidator>
175.	            </td>
176.	        </tr>
177.	        <tr>
178.	            <td class="style42">
179.	                </td>
180.	            <td class="style1">
181.	                Cevap :</td>
182.	            <td class="style37">
183.	                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
184.	            </td>
185.	            <td>
186.	                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
187.	                    ControlToValidate="TextBox7" ErrorMessage="Cevap yazınız.">*</asp:RequiredFieldValidator>
188.	            </td>
189.	        </tr>
190.	        <tr>
191.	            <td class="style42">
192.	                </td>
193.	            <td class="style3">
194.	                </td>
195.	            <td class="style37">
196.	                <asp:Button ID="Button1" runat="server" Text="Kayıt" />
197.	                <asp:Button ID="Button2" runat="server" Text="İptal" />
198.	            </td>
199.	            <td>
200.	                </td>
201.	        </tr>
202.	        <tr>
203.	            <td class="style42">
204.	                </td>
205.	            <td class="style3">
206.	                </td>
207.	            <td colspan="2">
208.	                 <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
209.	            </td>
210.	        </tr>
211.	        <tr>
212.	            <td class="style30">
213.	                </td>
214.	            <td class="style31">
215.	                </td>
216.	            <td class="style5" colspan="2" rowspan="4">
217.	                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
218.	            </td>
219.	        </tr>
220.	        <tr>
221.	            <td class="style29">
222.	                </td>
223.	            <td class="style28">
224.	                </td>
225.	        </tr>
226.	        <tr>
227.	            <td class="style42">
228.	                </td>
229.	            <td class="style3">
230.	                </td>
231.	        </tr>
232.	        <tr>
233.	            <td class="style43">
234.	                </td>
235.	            <td class="style44">
236.	                </td>
237.	        </tr>
238.	    </table>
239.	</asp:Content>
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
Kod Bloğu:
  

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

Kod Bloğu:
 
İLETİŞİM:
 
Yukarıda verilen görselde tasarımı verilen iletişim bölümünün ana içeriği; Mesaj göndermek isteyen kişinin adı soyadı, Email adresi, Adresi, Konu ve iletmek istediği mesaj alanlarından oluşmaktadır. Bu form üzerinden kullanıcı site veya restoran hakkındaki şikâyet, istek ve önerilerini bildirebilecektir. Burada istenen bilgiler ve iletilmek istenen mesaj Access veri tabanında bulunan mesaj tablosuna kaydedilecektir. Mesaj tablosunun genel özellikleri ve veri tabanı özellikleri ikinci bölümde ayrıntılı olarak verilecektir. 
	

Kod Bloğu:
 

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
KitapEkle Kod Bloğu:
 

KitapAra Kod Bloğu:
 
Kitaplar Kod Bloğu:
 
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

