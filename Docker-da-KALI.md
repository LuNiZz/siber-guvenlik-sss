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

Artık gerçek Docker kuruşumunu gerçekleştiriyoruz.

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

en son surum kaliyi cekiyor ama cucuk kadar bu  
`sudo docker pull kalilinux/kali-rolling `

bash shell ile container i aciyor bize cicek gibin  
`sudo docker run -ti kalilinux/kali-rolling /bin/bash `

`apt update`  
`apt dist-upgrade`   
`apt autoremove`    
`apt clear`   
   
ev temizligini yaptiktan sonra  
sirada   
`apt install kali-linux-default `  
bu butun default toollari yukluyor, masallah 6 GB yukleniyor burda..  
kucuk bi halini yuklemek istersen ahanda bole yap..    
`apt install nmap wpscan netcat dirb nikto binwalk git arp-scan dnsutils`      
`apt install metasploit-framework`     

veya tum meta paketlerini asagida bulabilirsin, zevkine gore bak yukle...     
https://www.kali.org/docs/general-use/metapackages/
  
ifconfig falan calismiyacaktir ping vs onlari bi ekleyelim  
`apt install net-tools`     
`apt install iputils-ping`    

eksikleri tamamladik... simdi bunu sabitleyelim..  
  
  
exit diyip cikiyoruz container dan  
`sudo docker ps -a`    
sudo docker container ls bu komutla container ID yi gorebilirsin conem.  
`sudo docker commit <CONTAINER ID> <container ADI>`    

sabitlendi artik  
calistirmak icin sabit volumelarla birlikte   
`sudo docker run -ti --rm --mount src=kali-root,dst=/root --mount src=kali-postgres,dst=/var/lib/postgresql <container ADI>`    

bu kadar, bu ustteki satiri alip asagidaki gibi bir bash scriptine koyabilirsiniz    
sonra chmod +x scriptinizinadi.sh yaparsaniz, direkt scripti ./ seklinde calistirdiginizda sizi KALI promptuna atacak.  
`#! /bin/bash`    
`sudo docker run -ti --rm --mount src=kali-root,dst=/root --mount src=kali-postgres,dst=/var/lib/postgresql <container ADI>`   


kurulum sonrasi docker i daha kolay kullanmak her acilista calisssin saglamak falan istiyorsan suraya bak : https://docs.docker.com/engine/install/linux-postinstall/  
