#!/bin/bash

# 🚀 GitHub'a Push Script
# Bu script projenizi GitHub'a yükler

echo "════════════════════════════════════════════════════"
echo "  🚀 CyberMinds GitHub Push Script"
echo "════════════════════════════════════════════════════"
echo ""

# Renk kodları
GREEN='\033[0;32m'
BLUE='\033[0;34m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Git kurulu mu kontrol et
if ! command -v git &> /dev/null; then
    echo -e "${RED}❌ Git yüklü değil!${NC}"
    echo "Git'i yüklemek için: https://git-scm.com/downloads"
    exit 1
fi

echo -e "${BLUE}📋 Git durumu kontrol ediliyor...${NC}"
git status

echo ""
echo -e "${YELLOW}⚠️  DİKKAT: SSH key veya Personal Access Token gerekiyor!${NC}"
echo ""
echo "Devam etmeden önce birini seçin:"
echo ""
echo "1️⃣  SSH Key (Önerilen)"
echo "   • https://github.com/settings/keys"
echo "   • 'New SSH key' butonuna tıkla"
echo "   • Aşağıdaki komutu çalıştır ve çıktıyı kopyala:"
echo "     cat ~/.ssh/id_ed25519.pub"
echo ""
echo "2️⃣  Personal Access Token"
echo "   • https://github.com/settings/tokens"
echo "   • 'Generate new token (classic)'"
echo "   • 'repo' izinlerini seç"
echo "   • Token'ı kopyala (sonra kullanacaksın)"
echo ""
read -p "Hazır mısınız? (y/n): " -n 1 -r
echo ""

if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo -e "${RED}❌ İptal edildi.${NC}"
    exit 1
fi

echo ""
echo -e "${BLUE}🔄 Push işlemi başlatılıyor...${NC}"
echo ""

# Değişiklikleri ekle
echo -e "${GREEN}✓ Dosyalar ekleniyor...${NC}"
git add .

# Commit yap
echo -e "${GREEN}✓ Commit yapılıyor...${NC}"
COMMIT_MSG="🚀 Update: $(date '+%Y-%m-%d %H:%M:%S')"
git commit -m "$COMMIT_MSG"

# Push yap
echo -e "${GREEN}✓ GitHub'a yükleniyor...${NC}"
echo ""
echo -e "${YELLOW}ℹ️  SSH key kullanmıyorsanız, username ve password/token isteyecek:${NC}"
echo "   Username: Sudesmer"
echo "   Password: [Personal Access Token'ınızı yapıştırın]"
echo ""

git push -u origin main

# Sonuç kontrolü
if [ $? -eq 0 ]; then
    echo ""
    echo -e "${GREEN}════════════════════════════════════════════════════${NC}"
    echo -e "${GREEN}  ✅ BAŞARILI! Proje GitHub'a yüklendi!${NC}"
    echo -e "${GREEN}════════════════════════════════════════════════════${NC}"
    echo ""
    echo "🔗 Repository: https://github.com/Sudesmer/Cyberminds-Site-"
    echo ""
    echo "📋 Sonraki Adımlar:"
    echo "1. GitHub Pages'i aktif et:"
    echo "   https://github.com/Sudesmer/Cyberminds-Site-/settings/pages"
    echo ""
    echo "2. Settings → Pages → Source:"
    echo "   • Branch: main"
    echo "   • Folder: / (root)"
    echo "   • Save butonuna tıkla"
    echo ""
    echo "3. 2-3 dakika sonra siteniz yayında olacak:"
    echo "   https://sudesmer.github.io/Cyberminds-Site-/"
    echo ""
    echo "4. Custom domain için (cyberminds.online):"
    echo "   • Custom domain: cyberminds.online"
    echo "   • GoDaddy DNS ayarlarını güncelle (GITHUB_DEPLOYMENT.md'ye bakın)"
    echo ""
else
    echo ""
    echo -e "${RED}════════════════════════════════════════════════════${NC}"
    echo -e "${RED}  ❌ HATA! Push işlemi başarısız oldu.${NC}"
    echo -e "${RED}════════════════════════════════════════════════════${NC}"
    echo ""
    echo "🔧 Çözümler:"
    echo ""
    echo "1. SSH Key kurulumu (Önerilen):"
    echo "   ssh-keygen -t ed25519 -C 'your_email@example.com'"
    echo "   cat ~/.ssh/id_ed25519.pub"
    echo "   # Çıktıyı https://github.com/settings/keys adresine ekle"
    echo ""
    echo "2. Veya GitHub Desktop kullan (En Kolay):"
    echo "   https://desktop.github.com/"
    echo ""
    echo "3. Detaylı rehber için:"
    echo "   cat GITHUB_DEPLOYMENT.md"
    echo ""
fi

