#  Merhaba Gradio

Bu proje, basit bir Gradio arayüzü ile çalışan bir Python uygulamasıdır. Kullanıcıdan bir isim alır ve ona özel bir "Merhaba" mesajı döner. Docker kullanılarak izole bir ortamda çalıştırılabilir.

##  Özellikler

- Python 3.11
- Gradio 5.46.0 arayüzü
- Basit metin girişi ve çıktısı
- Docker ile kolay kurulum
- Türkçe dil desteği

##  Arayüz Görünümü

Kullanıcıdan isim alır ve "Merhaba, <isim>!" şeklinde bir karşılama mesajı gösterir.

##  Gereksinimler

- [Docker](https://www.docker.com/) yüklü olmalıdır.
- Alternatif olarak doğrudan Python ortamında çalıştırabilirsiniz (aşağıda anlatıldı).

---

##  Docker ile Çalıştırma

### 1. Proje klasörüne gidin:

```bash
cd proje-klasoru

### 2. Docker imajını oluşturun
docker build -t merhaba-gradio .

### 3. Uygulamayı başlatın
docker run -p 7860:7860 merhaba-gradio

### 4. Tarayıcıda açın
http://localhost:7860
