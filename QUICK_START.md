# ⚡ Hızlı Başlangıç - cyberminds.online

## 🎯 3 Adımda Domain Bağlama

### 1️⃣ Netlify'a Deploy Et (5 dakika)

```
1. https://app.netlify.com/drop adresine git
2. cyberminds-deploy.zip dosyasını sürükle-bırak
3. Deploy tamamlanana kadar bekle
4. Site adını not al (örn: amazing-curie-123456.netlify.app)
```

### 2️⃣ Custom Domain Ekle (2 dakika)

```
1. Netlify'da "Site settings" → "Domain management"
2. "Add custom domain" tıkla
3. "cyberminds.online" yaz ve ekle
4. DNS ayarlarını not al
```

### 3️⃣ GoDaddy DNS Ayarla (5 dakika)

```
1. https://dcc.godaddy.com/domains → cyberminds.online → DNS
2. Mevcut A ve CNAME kayıtlarını sil
3. Yeni kayıtları ekle:
   
   A Kaydı:
   - Name: @
   - Value: 75.2.60.5
   
   CNAME Kaydı:
   - Name: www
   - Value: [NETLIFY-SITE-ADI].netlify.app

4. Kaydet ve 24 saat bekle
```

## ✅ Tamamlandı!

Site 24 saat içinde şu adreslerde yayında olacak:
- https://cyberminds.online
- https://www.cyberminds.online

---

## 📦 Dosyalar

- `cyberminds-deploy.zip` - Deploy için hazır paket
- `DEPLOYMENT_GUIDE.md` - Detaylı rehber
- `GODADDY_DNS_CONFIG.txt` - DNS ayar şablonu

## 🆘 Yardım

Sorun mu yaşıyorsun? `DEPLOYMENT_GUIDE.md` dosyasına bak!

