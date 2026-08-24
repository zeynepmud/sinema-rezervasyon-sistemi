#  Sinema Veritabanı

Bir sinemanın film, salon, koltuk, seans, kullanıcı, rezervasyon ve ödeme süreçlerini yönetmek amacıyla tasarlanmış ilişkisel veritabanı projesidir.

Proje kapsamında kullanıcıların bilet rezervasyonu yapabilmesi, rezervasyonlara ait ödeme bilgilerinin tutulması ve sistem üzerindeki işlemlerin loglanması sağlanmaktadır.

# Kullanılan Teknolojiler

- MySQL
- MySQL Workbench

# Veritabanı Yapısı

Veritabanı aşağıdaki temel tablolardan oluşmaktadır:

| Tablo               | Açıklama                                                              |
| ------------------- | --------------------------------------------------------------------- |
| `film`              | Sinemada gösterilen filmlerin bilgilerini tutar.                      |
| `salon`             | Sinema salonlarının bilgilerini tutar.                                |
| `koltuk`            | Salonlara ait koltukların bilgilerini tutar.                          |
| `seans`             | Filmlerin hangi salonda, hangi tarih ve saatte gösterileceğini tutar. |
| `kullanıcı`         | Sisteme kayıtlı kullanıcıların bilgilerini tutar.                     |
| `rezervasyon`       | Kullanıcılar tarafından oluşturulan rezervasyonları tutar.            |
| `seans_rezervasyon` | Rezervasyon ve seans arasındaki ilişkiyi sağlayan ara tablodur.       |
| `ödeme`             | Rezervasyonlara ait ödeme kayıtlarını tutar.                          |
| `log`               | Sistem üzerinde gerçekleştirilen işlemlerin kayıtlarını tutar.        |

Ayrıca `kullanıcırezervasyonlar` adında, kullanıcıların ad-soyad bilgileri ile rezervasyon ID'lerini birlikte görüntülemeyi sağlayan bir VIEW bulunmaktadır.

# Tablolar Arasındaki İlişkiler

Bir salon, birden fazla koltuğa sahip olabilir. (1-N)

Bir salon, birden fazla seansa ev sahipliği yapabilir. (1-N)

Bir film, birden fazla seansta gösterilebilir. (1-N)

Bir kullanıcı, birden fazla rezervasyon oluşturabilir. (1-N)

Bir rezervasyon, birden fazla seans ile ilişkilendirilebilir.

seans_rezervasyon tablosu, rezervasyon ve seans arasındaki çoktan çoğa (N-N) ilişkiyi sağlar.

Bir rezervasyon, bir veya birden fazla ödeme kaydına sahip olabilir. (1-N)

# ER Diagram

Veritabanının Entity Relationship Diagram (ER Diagram) gösterimi sinema_er_diagram.png dosyasında bulunmaktadır:


# Uygulanan Kısıtlamalar

Veritabanında veri bütünlüğünü ve tutarlılığını sağlamak amacıyla çeşitli kısıtlamalar uygulanmıştır.

### Primary Key

Tüm tablolarda PRIMARY KEY tanımlanmıştır.

- `koltuk` tablosunda bileşik (composite) primary key kullanılmıştır.
- `seans_rezervasyon` tablosunda da bileşik (composite) primary key kullanılmıştır.

### Unique

* `salon.SalonAdı` alanı **UNIQUE** olarak tanımlanmıştır.
* Böylece aynı isimde birden fazla salon oluşturulması engellenmiştir.

### Foreign Key

Tablolar arasındaki referans bütünlüğünü sağlamak amacıyla **FOREIGN KEY** kullanılmıştır.

Başlıca foreign key ilişkileri:

-  `koltuk.SalonID`
-  `seans.FilmID`
- `seans.SalonID`
- `seans_rezervasyon.SeansID`
- `seans_rezervasyon.RezervasyonID`
- `ödeme.RezervasyonID`

### ON DELETE

Bazı ilişkilerde bağlı kayıtların otomatik olarak temizlenmesi için ON DELETE CASCADE kullanılmıştır.

Bazı ilişkilerde ise ana kayıt silindiğinde ilişkili kaydın korunması amacıyla ON DELETE SET NULL kullanılmıştır.

-  `seans.FilmID` → ON DELETE SET NULL
-  `rezervasyon.KullanıcıID` → ON DELETE SET NULL

Bu sayede ana kayıt silindiğinde ilgili kayıtların gereksiz şekilde silinmesi önlenmiştir.

### CHECK Constraint

`ödeme.Tutar` alanına:

``` CHECK (Tutar > 0) ``` kısıtlaması uygulanmıştır.

Bu kısıtlama sayesinde **0 veya negatif ödeme tutarlarının** veritabanına eklenmesi engellenmektedir.

# View

Projede `kullanıcırezervasyonlar` isimli bir VIEW bulunmaktadır.

Bu view, kullanıcıların:

-  Adı
- Soyadı
- Rezervasyon ID'si

bilgilerini birlikte görüntülemeyi sağlar.

Böylece ilgili bilgilerin farklı tablolardan tekrar tekrar sorgulanması yerine hazır bir görünüm üzerinden erişilmesi mümkün hale getirilmiştir.

#  Proje İçeriği

```
sinema/
│
├── sinema.sql
├── sinema_er_diagram.png
└── README.md
```

# sinema.sql

Veritabanının oluşturulması, tabloların tanımlanması, ilişkilerin kurulması, kısıtlamaların eklenmesi ve gerekli verilerin oluşturulmasını içeren SQL dosyasıdır.

# sinema_er_diagram.png

MySQL Workbench kullanılarak oluşturulan veritabanı ER Diagram'ıdır.

# Kurulum

Projeyi çalıştırmak için:

1. MySQL Server ve MySQL Workbench'i yükleyin.
2. Bu repository'yi klonlayın.
3. `sinema.sql` dosyasını MySQL Workbench'te açın.
4. SQL scriptini çalıştırın.
5. `sinema` veritabanı oluşturulduktan sonra tabloları ve ilişkileri inceleyebilirsiniz.

# Projenin Amacı

Bu proje ile ilişkisel veritabanı tasarımı kapsamında;

* Tablo oluşturma
* Primary Key ve Foreign Key kullanımı
* Bileşik anahtarlar
* Tablo ilişkileri
* 1-N ve N-N ilişkiler
* Referential Integrity
* `ON DELETE CASCADE`
* `ON DELETE SET NULL`
* `UNIQUE` ve `CHECK` kısıtlamaları
* View oluşturma
* MySQL Workbench ile veritabanı tasarımı

konularında uygulamalı bir çalışma gerçekleştirilmiştir.
