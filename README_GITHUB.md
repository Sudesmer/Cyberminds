# 🛡️ CyberMinds - Siber Güvenlik Web Sitesi

<div align="center">

![CyberMinds](https://img.shields.io/badge/CyberMinds-Siber%20Güvenlik-blue?style=for-the-badge&logo=shield&logoColor=white)
![HTML5](https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white)
![CSS3](https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=css3&logoColor=white)
![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black)

**Modern, Profesyonel ve Güvenli Web Çözümü**

[🌐 Canlı Demo](https://cyberminds.online) • [📖 Dokümantasyon](./GITHUB_DEPLOYMENT.md) • [🐛 Sorun Bildir](https://github.com/Sudesmer/Cyberminds-Site-/issues)

</div>

---

## 📋 İçindekiler

- [Özellikler](#-özellikler)
- [Hızlı Başlangıç](#-hızlı-başlangıç)
- [Teknolojiler](#-teknolojiler)
- [Kurulum](#-kurulum)
- [Deployment](#-deployment)
- [Proje Yapısı](#-proje-yapısı)
- [Katkıda Bulunma](#-katkıda-bulunma)
- [Lisans](#-lisans)

---

## ✨ Özellikler

### 🎨 Tasarım
- ✅ **Modern UI/UX**: Gradient arka planlar ve glassmorphism efektleri
- ✅ **Responsive**: Tüm cihazlarda mükemmel görünüm
- ✅ **Animasyonlar**: Smooth scroll ve hover efektleri
- ✅ **Professional**: Siber güvenlik temalı profesyonel tasarım

### 🚀 Performans
- ✅ **Hızlı Yükleme**: < 2 saniye yükleme süresi
- ✅ **Optimize**: Minified CSS ve JavaScript
- ✅ **SEO Friendly**: Arama motorları için optimize edilmiş
- ✅ **CDN Ready**: Netlify/Vercel/GitHub Pages uyumlu

### 🔒 Güvenlik
- ✅ **HTTPS**: SSL/TLS sertifikası desteği
- ✅ **Form Validation**: Client-side validasyon
- ✅ **Secure Headers**: Modern güvenlik başlıkları
- ✅ **No Dependencies**: Bağımlılık yok, saf HTML/CSS/JS

### 📱 Mobil Uyumlu
- ✅ **Mobile First**: Mobil öncelikli tasarım
- ✅ **Touch Friendly**: Dokunmatik ekran optimizasyonu
- ✅ **Hamburger Menu**: Mobil navigasyon menüsü
- ✅ **Responsive Grid**: Esnek grid sistem

---

## 🚀 Hızlı Başlangıç

### 📦 Yerel Kurulum

```bash
# Repository'yi klonla
git clone https://github.com/Sudesmer/Cyberminds-Site-.git

# Klasöre git
cd Cyberminds-Site-

# Tarayıcıda aç
open index.html
```

### 🌐 Veya Yerel Sunucu ile

```bash
# Python ile
python -m http.server 8000

# Node.js ile
npx serve .

# PHP ile
php -S localhost:8000
```

Ardından tarayıcınızda: `http://localhost:8000`

---

## 🛠️ Teknolojiler

<div align="center">

| Teknoloji | Versiyon | Kullanım |
|-----------|----------|----------|
| HTML5 | Latest | Semantic markup |
| CSS3 | Latest | Modern styling, animations |
| JavaScript | ES6+ | Interaktif özellikler |
| Font Awesome | 6.0.0 | İkonlar |
| Google Fonts | - | Inter font ailesi |

</div>

### Özellikler:
- 🎨 **CSS Grid & Flexbox**: Modern layout sistemleri
- 🎭 **CSS Animations**: Smooth transitions ve keyframes
- 📱 **Media Queries**: Responsive breakpoints
- 🎯 **Vanilla JavaScript**: Dependency yok
- 🌈 **CSS Gradients**: Modern renk geçişleri

---

## 📂 Proje Yapısı

```
Cyberminds-Site-/
│
├── 📄 index.html              # Ana HTML dosyası
├── 🎨 styles.css              # CSS stilleri
├── ⚙️ script.js               # JavaScript kodları
├── 🖼️ favicon.ico             # Site ikonu
│
├── 📋 README.md               # Proje dokümantasyonu
├── 📘 GITHUB_DEPLOYMENT.md    # GitHub deployment rehberi
├── 🔧 netlify.toml            # Netlify yapılandırması
├── 🔧 vercel.json             # Vercel yapılandırması
├── 🌐 CNAME                   # Custom domain ayarı
│
├── 🚀 push-to-github.sh       # GitHub push scripti
└── .github/
    └── workflows/
        └── deploy.yml         # GitHub Actions CI/CD
```

---

## 🚀 Deployment

### GitHub Pages (Önerilen)

1. **Repository ayarları**: `Settings` → `Pages`
2. **Source**: `main` branch, `/ (root)` folder
3. **Save** butonuna tıkla
4. ⏳ 2-3 dakika bekle
5. ✅ Site yayında: `https://sudesmer.github.io/Cyberminds-Site-/`

### Netlify

[![Deploy to Netlify](https://www.netlify.com/img/deploy/button.svg)](https://app.netlify.com/start/deploy?repository=https://github.com/Sudesmer/Cyberminds-Site-)

### Vercel

[![Deploy with Vercel](https://vercel.com/button)](https://vercel.com/new/clone?repository-url=https://github.com/Sudesmer/Cyberminds-Site-)

### Manual Script ile

```bash
# Push scripti ile
./push-to-github.sh

# Veya manuel
git add .
git commit -m "Update"
git push origin main
```

---

## 🎨 Renk Paleti

```css
/* Ana Renkler */
Primary Blue:    #2563eb
Secondary Blue:  #3b82f6
Gradient Start:  #667eea
Gradient End:    #764ba2
Background:      #f8fafc
Text Dark:       #1e293b
```

---

## 📱 Responsive Breakpoints

| Cihaz | Breakpoint | CSS Media Query |
|-------|------------|-----------------|
| 📱 Mobile | < 768px | `@media (max-width: 768px)` |
| 📱 Tablet | 768px - 1199px | `@media (min-width: 768px)` |
| 💻 Desktop | 1200px+ | `@media (min-width: 1200px)` |

---

## 🔧 Geliştirme

### Yeni Özellik Ekleme

```bash
# Yeni branch oluştur
git checkout -b feature/yeni-ozellik

# Değişiklikleri yap
# ...

# Commit yap
git add .
git commit -m "feat: yeni özellik eklendi"

# Push yap
git push origin feature/yeni-ozellik

# Pull Request oluştur
```

### Test

```bash
# HTML validasyonu
# https://validator.w3.org/

# CSS validasyonu
# https://jigsaw.w3.org/css-validator/

# Lighthouse skorları (Chrome DevTools)
# Performance, Accessibility, Best Practices, SEO
```

---

## 🤝 Katkıda Bulunma

Katkılarınızı bekliyoruz! Lütfen şu adımları izleyin:

1. 🍴 Fork edin
2. 🌿 Feature branch oluşturun (`git checkout -b feature/AmazingFeature`)
3. 💾 Commit yapın (`git commit -m 'feat: Add some AmazingFeature'`)
4. 📤 Push edin (`git push origin feature/AmazingFeature`)
5. 🎉 Pull Request oluşturun

### Commit Mesaj Formatı

```
feat: Yeni özellik
fix: Bug düzeltmesi
docs: Dokümantasyon değişikliği
style: Kod formatı (beyaz boşluk, noktalı virgül vb.)
refactor: Kod refactoring
test: Test ekleme veya düzeltme
chore: Build process veya yardımcı araç değişiklikleri
```

---

## 📊 İstatistikler

<div align="center">

![GitHub repo size](https://img.shields.io/github/repo-size/Sudesmer/Cyberminds-Site-)
![GitHub last commit](https://img.shields.io/github/last-commit/Sudesmer/Cyberminds-Site-)
![GitHub stars](https://img.shields.io/github/stars/Sudesmer/Cyberminds-Site-?style=social)
![GitHub forks](https://img.shields.io/github/forks/Sudesmer/Cyberminds-Site-?style=social)

</div>

---

## 📄 Lisans

Bu proje MIT lisansı altında lisanslanmıştır. Detaylar için [LICENSE](LICENSE) dosyasına bakın.

---

## 📞 İletişim

<div align="center">

**CyberMinds Siber Güvenlik**

🌐 Website: [cyberminds.online](https://cyberminds.online)  
📧 Email: info@cyberminds.online  
📱 Telefon: +90 (212) 555 0123  

[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://linkedin.com)
[![Twitter](https://img.shields.io/badge/Twitter-1DA1F2?style=for-the-badge&logo=twitter&logoColor=white)](https://twitter.com)
[![GitHub](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/Sudesmer)

</div>

---

## 🙏 Teşekkürler

- [Font Awesome](https://fontawesome.com) - İkonlar için
- [Google Fonts](https://fonts.google.com) - Inter font ailesi için
- [GitHub Pages](https://pages.github.com) - Hosting için

---

<div align="center">

**⭐ Bu projeyi beğendiyseniz yıldız vermeyi unutmayın! ⭐**

**Made with ❤️ by CyberMinds Team**

</div>

