### Docker ile Kali Linux Kurulumu
Bu sayfada sanal bilgisayara veya gerçek bilgisayara Kali Linux kurmadan Docker yardımı ile nasıl Kali Linux kullanabileceğimizi göreceğiz.

---
#### Docker Kurulumu
Ubuntu ve Ubuntu'dan türemiş dağıtımlar için (Kubuntu, Lubuntu, Kali, Mint, vs.) aşağıdaki adımlarla Docker kurulumunu yapabilirsiniz.

Docker kurulumuna başlamadan önce sistem güncelleştirilmeli ve gerekli yardımcı programlar yüklenmeli. Bunun için aşağıdaki komutları yazmamız gerekiyor.

    sudo apt-get update
    sudo apt-get -y install apt-transport-https ca-certificates curl software-properties-common

Güncellemenin ardından asıl ihtiyacımız olan Docker kurulumuna geçiyoruz. İlk olarak Docker GPG key sisteme eklenmeli.

    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

Ardından Docker repository sisteme eklenmeli. Bu komutla `additional-repositories.list` dosyamıza gerekli repo'yu eklemiş oluyoruz.

    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(. /etc/os-release; echo "$UBUNTU_CODENAME") stable"

Kontrol etmek için aşağıdaki komutu kullanabilirsiniz.

    cat /etc/apt/sources.list.d/additional-repositories.list

> Daha önce ekledğiniz başka repo'lar varsa çıktısı sizde farklı olabilir. Siz sadece aşağıdaki satırın var olup olmadığını kontrol edebilirsiniz. Yine `bionic` kısmı sizde `focal` veya başka bir şey olabilir. Tamamen kullandığınız dağıtım ile ilgili.

    deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable

Gerekli repo eklendikten sonra bir kez daha güncelleme yapmamız gerekiyor.

    sudo apt-get update

Artık gerçek Docker kurulumunu gerçekleştiriyoruz.

    sudo apt-get -y  install docker-ce docker-compose

Son olarak mevcut kullanıcımızı `docker` grubuna eklememiz gerekiyor.

    sudo usermod -aG docker $USER

Bu aşamaya kadar sorunsuz geldiyseniz son bir kez test edelim.

    docker run --rm -it  --name test alpine:latest /bin/sh

Terminal ekranınızda aşağıdaki gibi bir görüntü varsa kurlum işlemi başarıyla tamamlanmış demektir.

    / # 

Artık `exit` yazarak çıkıp Kali Linux adımlarına geçebilirsiniz.

---

#### Docker Yardımıyla Kali Linux Kurulumu

İlk olarak gerekli image dosyasını kendi bilgisayarımıza çekmemiz gerekiyor.

    sudo docker pull kalilinux/kali-rolling

Ardından image dosyasından bir container üreterek açıyoruz.

    sudo docker run -ti kalilinux/kali-rolling /bin/bash

Karşımızda Kali'nin console ekranı gelmiş olması gerekiyor.

    ┌──(root💀a259e0cba864)-[/]
    └─#

Artık terminale ulaştığımıza göre bir temizlik yapabiliriz.

    apt update
    apt dist-upgrade
    apt autoremove
    apt clear

Ev temizliğini yaptıktan sonra Kali'nin araçlarını kurmaya geçebiliriz.

    apt install kali-linux-default

Bu komut ile standart araçlar yükleniyor. Son kurulumda yaklaşık 8 GB yükleme yaptı. Sabırla beklemeniz gerekiyor. Kurulum sırasında bazı araçlar için size soru soracak. Okuyup gerekli cevabı vermezseniz kurulum tamamlanmadan sizi beklemeye devam edecek. Sonra bu çalışmıyor demeyin :)

Eğer daha küçük bir halini yüklemek isterseniz bu şekilde parça parça kurulum yapabilirsiniz.

    apt install nmap wpscan netcat dirb nikto binwalk git arp-scan dns-utils
    apt install metasploit-framework

`ifconfig`, `ping` ve diğer birkaç araç sistemde olmadığı için çalışmayacaktır. Eksiklerimizi tamamlayalım..

    apt install net-tools
    apt install iputils-ping

Eksiklerimizi tamamladik. Şimdi bunu sabitleyelim.

Docker'dan `exit` komutuyla çıkıp kendi terminalimize dönelim. Ardından aşağıdaki komutla son çalışan container id değerini öğrenelim.

    sudo docker ps -a

Son olarak aşağıdaki komut ile kalıcı hale getirelim.

    sudo docker commit <CONTAINER ID> LuNiZz-KALI

İstediğimiz zaman sabit volume'larla birlikte tekrar çalıştırmak için aşağıdaki komutu kullanabiliriz.

    sudo docker run -ti --rm --mount src=kali-root,dst=/root --mount src=kali-postgres,dst=/var/lib/postgresql LuNiZz-KALI

Tüm işlemler bu kadar. Artık elimizde ne sanal ne gerçek bir Kali'miz var. Docker yardımıyla sistem özelliklerini sömürmeden çalışabilen Kali'mizi kendi ellerimizle hazırlamış olduk.

Sürekli komut yazmaktan kurtulup işi biraz daha kolaylaştırmak için üstteki satırı alıp aşağıdaki gibi bir bash scriptine koyabilirsiniz.

Ardından `chmod +x scriptinizinadi.sh` yaparsanız ve scripti `./scriptinizinadi.sh` şeklinde çalıştırırsanız sizi Kali'nin komut satırı karşılayacak.

    #! /bin/bash
    sudo docker run -ti --rm --mount src=kali-root,dst=/root --mount src=kali-postgres,dst=/var/lib/postgresql LuNiZz-KALI

Kurulum sonrası Docker'ı daha kolay kullanmak ve her açılışta çalışmasını sağlamak için şu adrese bakabilirsiniz.

https://docs.docker.com/engine/install/linux-postinstall/