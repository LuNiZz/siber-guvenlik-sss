<a name="top"></a>
<h1 align="center">CV Challenge</h1>

## Sertifika
Özgeçmişinizde;

AWS için: <a href="https://aws.amazon.com/certification/certified-cloud-practitioner/">AWS Cloud Practitioner</a>

AZURE için: <a href="https://docs.microsoft.com/en-us/learn/certifications/exams/az-900">AZ-900</a>

GCP için: <a href="https://cloud.google.com/certification/cloud-digital-leader">Google Cloud Digital Leader</a> 

sertifikası olması gerekir. Bu sertifikalar giriş seviyesinde cloud sertifikalarıdır. Daha ileri seviye bir sertifikanız varsa bu da kullanılabilir. Bu sınavların her birini 100 dolara online olarak alabilirsiniz.
<br><br><br><br>




## HTML
Özgeçmiş belgesinin <a href="https://developer.mozilla.org/en-US/docs/Web/HTML">HTML</a> ile hazırlanması gerekiyor. (Word, pdf olarak değil)
<br><br><br><br>




## CSS
Özgeçmiş hazırlanırken <a href="https://www.w3schools.com/css/">CSS</a> ile şekillendirmeniz gerekiyor. Tasarım zevkiniz yoksa hiç mühim değil. Şekilli şukullu olmasına gerek yok. Ancak web sayfasını açtığımızda biçimlendirilmemiş html sayfası görmektense biraz biçimlendirmek daha iyi olacaktır.
<br><br><br><br>




## Statik Website
HTML ile yazmış olduğunuz özgeçmişiniz;

AWS için: <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/WebsiteHosting.html">Amazon S3 statik websitesi</a>

AZURE için: <a href="https://docs.microsoft.com/en-us/azure/storage/blobs/storage-blob-static-website">Azure Storage statik site</a>

GCP için: <a href="https://cloud.google.com/storage/docs/hosting-static-website">Google Cloud Storage</a>

üzerinde çalışıyor olmalı. Aslında bunun için Netlify ve Github Pages kullanılması daha iyi olabilir. Ama şu an cloud bildiğimizi göstermeye çalışıyoruz. O yüzden üstteki servislerden birini kullanın.
<br><br><br><br>



## HTTPS
Özgeçmiş websitesinin güvenliği için HTTPS kullanmalıyız.

AWS için: <a href="https://aws.amazon.com/blogs/networking-and-content-delivery/amazon-s3-amazon-cloudfront-a-match-made-in-the-cloud/">Amazon CloudFront</a>

AZURE için: <a href="https://docs.microsoft.com/en-us/azure/storage/blobs/storage-custom-domain-name?tabs=azure-portal#map-a-custom-domain-with-https-enabled">Azure CDN</a>

GCP için: <a href="https://cloud.google.com/load-balancing/docs/https">Cloud CDN</a>

servislerinden birini kullanmanız gerekecek.
<br><br><br><br>




## DNS
Kendinize bir domain (alan adı) alın. 

AWS için: <a href="https://aws.amazon.com/route53/">Amazon Route53</a>

AZURE için: <a href="https://docs.microsoft.com/en-us/azure/cdn/cdn-map-content-to-custom-domain">Azure DNS</a>

GCP için: <a href="https://cloud.google.com/domains/docs">Cloud Domains</a>

veya bunlar dışında herhangi bir DNS sağlayıcıyı kullanabilirsiniz. Domain almak genelde 10 dolar civarı oluyor.
<br><br><br><br>




## Javascript
Özgeçmiş sayfanızın bir ziyaretçi sayacı olmalı. Bunu gerçekleştirebilmek için biraz Javascript yazmanız gerekiyor. <a href="https://www.codecademy.com/learn/introduction-to-javascript">Bu siteden javascripte başlayabilirsiniz.</a>
<br><br><br><br>




## Veritabanı
Ziyaretçi sayısını gösterebilmeniz ve güncelleyebilmeniz için bir veritabanı kullanmalısınız. 

AWS için: <a href="https://aws.amazon.com/dynamodb/">DynamoDB</a>

AZURE için: <a href="https://docs.microsoft.com/en-us/azure/cosmos-db/introduction">CosmosDB</a>'den <a href="https://docs.microsoft.com/en-us/azure/cosmos-db/table/introduction">Table API</a>

GCP için: <a href="https://cloud.google.com/firestore">Firestore</a>

servislerini kullanmanızı öneririm. (Veritabanı için istek-üzerine (on-demand) fiyatlandırma seçerseniz ve veritabanınızda kullanmanız gerekenden daha fazla veri saklamazsanız veya göstermezseniz neredeyse hiç para ödemeden kullanacanksınız.)
<br><br><br><br>




## API
Direk javascript üzerinden veritabanı ile iletişim kurmayın. Bunun yerine web uygulamanızdan gelen istekleri kabul eden ve veritabanınız ile iletişime geçen bir API yaratın. Bunun için kullandığınız bulut servisinin API Geçidini ve Lambda servislerini kullanın. Yaptığımız işlemler için bu servisler ya ücretsiz ya da çok ucuz olacaktır.
<br><br><br><br>




## Python
Lambda fonksiyonu için biraz kod yazmanız gerekecek; daha fazla Javascript kullanabilirsiniz ancak şu anki amacımız için Python'u ve bulut servisinin sağladığı kütüphaneleri biraz keşfetmek daha iyi olacaktır.

AWS için: <a href="https://boto3.amazonaws.com/v1/documentation/api/latest/index.html">boto3</a>

AZURE için: <a href="https://github.com/Azure/azure-sdk-for-python">Azure SDK</a>

GCP için: <a href="https://cloud.google.com/python/docs/reference">Google Cloud Client Libraries</a>

Buraya ucuz ve ücretsiz bir <a href="https://www.learnpython.org/">Python kursu</a> bırakıyorum. Diğer kaynaklar için [sss.lunizz.com](https://sss.lunizz.com) adresini ziyaret edebilirsiniz.
<br><br><br><br>




## Testler
Python kodunuza bazı testler eklemelisiniz. Buraya iyi python testleri yazmak için bir <a href="https://realpython.com/python-testing/">kaynak</a> bırakıyorum.
<br><br><br><br>




## Altyapı olarak kod (Infrastracture as Code)

API kaynaklarınızı -DynamoDB, CosmosDB, GoogleFunctions- elle bir yerlere tıklayarak ayarlamamalısınız. Bunun yerine onları;

AWS için: <a href="https://aws.amazon.com/serverless/sam/">AWS Sunucusuz Uygulama Modeli (SAM) şablonunda</a>

AZURE için: <a href="https://docs.microsoft.com/en-us/azure/azure-functions/functions-infrastructure-as-code">Azure Resource Manager (ARM) şablonunda</a>

GCP için: <a href="https://cloud.google.com/blog/topics/developers-practitioners/predictable-serverless-deployments-terraform">Terraform şablonunda</a>

belirleyin ve bulut servisinin sağladığı CLI'yi kullanarak deploy edin. Bu Infstatructure as Code veya kısaca IaC olarak geçer ve uzun zamanlı projelerde size zaman kazandırır.
<br><br><br><br>




## Kaynak Kontrolü
Backend API'ınızı veya sitenizin frontend kodunu her değiştirdiğinizde tekrar elle deploy etmek istemezsiniz. Kodunuza yaptığınız her değişiklikte otomatik olarak güncellenmesini istersiniz. (Bu <a href="https://help.github.com/en/actions/building-and-testing-code-with-continuous-integration/about-continuous-integration">devamlı integrasyon ve deployment</a> yani kısaca CI/CD olarak geçer)
<br><br><br><br>




## CI/CD (Backend)
Github Actions'u Serverless Application Model template veya python kodunuzu güncellemek için ayarlayın, siz kodunuzu güncellediğinizde Python testleriniz çalışacak. Eğer testten geçerse, Uygulamanız paketlenecek ve bulut servisinin sağladığı uygulama üzerinde yayınlanacak.
<br><br><br><br>




## CI/CD (Frontend)
Frontend kodu için bir Github reposu daha açın ve bu repo için de bir Github Actions ayarlayın, Değişiklik bulut servisinin sağladığı uygulama üzerinde otomatik olarak güncellenecek. Önemli Not: ASLA kimlik bilgilerinizi kaynak kontrolüne eklemeyin! Art niyetki kişiler bu bilgileri size karşı kullanabilir.
<br><br><br><br>




## Blog Post
Son olarak, bir blog yazısı açıp bu proje üstünde çalışırken öğrendiğiniz şeyleri yazıp özgeçmişinizin içine ekleyebilirsiniz. Eğer kendi blogunuz yoksa bu yazıyı <a href="https://dev.to">Dev.to</a> üzerinden yayınlayabilirsiniz.
<br><br><br><br>




## Daha fazlası için
Stratejiler, araçlar ve sizin cloud alanında iş bulmanızı sağlayabilecek daha fazla challenge için <a href="https://forrestbrazeal.gumroad.com/l/cloud-resume-challenge-book">the Cloud Resume Challenge book</a>'a bakabilirsiniz.
<br><br><br><br>




## Orijinal Kaynak
[Kaynak](https://cloudresumechallenge.dev/docs/the-challenge/)
