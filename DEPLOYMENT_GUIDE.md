# 🚀 CyberMinds Domain Bağlama Rehberi

## Yöntem 1: Netlify ile Deployment (ÖNERİLEN - EN KOLAY)

### Adım 1: Netlify'a Kayıt Olun
1. **https://app.netlify.com/signup** adresine gidin
2. Email veya GitHub ile kayıt olun (ücretsiz)

### Adım 2: Site Yükleyin
1. Netlify dashboard'a giriş yapın
2. **"Add new site"** → **"Deploy manually"** seçin
3. `cyberminds-deploy.zip` dosyasını sürükleyip bırakın
4. Deploy tamamlanana kadar bekleyin (1-2 dakika)

### Adım 3: Custom Domain Ekleyin
1. Deploy edilen sitenize tıklayın
2. **"Site settings"** → **"Domain management"** → **"Add custom domain"**
3. `cyberminds.online` yazın ve **"Verify"** tıklayın
4. **"Add domain"** butonuna tıklayın
5. Netlify size DNS ayarlarını gösterecek

### Adım 4: GoDaddy DNS Ayarları

#### GoDaddy'ye Giriş Yapın
1. **https://dcc.godaddy.com/domains** adresine gidin
2. **cyberminds.online** domain'inizi bulun
3. **"DNS"** butonuna tıklayın

#### DNS Kayıtlarını Güncelleyin

**Mevcut A ve CNAME kayıtlarını silin, sonra şunları ekleyin:**

##### A Kayıtları (Netlify IP'leri):
```
Type: A
Name: @
Value: 75.2.60.5
TTL: 1 Hour (veya Auto)
```

##### CNAME Kaydı:
```
Type: CNAME
Name: www
Value: [NETLIFY-SITE-ADI].netlify.app
TTL: 1 Hour
```

**NOT:** `[NETLIFY-SITE-ADI]` yerine Netlify'ın size verdiği site adını yazın
Örnek: `amazing-curie-123456.netlify.app`

### Adım 5: SSL Sertifikası (Otomatik)
- Netlify otomatik olarak SSL sertifikası sağlar
- DNS değişikliklerinden sonra 24 saat içinde aktif olur
- **"Domain settings"** → **"HTTPS"** → **"Verify DNS configuration"**

### Adım 6: Test Edin
DNS değişiklikleri 1-48 saat içinde yayılır:
- https://cyberminds.online
- https://www.cyberminds.online

**DNS yayılımını kontrol edin:** https://dnschecker.org

---

## Yöntem 2: GitHub Pages ile Deployment

### Adım 1: GitHub Repository Oluşturun
1. **https://github.com/new** adresine gidin
2. Repository adı: `cyberminds-online`
3. **Public** seçin
4. **"Create repository"** tıklayın

### Adım 2: Dosyaları Yükleyin
Terminal'de şu komutları çalıştırın:

```bash
cd /Users/sudeesmer/Desktop/cyberminds.online
git remote add origin https://github.com/KULLANICI_ADINIZ/cyberminds-online.git
git branch -M main
git push -u origin main
```

### Adım 3: GitHub Pages'i Etkinleştirin
1. Repository'de **"Settings"** → **"Pages"**
2. Source: **"Deploy from a branch"**
3. Branch: **"main"** → **"/ (root)"**
4. **"Save"** tıklayın

### Adım 4: GoDaddy DNS Ayarları (GitHub Pages için)

#### A Kayıtları:
```
Type: A, Name: @, Value: 185.199.108.153
Type: A, Name: @, Value: 185.199.109.153
Type: A, Name: @, Value: 185.199.110.153
Type: A, Name: @, Value: 185.199.111.153
```

#### CNAME Kaydı:
```
Type: CNAME
Name: www
Value: KULLANICI_ADINIZ.github.io
```

### Adım 5: GitHub'da HTTPS'yi Etkinleştirin
1. **Settings** → **Pages**
2. **"Enforce HTTPS"** seçeneğini işaretleyin

---

## Yöntem 3: Vercel ile Deployment

### Adım 1: Vercel'e Kayıt Olun
1. **https://vercel.com/signup** adresine gidin
2. GitHub ile giriş yapın (önerilir)

### Adım 2: Proje İçe Aktarın
1. **"Add New"** → **"Project"**
2. GitHub repository'nizi import edin
3. Deploy ayarlarını onaylayın

### Adım 3: Custom Domain
1. Project **"Settings"** → **"Domains"**
2. `cyberminds.online` ekleyin
3. Vercel size DNS ayarlarını gösterecek

### Adım 4: GoDaddy DNS (Vercel için)
Vercel'in verdiği A kaydı ve CNAME'i GoDaddy'ye ekleyin

---

## 📋 Kontrol Listesi

- [ ] Hosting platformuna kayıt oldum (Netlify/GitHub/Vercel)
- [ ] Web sitemi deploy ettim
- [ ] Custom domain ekledim
- [ ] GoDaddy DNS ayarlarını güncelledim
- [ ] SSL sertifikası aktif oldu
- [ ] Site test edildi ve çalışıyor

## 🔧 Sorun Giderme

### DNS değişiklikleri yayılmadı
- 24-48 saat bekleyin
- https://dnschecker.org ile kontrol edin
- GoDaddy DNS ayarlarını tekrar kontrol edin

### SSL sertifikası çalışmıyor
- DNS'in tam yayılmasını bekleyin
- Hosting platformunda SSL'i manuel olarak tetikleyin
- HTTPS'yi zorunlu kılın

### Site açılmıyor
- Hosting platformunda deploy durumunu kontrol edin
- Browser cache'i temizleyin
- Incognito modda deneyin

## 📞 Destek

Sorun yaşarsanız:
- Netlify: https://answers.netlify.com
- GitHub Pages: https://docs.github.com/pages
- GoDaddy: https://www.godaddy.com/help

---

## 🎉 Tebrikler!

Domain bağlama işlemi tamamlandığında, siteniz şu adreslerde yayında olacak:
- https://cyberminds.online
- https://www.cyberminds.online

**Güvenli ve profesyonel bir siber güvenlik web siteniz hazır!** 🛡️

