<a name="top"></a>

---
<h1 align="center">WSL'de Kali Kurulumu</h1>

Bu dosyada WSL'in aktifleştirilmesi ve WSL ile Kali kurmayı öğreneceğiz.

<p align="left" style="vertical-align: top;">
  <img src="https://img.shields.io/badge/Windows-%3E=_10-royalblue.svg">
</p>

<p align="center">
  <a href="#wsl">WSL'in Aktifleştirilmesi</a>
  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#kali">Kali'nin Kurulumu</a>
  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#kalidesktop">Kali'nin Masaüstü Kurulumu</a>
  &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#extras">Ekstralar</a>
</p>

<br>

<a name="wsl"></a>
## WSL'in Aktifleştirilmesi

- İlk olarak Windows tuşuna basıp "Windows özelliklerini aç veya kapat" ya da Windowsunuz İngilizceyse "Turn Windows features on or off" şeklinde aratıp ilk sonuca tıklayın

<img src="https://i.ibb.co/99wtmv4/wsl0.png" alt="wsl0" border="0">

<br>

- Daha sonra gelen ekranda Linux için Windows Alt Sistemi kutusunu ve Sanal Makina Platformu kutusunu işaretleyin ve tamama tıklayın.


<img src="https://i.ibb.co/985D3DW/wsl1.png" alt="wsl1" border="0">

<br>

- Özellikler bilgisayara indikten sonra bilgisayarı yeniden başlatın ve <a href=https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi>buraya</a> tıklayarak wsl2 kernelini indirip bilgisayarınıza kurun ve bilgisayarınızı tekrar yeniden başlatın.

- Bilgisayarınızı yeniden başlattıktan sonra powershelli yönetici olarak açıp aşağıdaki komutu yazun.
> ```powershell
> wsl --set-default-version 2
> ```

- Ve komut çalıştıktan sonra aşağıdaki komutu yazın.
> ```powershell
> wsl --update
> ```

- Eğer bir güncelleme yaparsa güncellenmenin tamamlanması için aşağıdaki komutu yazın.
> ```powershell
> wsl --shutdown
> ```

<br>

<a name="kali"></a>
## Kali'nin Kurulumu
- Micorosft Store'a girip Kali Linux diye aratın.

<img src="https://i.ibb.co/P5DMc5B/wsl2.png" alt="wsl2" border="0">

<br>

- Yukarıdaki uygulamayı bulup indirin.

- Uygulamayı indirip açtıktan sonra

> ```bash
> Installing, this may take a few minutes...
> ```

yazısı ile karşılaşacaksınız ve işlem tamamlandıktan sonra sizden bir kullanıcı adı belirlemenizi isteyecek.
Kullanıcı adınızı belirleyin ve daha sonra çıkan ekranda şifrenizi belirleyin.

- Bu işlemler bittikten sonra karşınıza kali terminali gelecek.

- Eğer Kali 0x80370102 hatasını verirse powershell'i yönetici olarak çalıştırıp aşağıdaki komutu yazın ve bilgisayarınızı yeniden başlatın. Sorununuz büyük ihtimalle çözülecektir.
> ```powershell
> bcdedit /set hypervisorlaunchtype auto
> ```

<br>

<a name="kalidesktop"></a>
## Kali'ye Masaüstü Kurulumu

- İlk olarak sistemi güncelleyelim.
> ```bash
> sudo apt update
> sudo apt full-upgrade -y
> ```

- Güncelleme bittikten sonra Win-Kex'i yani kali-win-kex paketini Kali'ye yükleyeceğiz.
> ```bash
> sudo apt install kali-win-kex
> ```


- Paket yüklenirken karşınıza "Configuring keyboard-configuration" ekranı gelecek.

<img src="https://i.ibb.co/6rKYdw5/wsl3.png" alt="wsl3" border="0">

- Other'ı seçip daha sonra gelen ekranda Turkish gelene kadar aşağı ok tuşuna basıyoruz ve Turkish'i seçiyoruz.
Gelen ekrandan tekrar Turkish'i seçiyoruz ve kurulum devam ediyor.

- Kurulum bittikten sonra terminal'e
> ```bash
> kex
> ```

komutunu kullanarak kex'i çalıştırın.

- Şifre girmenizi isteyecek ve daha sonra "Would you like to enter a view-only password (y/n)? " yazısı çıkacak. n yazıp entera basın ve bu adımı atlayın. Daha sonra bağlantıyı yaparken aşağıdaki ekran gelecek oraya az önce belirlediğiniz şifreyi yazacaksınız.

<img src="https://i.ibb.co/fxGtxC6/wsl4.png" alt="wsl4" border="0">

- Eğer hata alırsanız aşağıdaki komutları uygulayın:
> ```bash
> sudo rm -rf /etc/.X11-unix
> vncserver
> ```

- Daha sonra kex'i tekrar çalıştırmayı deneyin ve büyük olasılıkla sorununuz çözülmüş olacak.

<br>

<a name="extras"></a>
## Ekstralar

1- WSL'deki Kali'de root hesabının default olarak şifresi yok ve değiştirmek için aşağıdaki adımları uygulayabilirsiniz.
> ```bash
> sudo su
> passwd
> ```

2- WSL'deki Kali'de pentesting toolları kurulu olarak gelmiyor. Toolları kurmak için aşağıdaki komutu kullanabilirsiniz.
> ```bash
> sudo apt install kali-linux-default
> sudo apt install kali-tweaks
> ```

Daha sonra kali tweaks menüsüne girip oradan sisteminizde olmayan başka toolları da seçerek indirebilirsiniz.

3- Kali'yi root olarak kullanmayı seviyorsanız aşağıdaki komutu powershell'e yazarak kali açıldığında direk root hesabına giriş yapabilirsiniz
> ```powershell
> kali config --default-user root
> ```
