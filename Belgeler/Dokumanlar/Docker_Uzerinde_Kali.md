<a name="top"></a>

---
<h1 align="center">Docker ile Kali Linux Kurulumu</h1>

Bu sayfada sanal bilgisayara veya gerçek bilgisayara Kali Linux kurmadan Docker yardımı ile nasıl Kali Linux kullanabileceğimizi göreceğiz.

---
<details> 
  <summary><strong>İçindekiler(Contents)</strong></summary>
  <p>
   
1) [Ubuntu ve Debian tabanlı sistemlerde Docker kurulumu]([[ubuntu]])
2) [Fedora ve diğer rpm tabanlı sistemlerde Docker kurulumu]([[fedora]])
3) [Docker yardımıyla kali linux kurulumu]([[kali]])
  </p>
</details>

---

### Ubuntu ve Debian tabanlı sistemlerde Docker Kurulumu <a name="ubuntu"></a>
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

Bu aşamaya kadar sorunsuz geldiyseniz şu komutu çalıştırarak kullanıcımızı komple kapatalım ve tekrardan giriş yapalım.

    ps aux | grep -v grep | grep $USER | awk '{print $2}' | xargs sudo kill -9
    
Ve docker'i test edelim.

    docker run --rm -it  --name test alpine:latest /bin/sh

Terminal ekranınızda aşağıdaki gibi bir görüntü varsa kurlum işlemi başarıyla tamamlanmış demektir.

    / # 

Artık `exit` yazarak çıkıp Kali Linux adımlarına geçebilirsiniz.

---

### ([▲](#top)) Fedora ve diğer rpm tabanlı sistemlerde Docker kurulumu <a name="fedora"></a>
Fedora ve diğer rpm tabanlı sistemlerde docker kurulumunu şu şekilde gerçekleştirebilirsiniz.

Docker kurulumuna başlamadan önce sistem güncelleştirilmeli ve gerekli yardımcı programlar yüklenmeli. Bunun için aşağıdaki komutları yazmamız gerekiyor.

    sudo dnf --refresh update
    sudo dnf install dnf-plugins-core
    
Güncellemenin ardından asıl ihtiyacımız olan Docker kurulumuna geçiyoruz. İlk olarak Docker repository sisteme eklenmeli.

    sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo

Kontrol etmek için aşağıdaki komutu kullanabilirsiniz.

    cat /etc/yum.repos.d/docker-ce.repo

Gerekli repo eklendikten sonra bir kez daha güncelleme yapmamız gerekiyor.

    sudo dnf --refresh update

Artık gerçek Docker kurulumunu gerçekleştiriyoruz.

    sudo dnf install docker-ce docker-ce-cli containerd.io

Son olarak mevcut kullanıcımızı `docker` grubuna eklememiz gerekiyor.

    sudo usermod -aG docker $USER

Bu aşamaya kadar sorunsuz geldiyseniz şu komutu çalıştırarak kullanıcımızı komple kapatalım ve tekrardan giriş yapalım.

    ps aux | grep -v grep | grep $USER | awk '{print $2}' | xargs sudo kill -9
    
Ve docker'i test edelim.

    docker run --rm -it  --name test alpine:latest /bin/sh

Terminal ekranınızda aşağıdaki gibi bir görüntü varsa kurlum işlemi başarıyla tamamlanmış demektir.

    / # 

Artık `exit` yazarak çıkıp Kali Linux adımlarına geçebilirsiniz.

---

#### ([▲](#top)) Docker Yardımıyla Kali Linux Kurulumu <a name="kali"></a>

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

"Yok ben bununla da uğraşamam, her defasında bir de bu scriptin olduğu klasöre mi gitmem gerekiyor" diyorsanız Linux'un bir diğer nimeti olan `alias`'ları kullanabilirsiniz.

    alias LuNiZz-KALI="sudo docker run -ti --rm --mount src=kali-root,dst=/root --mount src=kali-postgres,dst=/var/lib/postgresql LuNiZz-KALI"

Bu komutla hızlıca alias tanımlayabilirsiniz ama terminali kapattığınızda bir daha kullanamazsınız. Kalıcı hale getirmek için mevcut shell'inizin config dosyasında güncelleme yapmanız gerekiyor.

- Bash – `~/.bashrc`
- ZSH – `~/.zshrc`
- Fish – `~/.config/fish/config.fish`
  
Sisteminizde yüklü herhangi bir editörle Bash, ZSH, Fish veya kullandığınız başka özel shell varsa onun shel dosyasını açın. Örneğin;

    sudo xed ~/.bashrc
    sudo nano ~/.bashrc
    sudo vim ~/.bashrc
    sudo vi ~/.bashrc
    sudo gedit ~/.bashrc

Ardından hatırlaması kolay olması için dosyanın en altına aşağıdaki satırı ekleyin.

    # Sonradan Eklediğim Alias Tanımlamalarım
    alias LuNiZz-KALI="sudo docker run -ti --rm --mount src=kali-root,dst=/root --mount src=kali-postgres,dst=/var/lib/postgresql LuNiZz-KALI"

Kaydedip çıktıktan sonra yine kullandığınız shell'e uygun şekilde güncellediğimiz config dosyasının shell tarafından okunmasını sağlamalıyız.

    source ~/.bashrc
    source ~/.zshrc
    source ~/.config/fish/config.fish`

Komutları yazdığınız termianl'den başka eğer varsa açık tüm terminal'leri kapatıp tekrar açarsanız artık tek komutla hızlıca Kali'ye geçebileceksiniz. UUnutmayın! Kapatıp tekrar açmadığınız sekmelerde ve pencerelerde komut çalışmayacaktır.

Kurulum sonrası Docker'ı daha kolay kullanmak ve her açılışta çalışmasını sağlamak için şu adrese bakabilirsiniz.

https://docs.docker.com/engine/install/linux-postinstall/  

[← Ana Sayfaya Dön](https://github.com/LuNiZz/siber-guvenlik-sss)
