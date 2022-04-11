<a name="top"></a>

---
<h1 align="center">Network Başlangıç Temelleri</h1>

Bu dosyada ağ temellerimizi atacağız :)
<p>&nbsp;</p>

## Ağ nedir
Ağ kısaca iki ve ikiden fazla cihazın kurallar içerisinde iletişim kurabilen cihazların oluşturduğu yapıdır.
- Özellikleri: Cihazların birbirleri ile Dosya paylaşımı yapmasına, donanım paylaşımı yapmasına Kısaca paylaşım yapmasına olanak sağlar.

<p>&nbsp;</p><p>&nbsp;</p>




## Domain Hosting SubDomain ve Bazı Terimler
### Domain
Domain kısaca alan adıdır her site aslında bir IP e sahiptir fakat bunları hatırlamak zordur bunun için site sahipleri alan adı almaktadır mesela github.com bu bir alan adıdır
<br>
### Hosting
Kısaca barındırma hizmetidir sitemizde yayınlanacak sayfaları, gerekli dosyaları, fotoğrafları vb.. orda barındırırız. Kullanıcı bilgisayarı ile arasındaki fark sitemizin erişebilir olması için sürekli açık bir bilgisayara ihtiyacımızın olması işte tam da burda hosting sunucular devreye girer. Eğer normal bir bilgisayara kurmuş olsaydık bu bilgisayarı kapattığımız zaman sitemizdeki içerikler erişebilir olmayacaktı.
<br>
### SubDomain
SubDomain'i, ana domainin kardeşi olarak düşünebiliriz, örneğin bir sitemiz var site.com alan adında, örneğin biz güvenlik hizmeti veren firmayız ve müşterilerin destek alması için yeni bir alan adı açmak istiyoruz fakat bu mantıksız bir hareket, tam da bu noktada SubDomain devreye girer ve alan adımıza bir SubDomain açarız yani; destek.site.com gibi işte bu destek kısmı SubDomaindir daha anlaşılır olması adına bazı gerçek örneklendirmeler vereceğim. mail.google.com, support.google.com, outlook.live.com gibi.
<br>
### NS(Name Server)

Alan adının sorgulanmasında kullanılan sunuculardır. Domainle IP adresi arasındaki bağlantıyı kuran sunuculardır, Name Server hizmet aldığınız hosting  firması tarafından domaininize(Alan adı) atanır.
- isimkayit.com/index.php/knowledgebase/166/NS-Name-Server-Nedir.html
- https://www.guzel.net.tr/blog/genel/nameserver-ns-nedir.html
- https://www.niobehosting.com/blog/nameserver-ns-nedir/
<p>&nbsp;</p><p>&nbsp;</p>
 

## Ağ donanımlarına giriş
### İnternet kartı(NIC)
Cihazların internete erişmelerini sağlar, IP ve MAC adres bilgilerini tutar.
<br>
### Switch
Birçok cihazın ağa bağlanmasını sağlar, kendi aralarında haberleşmelerine olanak sağlar. OSI katman modelinde ikinci katman olan Veri İletim(Data link) katmanında çalışır yeni dağıtıcılarda OSI 3.Katman olan Ağ(Network) Katmanında da çalışabilir.

### Bridge(Köprü)
İki bilgisayar ağını birbirine bağlayan ağ aygıtıdır.
[Köprü ve köprüleme hakkında güzel yazılmış bir kaynak](https://en.wikipedia.org/wiki/Network_bridge)
<br>

### Hub(Göbek)
Görevi sinyalleri güçlendirip kabloya iletmektir.
[Burda da detaylı ve güzel bir kaynak var bir bakın derim](https://networkgiller.wordpress.com/hub/)
<br>

### Modem
Bu aygıtlardan belkide en aşina olduğumuz aygıt modemdir, cihazları tek bir ağa bağlar ve o cihazların kablolu veya kablosuz olarak internete erişmesinden sorumludur. Ağ olarak LAN kullanır. belirli bir admin paneli vardır ve genelde `192.168.1.1` ile erişilir, admin paneline erişmek için modemin LAN ağında bulunmanız gerekmektedir.
<br>

### Firewall
Ağ(Network) Paketlerinin içeriğini okur ve bir tehlike içeriyorsa bloklar. Erişim izinlerini denetlemeden de sorumludur. İki türe ayrılır, Donanımsal Firewall Yazılımsal Firewall(Güvenlik duvarı gibi)
<p>&nbsp;</p><p>&nbsp;</p>


## Temel Network bilgisi
### LAN(Local Area Network)
Sınırlı alandaki internete bağlanan cihazları birbirine bağlayan ağdır yani evimizde Bilgisayar, Telefon gibi cihazları tek bir modeme bağladığımız zaman bu LAN ağı olur.
`IP Örneği: 192.168.1.1`
Modem bunu HOST ID(Birazdan geçiceğiz :)) Numarasını atar. Yani Bilgisayarımız 192.168.1.2 de ise Telefonumuza 192.168.1.3 verir.
<br>

### MAN(Metropolitan Area Network)
Bir şehir veya büyük bir yerleşkede bulunan ağdır. LAN(Local Area Network) ler arasındaki bağlantıyı kurar. İnternet ve WAN için bağlantı hizmetleri sunar.
<br>

### WAN(Wide Area Network)
Dünya çapındaki cihazların birbirine bağlanmasını sağlayan ağdır.
Wide Area Network IP'nizi internette "what's my ip" yazarak öğrenebilirsiniz :)
<br>
### DNS
Bilgisayar tarayıcıya girdiğimiz hiçbirşeyi anlamaz bunu anlamaz burda DNS devreye girer ve Bilgisayara adresi verir, her sitenin bir IP Karşılığı vardır örneğin www.google.com arattığımız zaman bilgisayar onu anlamaz burada devreye DNS girer ve google.com a ait IP yi bilgisayara tanıtır.
Örnek vermek gerekirse araba bilgisayar nagivasyonuda DNS sunucusu olarak örneklendirebiliriz.
<br>
### OSI Katman modeli
Cihazların birbirleri ile nasıl iletişim kuracaklarını tanımlar. 7 Katmandan oluşur. Bunlar L-1 Physical(Fiber, Wirelees vb..), L-2 Data Link(Ethernet, Switch vb..), L-3Network(IP,ICMP), L-4 Transport(TCP, UDP), L-5 Session(API,Sockets) L-6 Presentation(SSL,SSH,FTP vb..) L-7 Application(HTTP, FTP, IRC, DNS[SSH])
Bu makalelerde de güzel anlatılmış.
https://bidb.itu.edu.tr/seyir-defteri/blog/2013/09/07/osi-katmanlar%C4%B1 - 
https://medium.com/bili%C5%9Fim-hareketi/osi-modeli-ve-7-katman-7c3bb467798c#:~:text=OSI%20modeli%20(Open%20System%20Interconnection,International%20Organization%20for%20Standardization)%20geli%C5%9Ftirmi%C5%9Ftir.
<br>
### Port
Kısaca anlatmak gerekirse her uygulama belirli bir portdan sunulur. Bilgisayarda 65536 Port vardır, Burda bazı port numaraları listelenmiş göz aşinalığı olması iyi olur. https://www.f1teknoloji.com.tr/tcp-udp-port-listesi/ - https://tr.wikipedia.org/wiki/TCP_ve_UDP_ba%C4%9Flant%C4%B1_noktas%C4%B1_numaralar%C4%B1_listesi - https://www.sistemim.com/donan%C4%B1m-makaleleri/116-hangi-port-ne-ise-yarar

Burda da güzel bir kaynak var -> https://forum.donanimhaber.com/bilgisayardaki-baglanti-portlari-ve-gorevleri--31333235
<br>
### TCP/IP Paketleri
- Ağdaki en küçük yapılardır
- Kaynak hedef gibi bilgiler içerir
- Çıkarken her katmanda yeni bir bilgi eklenir
- Enkapsülasyon: Bilgi ekleme işlemine denir
- Deenkapsülasyon: Bilgi çıkarma işlemine denir
<p>&nbsp;</p><p>&nbsp;</p>

## İletim
### Unicast
Cihazdan cihaza yapılan iletim türü
<br>
### Multicast
Cihazdan belli cihazlara yapılan iletim
<br>
### Broadcast
Cihazdan Ağdaki tüm cihazlara yapılan iletim türü
<p>&nbsp;</p><p>&nbsp;</p>



## Network ID Host ID ve IP Sınıfları
### Network ID
Evlerimizde kullandığımız IP nin ilk üç kısmı Network IP olarak adlandırılır
<br>
### Host ID
Evlerimizde kullandığımız IP nin son kısmı Host ID olarak adlandırılır.

Burda da güzel bir makale var -> https://www.ugureskici.com/notlarim-makalelerim/ip-sinif-araliklari
<p>&nbsp;</p><p>&nbsp;</p>


## Ağ servislerinden bazıları
### DHCP
Ağınızda olan bir network ile çalışan cihazlara otomatik IP ataması ve DNS ataması yapar. Ağa misafir biri geldiğinde ona otomatik olarak 8 günlüğüne yetki verir. Default olarak 8 gündür fakat bu süre artırıp azaltılabilir.

### NAT

Kısaca cihazlar internete bağlanmak için public IP adresine ihtiyaç duyarlar fakat Public IP adresleri sayıyla sınırlıdır(3.3 Milyar IPv4 IP Adresi) Günümüzde telefonlarımızdan tutun yiyeceklerimizi saklayan buzdolaplarının bazıları bile internete erişebilirken bu sayı gerçekten de çok az. Bu yüzden hizmet sağlayıcılar bir aboneye tek bir Public IP adresi atarlar. Bu yüzden tek bir cihaz yerine bir çok cihaz aynı Public IP adresini kullanabilmesi için NAT kullanılır iç ağda(LAN) her cihaza yeni bir IP verilir fakat bu durum sadece iç ağda geçerlidir. WAN(Wide Area Network) de ise tek bir Public IP kullanılır.
<br>

Bu kaynaklarda da güzel anlatılmış;
<br>

- https://turk.net/blog/internet-hizi/nat-nedir/
- https://medium.com/@gokhansengun/nat-network-address-translation-nedir-ve-nas%C4%B1l-%C3%A7al%C4%B1%C5%9F%C4%B1r-a2c8b6291de8

### Dur kardeşim geçme, şu kaynaklara da bak:
- --> https://www.firatboyan.com/ip-ve-subnetting-kavrami.aspx 
- --> http://yusufgokkaya.com/en/active-directory-nedir/
- --> https://volkandemirci.org/2020/05/04/privileged-access-workstations-kurulumu-ve-yapilandirilmasi-1/
- --> https://www.geeksforgeeks.org/basics-computer-networking/
- --> https://youtu.be/EWGT46sbNPo
- --> https://youtu.be/pDn2u65rQbQ
- -->https://youtu.be/BS9bDl6fh5c
- -->https://www.geeksforgeeks.org/socket-programming-python/
- -->https://bilisimokulu.net/yazili-ders-notu/ag-temelleri-7bolum-kablo-cesitleri.html














