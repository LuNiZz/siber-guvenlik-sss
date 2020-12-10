once docker.io yukluyosunuz snapten.. yada git get.docker.com dan falan yukle bir yerden...  
sonra..  

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
`apt install nmap wpscan netcat dirb nikto binwalk git arp-scan dns-utils`      
`apt install metasploit-framework`      
  
ifconfig falan calismiyacaktir ping vs onlari bi ekleyelim  
`apt install net-tools`     
`apt install iputils-ping`    

eksikleri tamamladik... simdi bunu sabitleyelim..  
  
  
exit diyip cikiyoruz container dan  
`sudo docker ps -a`    
sudo docker container ls bu komutla container ID yi gorebilirsin conem.  
`sudo docker commit <CONTAINER ID> LuNiZz-KALI`    

sabitlendi artik  
calistirmak icin sabit volumelarla birlikte   
`sudo docker run -ti --rm --mount src=kali-root,dst=/root --mount src=kali-postgres,dst=/var/lib/postgresql LuNiZz-KALI`    

bu kadar, bu ustteki satiri alip asagidaki gibi bir bash scriptine koyabilirsiniz    
sonra chmod +x scriptinizinadi.sh yaparsaniz, direkt scripti ./ seklinde calistirdiginizda sizi KALI promptuna atacak.  
`#! /bin/bash`    
`sudo docker run -ti --rm --mount src=kali-root,dst=/root --mount src=kali-postgres,dst=/var/lib/postgresql LuNiZz-KALI`   


kurulum sonrasi docker i daha kolay kullanmak her acilista calisssin saglamak falan istiyorsan suraya bak : https://dos.docker.com/engine/install/linux-postinstall/  
