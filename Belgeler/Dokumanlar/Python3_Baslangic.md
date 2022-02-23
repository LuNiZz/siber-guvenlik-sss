<a name="top"></a>

---
<h1 align="center">Python3 Başlangıç Rehberi</h1>

Bu dosyada başlangıç düzeyinde python3 öğreneceğiz.

- Dipnot: Python'da boşluklar ve "TAB"'lar çok önemlidir bir fazla veya bir eksik koymanız hatalara sebep olabilir.
- Dipnot: Kodlardaki ">>>" ve "..." işaretleri python shell'den temsilidir. 

---
<details> 
  <summary><strong>İçindekiler(Contents)</summary></strong>
  <p>

  - [Python'da yorumlar](#discussion)
  - [print()](#print)
  - [a="b"](#setvar)
  - [Bazı Kaçış dizileri](#escsequences)
  - [input()](#input)
  - [format](#format)
  - [f-string](#fstring)
  - [Bazı işleçler](#operators)
  - [Koşullar](#ifelifelse)

* [Döngüler](#loops)
  - [range()](#range)
  - [while](#while)
  - [for](#for)
  - [Hata kontrolü](#debugging)

* [Karakter dizilerinin metodları](#strmethods)
  - [replace()](#replace)
  - [split()](#split)
  - [lower(), upper()](#lowerupper)
  - [swapcase()](#swapcase)
  - [title()](#title)
  - [Değişken kontrolleri](#strchecks)
  - [lstrip(), strip(), rstrip()](#strips)
  - [ljust(), center(), rjust()](#justs)
  - [index(), find()](#indexfind)
  - [zfill()](#zfill)
  - [expandtabs()](#expandtabs) 

 - [Listeler](#list)
 - [Demetler](#tuple)
 - [Sözlükler](#dict)
 - [Temel dosya işlemleri](#basefileops)
 - [Fonksyionlar](#func)
 - [Sınıflar](#class)
 - [Modüller](#modules)
  </p>
</details>

---

# Basit kodlar ve açıklamaları:

## Python'da yorumlar <a name="discussion"></a>

Pythonda yorum satırı olarak yani koda etki etmeyecek yazılar eklenmek istediği zaman yorum kısmı tek satırsa veya bir satırın devamıysa "#", eğer birden fazla satır kullanacaksanız yorumun başına ve sonuna üç tane tırnak koymanız gerekiyor. '''çok satırlı yorum''' 
<p>&nbsp;</p>



## ([▲](#top)) print() <a name="print"></a>
Bu kod, içine yazılan kelimenin veya değişkenin çıktısını ekrana basar..
- r : Kaçış dizilerini geçersiz kılar
- f : f-string'lerde kullanılır. Örnek kullanım:
```python
>>> print("selam")
selam
>>> print(123)
123
>>> print(7.2)
7.2
>>> print(r"C:\Users\Can\newfile")
C:\Users\Can\newfile
>>>
```
<p>&nbsp;</p>



## ([▲](#top)) a = "b" <a name="setvar"></a>
Yukarıdaki gibi kullanım, bir değişken oluşturmamızı sağlar. Örnek kullanım:
```python
>>> yazi = "selam"                     # Bu bir stringtir, string (" ") veya (' ') veya (""" """) işaretleri içinde olan ve değişkenlere atanabilen bir değerdir. a = str() veya a = "" boş string oluşturur.
>>> sayi = 123                         # Bu bir integerdir, yani sayıdır. b = int() bize sıfır döndürecektir.
>>> noktali = 7.8                      # Bu bir floattır, yani ondalıklı sayıdır. Floatta virgül kullanamazsınız. c = float() bize 0.0 döndürecektir
>>> liste = ["a", 123, 7.8]            # Listenin içine her türden değişkeni ekleyebilirsiniz. Boş bir listeyi liste = list() veya liste = [] şeklinde açabilirsiniz.
>>> demet = ("ali", "veli")            # Demetlerin olayı belirli kelimeleri aynı liste gibi toplamasıdır. Listelerden farkı değer eklendikten sonra geri silinemez.
>>> sozluk = {"a" : "b", "c" : "d"}    # Sözlüklerin olayı bir anahtar(key) ve değer(value) ile çalışmasıdır. Boş bir sözlüğü sozluk = dict() veya sozluk = {} şeklinde açabilirsiniz.
>>> dogruluk = True                    # veya dogruluk = False, bunlar yerine False için dogruluk = 0 True için dogruluk = 1 yapabilirsiniz. False bir doğruluk değeri oluşturmak için dogruluk = bool() da kullanabilirsiniz.
>>>
>>> print(yazi)
selam
>>> print(sayi)
123
>>> print(noktali)
7.8
>>> print(liste)
["a", 123, 7.8]
>>> print(demet)
('ali', 'veli')
>>> print(sozluk)
{'a': 'b', 'c': 'd'}
>>>
```
<p>&nbsp;</p>




## ([▲](#top)) Bazı Kaçış Dizileri <a name="escsequences"></a>
- `\`  : Kendisinden sonraki karakteri geçersiz kılar.
- `\n` : Alt satıra geçiş
- `\t` : Sekme (Tab tuşu)
<p>&nbsp;</p>





## ([▲](#top)) input() <a name="input"></a>
Bu komut, kullanıcıdan bilgi toplamaya yarar. Örnek kullanım:
```python
>>> kullanıcıadı = input("Adın nedir?: ")
Adın nedir?: Can
>>> print("Merhaba", kullanıcıadı, "tanıştığıma memnun oldum.")
Merhaba Can tanıştığıma memnun oldum.
>>>
```
<p>&nbsp;</p>




## ([▲](#top)) format() <a name="format"></a>
Bu metot, belirli bir yazı içerisinde belirli noktalara belirli karakterler yerleştirmeye yarar. Örnek kullanım:
```python
>>> kladi = input("Adın nedir?: ")
Adın nedir?: Can
>>> print("Merhaba {}, tanıştığımıza memnun oldum.".format(kladi))
Merhaba Can, tanıştığımıza memnun oldum.
>>>
>>> sayı1 = 10
>>> sayı2 = 20
>>> print("{} ve {} sayılarının toplamı: {}".format(sayı1, sayı2, sayı1 + sayı2))
10 ve 20 sayılarının toplamı: 30
>>>
```
<p>&nbsp;</p>




## ([▲](#top)) f-String <a name="fstring"></a>
f-String metodu, tıpkı format metodunda olduğu gibi belirli noktalara  belirli karakterler yerleştirmeye yarar. Format'tan daha pratik görünen bir kullanımı vardır. Örnek Kullanım:
```python
>>> kladi = input("Adın nedir?: ")
Adın nedir?: Can
>>> print(f"Merhaba {kladi}, tanıştığımıza memnun oldum.")
Merhaba Can, tanıştığımıza memnun oldum.
>>>
```
<p>&nbsp;</p>




## ([▲](#top)) Bazı işleçler <a name="operators"></a>
- `+` | `-` | `*` | `/` : Toplama, çıkarma, çarpma, bölme
- `a**b` : a'nın b üssünü alma (2³ gibi)
- `a % b` : a'nın b ile bölümünden kalan sayı
- `//` : Kalansız bölme
- `+=` | `-=` | `*=` | `/=` : İstenilen işlemi yapar ve değişkene uygular
<p>&nbsp;</p>




## ([▲](#top)) Koşullar (if-elif-else) <a name="ifelifelse"></a>
if elif ve else kodları, belli bir durumları karşılayan durumlarda kod çalıştrımak için kullanılır. 
- Not: if elif ve else'dan sonraki satırlarda mutlaka "TAB" atılması gerekir.
- Not: if elif ve else'dan sonra : kullanılır.

Operatörler:
- `<` : Küçüktür.
- `>` : Büyüktür.
- `==` : Eşittir.
- `<=` : Küçük eşittir.
- `>=` : Büyük eşittir. Örnek kullanım:
- `and` : Koşulların hepsi sağlanırsa çalıştır
- `or` : Koşulların biri sağlanırsa çalıştır
```python
>>> sayi = int(input("Sayı girin: "))             # 15 girmiş olalım
>>> if sayi == 0:				  # Sayı sıfıra eşitse
...	print("Sayı sıfırdır.")         	  # Bunu yaz
... elif 0 < sayi and sayi < 20 :            	  # Eğer sayı 0'dan büyük "VE" 20'den küçükse
... 	print("Sayı 0 ile 20 arasında.") 	  # Bunu yaz
... elif -20 < sayi < 0 :			  # Eğer sayı 0'dan küçük "YA DA" -20'den büyükse
... 	print("Sayı -20 ile 0 arasında.") 	  # Bunu yaz
...
Sayı 0 ile 20 arasında.
>>>
```

<p>&nbsp;</p>




## ([▲](#top)) Döngüler <a name="loops"></a>
### range() fonksiyonu <a name="range"></a>
Range fonksiyonu, kendisine verilecek olan parametreler içinde sayı saymaya yarar. Örnek kullanım:
```python
>>> print(*range(0, 11, 2))    # 1'den 11'e kadar ikişer say.
0 2 4 6 8 10
>>>
```
<p>&nbsp;</p>



#### NOT
- pass deyimi : Pas geçmek.
- break deyimi : Döngüyü kırmak.
- continue deyimi: Devam etmek.
<p>&nbsp;</p>





### ([▲](#top)) While <a name="while"></a>
Bu metod, kendisine verilecek olan koşulun doğru olup olmamasına dikkat eden ve koşul doğru ise kendisine verilen komutun sürekli çalışmasını sağlar. (koşul ... olduğu sürece çalış)
- Not: while'dan sonraki satırlarda mutlaka "TAB" atılması gerekir.
- Not: while'dan sonra : kullanılır.
- Not: Kodun sürekli çalışmasını isterseniz True veya 1 koşulunu kullanabilirsiniz.
- Not: Döngüyü kırmak için CTRL+C kullanabilirsiniz.
```python
>>> while True:
... 	print("Merhaba")
...
[Sonsuz kez] Merhaba
>>>
>>> x = 101
>>> while 100 < x < 110:
... 	print("Merhaba")
... 	x += 1
...
[9 kere] Merhaba
>>>
```
<p>&nbsp;</p>




### ([▲](#top)) For <a name="for"></a>
Bu metod, kendisine verilecek olan çoklu değerleri tek tek kullanmaya yardım eder.
- Not: for'dan sonraki satırlarda mutlaka "TAB" atılması gerekir.
- Not: for'dan sonra : kullanılır.

```python
>>> for a in range(1, 10):
... 	print(f"{a}.kez merhaba!!!")
...
1.kez merhaba!!!
2.kez merhaba!!!
...
10.kez merhaba!!!
>>>
```
<p>&nbsp;</p>




### ([▲](#top)) Hata kontrolü (try-except-else-finally) <a name="debugging"></a>
- Not: try except else ve finally'den sonraki satırlarda mutlaka "TAB" atılması gerekir.
- Not: try except else ve finally'den sonra : kullanılır.
```
try: 	         # altımdaki kodu çalıştırmayı dene.
except:		 # eğer sorun çıkarsa altımdaki kodu çalıştır.
else:		 # eğer sorun çıkmazsa altımdaki kodu çalıştır
finally:	 # olsa da olmasa da beni çalıştır
```

```python
>>> while True:
...	try:
...		s1 = int(input("İlk sayıyı girin: "))	
...		s2 = int(input("İkinci sayıyı girin: "))
...	except ValueError:
...		print("Sayı girmediğiniz için işlem yapamıyorum :(")
...	else:
...		print(f"{s1} ve {s2} sayılarının toplamı {s1+s2} yapar.")
...	finally:
...		print("Başka yapmak istediğiniz işlem var mı?")
...		print("Yoksa CTRL+C'ye basarak beni kapatabilirsiniz.")
```

<p>&nbsp;</p>




## Karakter dizilerinin metodları <a name="strmethods"></a>
### ([▲](#top)) replace() <a name="replace"></a>
replace metodu, kendisine verilecek parametreler ile belirli bir değişken değerini değiştirmeye yarar. Örnek kullanım:
```python
>>> deger = "Beyaz Şapkalı Tornacı"
>>> deger.replace("Şapkalı", "Takkeli")
'Beyaz Takkeli Tornacı'
>>>
```
<p>&nbsp;</p>




### ([▲](#top)) split() <a name="split"></a>
split metodu, soldan başlayarak kendisine verilen string ve sayıya göre ayırma işlemi yapar. Aynı işlemi sağdan başlatmak isterseniz rsplit() kullanabilirsiniz. Bu işlemler sonucu çıktılar liste olarak geri verilir. Örnek kullanım:
```python
>>> deger = "Beyaz Takkeli Tornacı"
>>> deger.split(" ")
'['Beyaz', 'Takkeli', 'Tornacı']'
>>>
>>> deger.split(" ", 1)
'['Beyaz', 'Takkeli Tornacı']'
>>>
```
<p>&nbsp;</p>




### ([▲](#top)) lower() | upper() <a name="lowerupper"></a>
Bu iki metod, değişkendeki harflerin hepsini büyütür veya küçültür. Örnek kullanım:
```python
>>> deger = input("İsim girin: ")
İsim girin: CAN
>>>
>>> deger = deger.lower()
>>> print(f"İsminin harflerini küçülttüm. Bak: {deger}")
İsminin harflerini küçülttüm. Bak: can
>>>
>>> deger = deger.upper()
>>> print(f"Şimdide harflerini tekrardan büyüttüm. Bak: {deger}")
Şimdide harflerini tekrardan büyüttüm. Bak: CAN
>>>
```
<p>&nbsp;</p>




### ([▲](#top)) swapcase() <a name="swapcase"></a>
Bu metod ise harflerin boyutunu tersine çevirir. Örnek kullanım:
```python
>>> deger = "DiScOvEr02"
>>> deger.swapcase()
'dIsCoVeR02'
>>>
```
<p>&nbsp;</p>




### ([▲](#top)) title() <a name="title"></a>
Bu metod belirli bir karakter dizisindeki her kelimenin ilk harfini büyütür. Örnek kullanım:
```python
>>> deger = "beyaz takkeli tornacı"
>>> deger.title()
'Beyaz Takkeli Tornacı'
>>>
```
<p>&nbsp;</p>




### ([▲](#top)) isalpha | isnumeric | isalnum | isspace | isinstance | startswith | endswith <a name="strchecks"></a>
Bu işleçler adından anlaşılacağı üzere çeşitli kontroller yapar;
- deger.isalpha() : Sadece harflerden mi oluşuyor?
- deger.isnumeric() : Sadece numaradan mı oluşuyor?
- deger.isalnum() : Hem harf, hem numaradan mı oluşuyor?
- deger.isspace() : Sadece boşluktan mı oluşuyor?
- isinstance(deger, int) : "deger" değişkeni "integer"'mi?
- deger.startswith("a") : "deger" değişkeni küçük "a" ile'mi başlıyor?
- deger.endswith("a") : "deger" değişkeni küçük "a" ile'mi bitiyor?
<p>&nbsp;</p>




### ([▲](#top)) lstrip() | strip() | rstrip() <a name="strips"></a>
Bu fonksiyonlar, kendisine vereceğiniz değerleri kırpar. Değer vermezseniz;
lstrip() soldan;
rstrip() sağdan;
strip() ise değişkenin başındaki ve sonundaki boşlukları kırpar. Örnek kullanım:
```python
>>> deger = " Can Değer\n "
>>> deger.strip()
'Can Değer\n'
>>>
>>> deger.lstrip()
'Can Değer\n '
>>> deger.rstrip('\\n ')
' Can Değer'
>>>
```
<p>&nbsp;</p>




### ([▲](#top)) ljust() | center() | rjust() <a name="justs"></a>
Bu fonksiyonlar ise içine verilen sayılar kadar alan oluşturur. Ve sırasıyla değişkeni sola, ortaya veya sağa yaslar. Örnek kullanım:
```python
>>> isim = "Discover"
>>> isim.ljust(20)
'Discover            '
>>> isim.center(20)
'      Discover      '
>>> isim.rjust(20)
'            Discover'
>>>
```
<p>&nbsp;</p>




### ([▲](#top)) index() | rindex() | find() | rfind() <a name="indexfind"></a>
Bu fonksiyonlar, belirli bir değişkenden istenilen harfı bulup sırasını söyler. rindex ve rfind fonksiyonları saymaya sağdan başlarlar. Hepsi hemen hemen aynı işi yaparlar, Tek farkı, index fonksiyonları harfi bulamayınca hata mesajı verir ama find işleci -1 diye çıktı verir. Örnek kullanım:
```python
>>> isim = "discover"
>>> isim.index("d")
0
>>> isim.index("r")
7
>>> isim.index("a")
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
ValueError: substring not found
>>>
>>> isim.find("d")
0
>>> isim.find("r")
7
>>> isim.find("a")
-1
>>>
```
<p>&nbsp;</p>




### ([▲](#top)) zfill() <a name="zfill"></a>
zfill fonksiyonu, belirli bir karakter dizisinde kendisine verilen sayı kadar alan açıp tanımlanmamış kısımlara "0" doldurur. Örnek kullanım:
```python
>>> isim = "mrN3ONd"
>>> isim.zfill(15)
'00000000mrN3ONd'
>>>
```
<p>&nbsp;</p>




### ([▲](#top)) expandtabs() <a name="expandtabs"></a>
expandtabs fonksiyonu, uygulandığı değişkenin içinde eğer ki '\t' dizisi varsa onun uzunluğunu belirlemeye yarar. Örnek kullanım:
```python
>>> isim = "Can\tDeğer"
>>> isim.expandtabs(10)
'Can          Değer'
>>>
```
<p>&nbsp;</p>




## Listeler <a name="list"></a>
### ([▲](#top)) list()
list fonksiyonu, bir değişkene uygulandığında boş bir liste oluşturur. 
```python
>>> liste = list()
>>> print(liste)
'[]'
>>>
>>> liste = []
>>> print(liste)
'[]'
>>>
```
- Değer ekleme | append()
```python
>>> liste = ["Can"]
>>> liste += ["Değer"]
>>> print(liste)
'["Can", "Değer"]'
>>>
>>> liste.append("Beyaz Takkeli Tornacı")
>>> print(liste)
'["Can", "Değer", "Beyaz Takkeli Tornacı"]'
>>>
```
- Değer değiştirme
```python
>>> liste = ["Kırmızı", "Turuncu", "Sarı"]
>>> liste[2] = "Mavi"
>>>
```
- Değer silme | pop() | remove()
```python
>>> liste = ["Kırmızı", "Turuncu", "Sarı"]
>>> del liste[0]
>>> print(liste)
'["Turuncu", "Sarı"]'
>>>
>>> liste.pop(1)
>>> print(liste)
'["Turuncu"]'
>>>
>>> liste.remove("Turuncu")
>>> print(liste)
'[]'
>>>
```
<p>&nbsp;</p>




## Demetler <a name="tuple"></a>
### ([▲](#top)) tuple()
Demetler'de aynı listeler gibi belirli değerleri bir arada tutmak için kullanılır. Listelerden farkı ise tek bir kez ayarlanabilir olmasıdır. Ekleme yapıldıktan sonra silme veya değiştirme gibi işlemler uygulanamaz. 
```python
>>> demet = ('Beyaz', 'Takkeli')
>>>
```
- Değer eklemek (en sona bir virgül atılması zorunludur, yoksa eklemeye çalıştığınız şey string olarak algılanır.)
```python
>>> demet = ('Beyaz', 'Takkeli')
>>> demet = demet + ('Tornacı',)
>>> print(demet)
('Beyaz', 'Takkeli', 'Tornacı')
>>>
```
<p>&nbsp;</p>




## Sözlükler <a name="dict"></a>
### ([▲](#top)) dict()
Sözlükler, aynı gerçek hayattaki sözlükler gibi belirli bir şeyin ne olduğunu tanımlamak için vardır. Mesela "kitap" kelimesinin inglizce karşılığı "book" kelimesidir Bunu şöyle gösterebiliriz.
`kitap: book`
Bu python'da sözlükleri kullanarak halledilir.
```python
>>> kelimeler = {"kitap": "book"}
>>>
```
- Değer ekleme
```python
>>> kelimeler["kalem"] = "pencil"
>>> print(kelimeler)
{"kitap": "book", "kalem": "pencil"}
>>>
```
- Değer silme
```python
>>> kelimeler.pop("kitap")
>>> print(kelimeler)
{"kalem": "pencil"}
>>>
```
- Anahtarları görmek
```python
>>> kelimeler.keys()
dict_keys(['kitap', 'kalem'])
>>>
```
- Değerleri görmek
```python
>>> kelimeler.values()
dict_values(['book', 'pencil'])
>>>
```
- Anahtar değerini sorgulama (Eğer kelime bulunamazsa hata yaz)
```python
>>> kelimeler.get("kitap", "Hata! Bu kelime bende yok :(")
'book'
>>>
```
<p>&nbsp;</p>




## ([▲](#top)) Temel dosya işlemleri <a name="basefileops"></a>
- dosya = open("output.txt", "r")  : Dosyayı okuma modunda açar .
- dosya = open("output.txt", "w")  : Dosyayı yazma modunda sıfırdan açar.
- dosya = open("output.txt", "a")  : Dosyayı yazma modunda açar.
- dosya.read() : Dosyayı okur.
- dosya.readlines() : Dosyayı satır satır okur.
- dosya.readable() : Okunabilir mi?
- dosya.writeable() : Yazılabilir mi?
- dosya.seek(sayı) : Dosyanın "sayı" ile belirtilen bayt'ına gider
- with open("output.txt", "r+") as f:  : Dosyayı açar ve f değişkenine atar.
<p>&nbsp;</p>




## Fonksiyonlar <a name="func"></a>
### ([▲](#top)) def()
def() komutu, özel fonksiyonlar ayarlamaya yarar. Örnek kullanım:
```python
>>> def ekrantemizle():
... 	__import__("os").system("cls")      # Windows
... 	__import__("os").system("clear")    # Linux/Unix
...
>>> ekrantemizle()
```
- Fonksiyona argüman desteği getirmek
```python
>>> isim = "Can"
>>> soyisim = "Değer"
>>> meslek = "Beyaz Takkeli Tornacı"
>>> def kisikayit(i1, s1, m1):
... 	print("-"*33)
... 	print(f" İsim    : {i1}")
... 	print(f" Soyisim : {s1}")
... 	print(f" Meslek  : {m1}")
... 	print("-"*33)
...
>>> kisikayit(isim, soyisim, meslek)
---------------------------------
 İsim    : Can
 Soyisim : Değer
 Meslek  : Beyaz Takkeli Tornacı
---------------------------------
>>>
```

<p>&nbsp;</p>




### ([▲](#top)) class <a name="class"></a>
class() fonksiyonu'da tıpkı normal fonksiyonlar "def()" gibidir ancak biraz daha karışık bir yapısı vardır.

```python
>>> class myClass:
...     def __init__(self):             ## bu class'ı kullanmak için myClass'ı bir değişkene atamamız gerekiyor, 
...	    self.name = "Can"		#  self ise en aşağıda "c = myClass()" satırının başındaki "c"'yi temsil eder.
...         self.surname = "Değer"
...
...     def echo(self):
...         print(self.name + " " + self.surname)
...
>>> c = myClass()
>>> c.echo()
Can Değer
>>>
```

- Bir başka örnek:
```python
>>> class myClass2:
...    harfler = ["a", "b", "c"]		 # bazı harfleri sınıf içinde belirtiyoruz.
...
...    def __init__(self):			 # girişte uygulanacak komutları burada belirtiyoruz.
...        print(self.harfler)
...
...    def harfekle(self, harf):       		 ## harf eklemek için bir fonksiyon yazıyoruz ve "harf" değişkeni
...        self.harfler.append(harf)       	 #  yerine verilecek harfi asıl listeye ekliyoruz.
...        print(self.harfler)
...
...    def harfsil(self, harf):			 ## harf silmek için bir fonksiyon yazıyoruz ve "harf" değişkeni
...        self.harfler.remove(harf)		 #  yerine verilecek harfi asıl listeden siliyoruz.
...        print(self.harfler)
...
>>> c = myClass2()				 # sınıfı bir değişkene atıyoruz
['a', 'b', 'c']
>>>
>>> c.harfekle("e")				 # harf eklemek için 
['a', 'b', 'c', 'e']
>>>
>>> c.harfsil("a")				 # harf silmek için
['b', 'c', 'e']
>>>
>>> a = myClass2()				 ## Burada ise sınıfı başka bir değişkene atıyoruz. Gördüğünüz gibi 
['a', 'b', 'c']					 #  yaptığımız hiçbir değişiklik uygulanmamış gibi görünüyor. 
>>>						 #  Bu noktada "a"'yı, "c"'yi veya artık hangi değişken kullanıldıysa
						 #  bu değişkeni temsil eden şey sınıf içinde kullandığımız "self" ifadesidir.
```
<p>&nbsp;</p>



# ([▲](#top)) MODÜLLER <a name="modules"></a>
- Modüller import komutuyla içeri alınır.
- Modüller hakkında daha fazla bilgiyi [buradan](https://python-istihza.yazbel.com/moduller.html) okuyabilirsiniz.
- Python ile gelen bazı modüller:
os
sys
socket

- Bilgisayarınızda olmayan modülleri windowsta `py -m pip install modul_ismi` veya linuxta `pip install modul_ismi` şeklinde veya `python3 -m pip install modul_ismi` şeklinde indirebilirsiniz.

- Eğer bir modülün içinden belli bir fonksiyonu veya class'ı içeri alacaksanız;
```python
from os import system    # system fonksiyonu bilgisayarda komut çalıştırmaya yarar.
```
Örnek kullanım:
```python
import time

system("dir")            # çalıştırdığınız dizindeki bütün öğeleri gösterir. (Windows)
system("ls")	         # çalıştırdığınız dizindeki bütün öğeleri gösterir. (Linux/Unix)
time.sleep(5)            # programın 5 saniye boyunca durmasını sağlar.
```
<p>&nbsp;</p>



Bu sayfada göstereceklerim bu kadardır arkadaşlar, hatalarla karşılaşırsanız çok büyük olasılıkla stackoverflow'da çözümlerini bulabilirsiniz.  

[← Ana Sayfaya Dön](https://github.com/LuNiZz/siber-guvenlik-sss)
