# Python3 Başlangıç

Bu dosyada başlangıç düzeyinde python3 öğreneceğiz.

### DİKKAT! PYTHONDA BOŞLUKLAR ÇOK ÖNEMLİDİR, BİR BOŞLUK DAHİ FAZLA VEYA EKSİK KOYMANIZ ERRORA SEBEP OLABİLİR!!!
### KODLARDA KULLANDIĞIM >>> VE ...'LARI KOD YAZARKEN KULLANMAYIN!!!
---

Basit kodlar ve açıklamaları:

## Pythonda yourmlar

Pythonda yorum satırı olarak yani koda etki etmeyecek yazılar eklenmek istediği zaman yorum kısmı tek satırsa veya bir satırın devamıysa "#", eğer birden fazla satır kullanacaksanız yorumun başına ve sonuna üç tane tırnak koymanız gerekiyor. '"""' 


## print()

```python
print(deger)
```
Yukarıdaki kod içine yazılan şeyin çıktısını alır.
Örnek kullanım:
```python
>>> print("selam")
selam
>>> print(123)
123
>>> print(7.2)
7.2
```

---

## a = "b"

```python
degisken = deger
````
Yukarıdaki kod bir değişken oluşturmamızı sağlar.
Örnek kullanım:

```python
>>> yazi = "selam" # Bu bir stringtir, string (" ") veya (' ') veya (""" """") işaretleri içinde olan ve değişkenlere atanabilen bir değerdir. a = str() veya a = "" boş string oluşturur.
>>> sayi = 123 # Bu bir integerdir, yani sayıdır. b = int() bize sıfır döndürecektir.
>>> float = 7.8 # Bu bir floattır, yani ondalıklı sayıdır. Floatta virgül kullanamazsınız. c = float() bize 0.0 döndürecektir
>>> liste = ["a", 123, 7.8] # Listenin içine her türden değişkeni ekleyebilirsiniz. Boş bir listeyi liste = list() veya liste = [] şeklinde açabilirsiniz.
>>> sozluk = {"a" : "b", "c" : "d"} # Sözlüklerin olayı bir anahtar(key) ve değer(value) ile çalışmasıdır. Boş bir sözlüğü sozluk = dict() veya sozluk = {} şeklinde açabilirsiniz.
>>> dogruluk = True # veya dogruluk = False, bunlar yerine False için dogruluk = 0 True için dogruluk = 1 yapabilirsiniz. False bir doğruluk değeri oluşturmak için dogruluk = bool() da kullanabilirsiniz.
>>> print(yazi)
selam
>>> print(sayi)
123
>>> print(float)
7.8
>>> print(liste)
["a", 123, 7.8]
>>> print(sozluk)
{'a': 'b', 'c': 'd'}
```
---

## f-String

f-String kullanmak için stringi a = f"" kullanmak gerekir. f-String kullandığımızda stringin içinde değişken kullanabiliriz.
Örnek Kullanım:
```python
>>> ad = "Can Değer"
>>> print(f"Hoş geldin {ad}")
```


---

## Input almak

```python
>>> ad = input("Lütfen adınızı girin: ")
Lütfen adınızı girin: Can Değer
>>> print(f"Hoşgeldin, {ad}")
```


---

## Değişkenler

### Herhangi bir şeyin uzunluğunu/element sayısını öğrenme

```python
>>> s = "selamlar"
>>> l = ["a", 123, 7.8]
>>> d = {"a" : "b", "c" : "d"}
>>> print(len(s))
8
>>> print(len(l))
3
>> print(len(d))
2
```

### Sözlük, liste, veya stringde belli bir sıradaki bir elementi görmek için köşeli parantez ([]) kullanılır.
Örnek Kullanım:
```python
>>> liste = ["a", 123, 7.8]
>>> string = "selam"
>>> print(liste[0])
a
>>> print(string[0])
s
```
Sözlüklerde bu kullanım biraz daha farklı, string ve listede yaptığımız gibi sayı ile çağırma yaptığımız zaman hata ile karşılaşırız.
Sözlüklerde bir elementi çağırmak için "key" yani anahtar ile çağırırız.
```python
>>> sozluk = {'a': 'b', 'c': 'd'}
>>> print(sozluk['a'])
b
```

### Stringe yazı eklemek

```python
>>> a = "b"
>>> print(a)
b
>>> a += "k" # a = a + "k" anlamına gelir.
>>> print(a)
bk
```

### Stringteki yazıyı değiştirmek

```python
>>> a = "selamlar."
>>> a = a.replace("s", "S") # İlk değer stringte değiştirilmesi istenen değer, ikinci değer ise olması istenen değer.
>>> print(a)
Selamlar.
```

### Stringi bölmek

Stringi böldüğümüz zaman elimize bir liste gelecek.
```python
>>> a = "Bu bir stringtir."
>>> r = a.split(" ") # Boşlukları silip diğer değerleri listeye atar
>>> print(r)
['Bu', 'bir', 'stringtir.']
```

### Stringte ilk harfi büyütmek

```python
>>> a = "merhaba."
>>> a = a.capitalize()
>>> print(a)
Merhaba.
```

### Stringte bütün harfleri büyütmek veya küçültmek

```python
>>> a = "merhaba".
>>> a = a.upper()
>>> print(a)
MERHABA.
>>> a = a.lower()
>>> print(a)
merhaba.
```

### Stringin sayı olup olmadığını test etmek

```python
>>> a = "21"
>>> a.isdigit() # Eğer değer True dönerse a = int(a) yazıp a'yı bir integer yani sayıya çevirebilirsiniz.
True
```

### String içinde değişken kullanma

```python
a =
```


### Listeye element ekleme

```python
>>> l = []
>>> l.append("a")
>>> print(l)
['a']
```

### Listeden element silme

```python
>>> l = ["a", "b", "c", "d"]
>>> l.remove("a")
>>> print(l)
['b', 'c', 'd']
```


### Listedeki elementi güncelleme

```python
>>> l = ["a", "b", "c", "d"]
>>> l[0] = 42
>>> print(l)
[42, 'b', 'c', 'd']
```


### Listedeki son elementi silme

```python
>>> l = ["a", "b", "c", "d"]
>>> l.pop()
'd'
>>> print(l)
['a', 'b', 'c']
```

Belli bir indextekini silmek için

```python
>>> l = ["a", "b", "c", "d"]
>>> l.pop(0)
'a'
>>> print(l)
['b', 'c', 'd']
```


### Listeyi tersine çevirmek

```python
>>> l = ["a", "b", "c", "d"]
>>> l.sort(reverse=True)
>>> print(l)
['d', 'c', 'b', 'a']
```

### Sözlüğe element ekleme/elementi güncelleme

```python
>>> d = {"a": "b", "c": "d"}
>>> d['x'] = 'y'
>>> print(d)
{'a': 'b', 'c': 'd', 'x': 'y'}
>>> d['a'] = 'z'
>>> print(d)
{'a': 'z', 'c': 'd', 'x': 'y'}
```

### Sözlükten element silme

```python
>>> d = {"a": "b", "c": "d"}
>>> d.pop('a')
'b'
>>> print(d)
{'c': 'd'}
```


---

## type()

```python
degisken = deger
print(type(degisken))
```
Yukarıdaki kod bir değişkenin tipini öğrenmemizi sağlar.
Örnek kullanım:

```python
>>> a = "selam" 
>>> b = 123
>>> c = 7.8
>>> d = ["a", "b", "c", "d"]
>>> e = {'a' : 'b', 'c' : 'd'}
>>> f = True
>>> print(type(a))
<class 'str'>
>>> print(type(b))
<class 'int'>
>>> print(type(c))
<class 'float'>
>>> print(type(d))
<class 'list'>
>>> print(type(e))
<class 'dict'>
>>> print(type(f))
<class 'bool'>
```

---


# DÖNGÜLER VE KARŞILAŞTIRMALAR

## if, elif, else

if elif ve else kodları belli bir durumları karşılayan durumlarda kod çalıştrımak için kullanılır.
### DİKKAT, IF, ELIF ve ELSE KULLANDIKTAN SONRAKI SATIRLARDA BIR TAB ATILIR!!!
### DİKKAT, IF, ELIF ve ELSE KULLANDIKTAN SONRA : KULLANILIR!!

```python
if True:
    print(1)
```

Opeartörler:
- | > : Büyüktür
- | < : Küçüktür
- | == : Eşittir
- | >= : Büyük eşittir
- | <= : Küçük Eşittir

Örnek kullanım:
```python
>>> a = input("Sayı girin: ") # 10 girmiş olalım
Sayı girin: 
>>> if a.isnumeric(): # Eğer a sayıysa True döndüreceği için if True yazacaktır ve bu satırın altındaki kod çalışacaktır.
...     a = int(a)
...     if a == 0: # a 0'a eşitse
...        print("Girilen sayı nötrdür.")
...     elif a > 0: # a 0'dan büyükse
...        print("Girilen sayı pozitiftir.")
...     elif a < 0: # a 0'dan küçükse
...        print("Girilen sayı negatiftir.")
... else:
...     print("Girdiğiniz değer sayı değildir.")
...
...
Girilen sayı pozitiftir.
```

---

## for loop

### DİKKAT, FOR KULLANDIKTAN SONRAKI SATIRLARDA BIR TAB ATILIR!!!
### DİKKAT, FOR KULLANDIKTAN SONRA : KULLANILIR!!

for operatörleri:
- break: döngüyü kırar
- pass: o anda çalışan kodu atlar
- continue: kodda continue yazan kısımda durdurup kodu tekrardan başlatır.

for döngüsü verilen sayı kez kodu çalıştırır.
Örnek kullanım:
```python
>>> l = ["a", "b", "c", "d"]
>>> for i in l: # i, l'nin içindeki değişkenleri tanımlamak için kullandığım rastgele bir değişkendir
...     print(i)
...
a
b
c
d
>>> for i in l: # i, l'nin içindeki değişkenleri tanımlamak için kullandığım rastgele bir değişkendir
...     if i == "a": # a'yı geçtik
...         pass
...     elif i == "c": # b'de döngüyü kırdık
...         break
...
...
b
```

---

### Range kullanımı

range() koduna iki değer (başlangıç ve bitiş) verilirse hepsi string olmak üzere başlangıç sayısı dahil olmak üzere aralıktaki sayıların hepsini döndürür.
range() koduna bir değer (bitiş) veilirse başlangıç sıfır olarak kabul edilir ve başlangıç sayısı(0) dahil olmak üzere aralıktaki sayıların hepsini döndürür.
### SADECE FOR ILE KULLANABILIRSINIZ

```python
>>> for i in range(1,5):
...     print(i)
...
1
2
3
4
>>> for i in range(5):
...     print(i)
...
0
1
2
3
4
```
ÖNERİ: for i in range(5) dediğiniz zaman for döngüsünün altındaki kod 5 kere çalışacaktır yani 5 kere çalışmasını istediğiniz bir şeyi for i in range(5) yazıp altına da istediğiniz kodu yazarak çalıştırabilirsiniz.

---

## while loop

### DİKKAT, WHILE KULLANDIKTAN SONRAKI SATIRLARDA BIR TAB ATILIR!!!
### DİKKAT, WHILE KULLANDIKTAN SONRA : KULLANILIR!!
Belli bir kondisyon sağlandığı sürece kodun çalışmasını sağlar.
Kodun bütün program boyunca çalışmasını istiyorsanız while True veya while 1 kullanabilirsiniz.

while operatörleri:
- break: döngüyü kırar
- pass: o anda çalışan kodu atlar
- continue: kodda continue yazan kısımda durdurup kodu tekrardan başlatır.

```python
>>> a = 0
>>> while a < 10:
...     print(20)
...     a += 1
...
20
20
20
20
20
20
20
20
20
20
```

```python
>>> a = 0
>>> while True:
...     print(a)
...     a += 1
...     if a == 3:
...             pass
...     elif a == 5:
...             continue
...     elif a == 7:
...             break
...     print("ab")
...
...
0
ab
1
ab
2
ab
3
ab
4
5
ab
6
```

---

# FONKSIYONLAR VE NESNELER

## def()

### DİKKAT, DEF KULLANDIKTAN SONRAKI SATIRLARDA BIR TAB ATILIR!!!
### DİKKAT, DEF KULLANDIKTAN SONRA : KULLANILIR!!
def komutu fonksiyon oluşturmaya yarar.
Örnek kullanım:
```python
>>> def ogrenci():
...     print("Ben bir öğrenciyim.")
...
>>> ogrenci()
Ben bir öğrenciyim.
```

## Fonksiyon argümanları

### Default Argument
```python
>>> def tam_ad(ad="john", soyad="doe"):
...    print(ad + " " + soyad)
...
>>> tam_ad()
john doe
```

### Keyword Argument
```python
>>> def tam_ad(ad="john", soyad="doe"):
...    print(ad + " " + soyad)
...
>>> tam_ad(ad="can", soyad="değer")
can değer
```

### Positional Argument
```python
>>> def tam_ad(ad, soyad):
...    print(ad + " " + soyad)
...
>>> tam_ad()
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
TypeError: tam_ad() missing 2 required positional arguments: 'ad' and 'soyad'
>>> tam_ad("can", "değer")
can değer
```

---

## class

### DİKKAT, DEF KULLANDIKTAN SONRAKI SATIRLARDA BIR TAB ATILIR!!!
### DİKKAT, DEF KULLANDIKTAN SONRA : KULLANILIR!!
classlar def'ler gibidir ancak biraz daha komplekstir.

```python
>>> class myClass:
...     def __init__(self): # bu class'ı kullanmak için myClass'ı bir değişkene atamamız gerekiyor, self ise class içinde erişilebilen değişkenlerdir ve self'i class içindeki her fonksiyona kullanmak gerekir.
...         self.name = "Can"
...         self.surname = "Değer"
...     def print(self):
...         print(self.name + " " + self.surname)
...
>>> c = myClass()
>>> c.print()
Can Değer
```

# HATA KONTROLÜ

## try, except, finally

### DİKKAT, TRY, EXCEPT, FINALLY KULLANDIKTAN SONRAKI SATIRLARDA BIR TAB ATILIR!!!
### DİKKAT, TRY, EXCEPT, FINALLY KULLANDIKTAN SONRA : KULLANILIR!!
Genelde hata kontrolü while döngüsünün içinde yazılır ve continue kullanılır.
Genel Mantığı
try: # altımdaki kodu çalıştırmayı dene
except: # eğer olmazsa altımdaki kodu çalıştır
finally: # olsa da olmasa da beni çalıştır

```python
>>> while True:
...     try:
...         l = int(input("Sayı girin: "))
...         print(l)
...         break
...     except:
...         print("Girdiğiniz değer sayı değil.")
...         continue
...     finally:
...         print("t")
...
Sayı girin: a
Girdiğiniz değer sayı değil.
t
Sayı girin: 20
20
t
```

---

# MODÜLLER

Modüller import komutuyla kullanılır.
Modüller hakkında daha fazla bilgiyi modüller dökümantasyonundan okuyabilirsiniz
Örnek built-in modüller:
os
sys
socket

Bilgisayarınızda olmayan modülleri windowsta py -m pip install modul_ismi veya linuxta pip install modul_ismi şeklinde veya python3 -m pip install modul_ismi indirebilirsiniz.

Eğer bir modülün içinden belli bir fonksiyonu veya class'ı import edecekseniz
from modul_ismi import fonksiyon

Örnek Kullanım:
```python
from os import system # system fonksiyonu bilgisayarda komut çalıştırmaya yarar.
import time

system("dir") # çalıştırdığınız dizindeki bütün öğeleri gösterir.
time.sleep(5) # programın 5 snaiye boyunca durmasını sağlar.
```

Bu sayfada göstereceklerim bu kadardır arkadaşlar, hatalarla karşılaşırsanız çok büyük olasılıkla stackoverflow'da çözümlerini bulabilirsiniz.
