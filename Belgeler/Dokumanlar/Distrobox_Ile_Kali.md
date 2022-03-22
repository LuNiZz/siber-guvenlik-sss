<a name="top"></a>

---
<h1 align="center">Distrobox ile ileri seviye Kali Linux Kurulumu</h1>

Bu sayfada *distrobox* kullanarak ileri seviye kali linux kurulumunu göreceğiz. Peki distrobox, docker kullanıyorsa neden bu uygulamayı kullanalım ki derseniz bu program çeşitli işlemleri otomatik hale getirdiği için pratiklik sağlıyor. Örneğin GUI kullanan programları açabilme, home dizininin bağlı olması gibi gibi. Bu araç sadece herhangi bir linux dağıtımında çalışır. Neyse kuruluma geçelim.

---

1) Öncelikle [buradaki](https://github.com/LuNiZz/siber-guvenlik-sss/blob/master/Belgeler/Dokumanlar/Docker_Uzerinde_Kali.md#top) adresi takip ederek docker kurulumunu gerçekleştirin.
<br><br><br>


2) Şu komut ile distrobox'u ana makinenize kurun.
```
curl https://raw.githubusercontent.com/89luca89/distrobox/main/install | sh -s -- -p ~/.local/bin/
```
  - (İsteğe bağlı) Eğer distrobox'u root olarak kurmak isterseniz alttaki komutu uygulayın.
```
curl https://raw.githubusercontent.com/89luca89/distrobox/main/install | sudo sh
```

![image](https://user-images.githubusercontent.com/62564400/159499500-80bbb916-27f7-4819-a218-5c66aa86b534.png)


<br><br>


3) Distrobox kuruldu. Artık istediğimiz linux distrosunu docker ile kurabiliriz. Biz bu makalemizde kali kuracağız. Distrobox ile kali'yi kurmak için aşağıdaki komutu uygulayın.
```
distrobox-create --image kalilinux/kali-rolling:latest --name LuNiZzKali
```

![image](https://user-images.githubusercontent.com/62564400/159500095-b1989d9d-226e-4213-89dd-fda64190df79.png)

<br><br>

4) Kali kuruldu. Artık docker içine kurulan kali sistemine şu komut ile geçebiliriz
```
distrobox-enter LuNiZzKali
```
  - (İsteğe bağlı) tek komut ile geçmek isterseniz bunu aşağıdaki gibi alias yapabilirsiniz
```
alias openkali="distrobox-enter LuNiZzKali"
```

![image](https://user-images.githubusercontent.com/62564400/159500811-69e07873-5385-4675-90d3-71b35e0d5cba.png)

<br><br>


5) Artık terminale ulaştığımıza göre bir temizlik yapabiliriz.
```
sudo apt update && sudo apt upgrade && sudo apt full-upgrade && sudo apt dist-upgrade && sudo apt autoremove && dpkg -l | awk '/^rc/ {print $2}' | xargs sudo dpkg --purge
```

![image](https://user-images.githubusercontent.com/62564400/159501106-420603c5-e95c-453a-beb7-b305283eb117.png)

<br><br>


6) Ev temizliğini yaptıktan sonra Kali'nin araçlarını kurmaya geçebiliriz.
```
sudo apt install kali-linux-default
```
  - Bu komut ile standart araçlar yükleniyor. Son kurulumda yaklaşık 8 GB yükleme yaptı. Sabırla beklemeniz gerekiyor. Kurulum sırasında bazı araçlar için size soru soracak. Okuyup gerekli cevabı vermezseniz kurulum tamamlanmadan sizi beklemeye devam edecek. Sonra bu çalışmıyor demeyin :)

  - Eğer daha küçük bir halini yüklemek isterseniz bu şekilde parça parça kurulum yapabilirsiniz.
```
sudo apt install nmap wpscan netcat dirb nikto binwalk git arp-scan dns-utils metasploit-framework
```
<br><br>


7) `ifconfig`, `ping` ve diğer birkaç araç sistemde olmadığı için çalışmayacaktır. Eksiklerimizi tamamlayalım..
```
sudo apt install net-tools iputils-ping
```
<br><br>


8) Docker içinde kali kuruldu. Eğer terminale hakimseniz, biraz gezindiğinizde kendi dosyalarınızı görebilirsiniz. Eğer distrobox içinde sudo su yazarsanız, docker içindeki kali'nin root hesabına geçebilirsiniz.

![image](https://user-images.githubusercontent.com/62564400/159501719-b2de7cf4-89a0-432e-a50c-8cb3686c6af2.png)


<br><br>


9) Artık her türlü programı başlatabilirsiniz.

![image](https://user-images.githubusercontent.com/62564400/159503828-33a97899-0f4b-421a-90e6-b6357bd28b30.png)

<br><br>


10) Eğer GUI kullanan bir programı ana makinenize kısayol atamak isterseniz "ve tabii programın başlatma dosyası /usr/share/applications içinde varsa" şu komutu distrobox içinde uygulayın.
```
distrobox-export --app chromium
```

![image](https://user-images.githubusercontent.com/62564400/159504112-9b4e545f-7d19-4401-b0cd-c6afcd302a5f.png)

<br><br>


Distrobox'un ana sayfası : https://github.com/89luca89/distrobox
