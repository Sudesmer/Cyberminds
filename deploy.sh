#!/bin/bash

# CyberMinds Otomatik Deployment Script
# Bu script web sitenizi GitHub'a yükler ve GitHub Pages'i etkinleştirir

echo "╔══════════════════════════════════════════════════════════════╗"
echo "║                                                              ║"
echo "║     🚀 CYBERMINDS.ONLINE - OTOMATIK DEPLOYMENT              ║"
echo "║                                                              ║"
echo "╚══════════════════════════════════════════════════════════════╝"
echo ""

# Renk kodları
GREEN='\033[0;32m'
BLUE='\033[0;34m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# GitHub kullanıcı adını al
echo -e "${BLUE}GitHub kullanıcı adınızı girin:${NC}"
read -p "> " GITHUB_USERNAME

if [ -z "$GITHUB_USERNAME" ]; then
    echo -e "${RED}❌ Kullanıcı adı boş olamaz!${NC}"
    exit 1
fi

REPO_NAME="cyberminds-online"

echo ""
echo -e "${YELLOW}📋 Yapılacaklar:${NC}"
echo "1. Git repository oluştur"
echo "2. Dosyaları commit et"
echo "3. GitHub'a push et"
echo "4. GitHub Pages'i etkinleştir"
echo ""

# Git repository kontrolü
if [ ! -d .git ]; then
    echo -e "${BLUE}🔧 Git repository oluşturuluyor...${NC}"
    git init
    git branch -M main
fi

# Dosyaları ekle
echo -e "${BLUE}📦 Dosyalar ekleniyor...${NC}"
git add .

# Commit
echo -e "${BLUE}💾 Commit yapılıyor...${NC}"
git commit -m "Deploy: CyberMinds cybersecurity website" 2>/dev/null || echo "Değişiklik yok veya zaten commit edilmiş"

# Remote kontrolü
if git remote | grep -q "origin"; then
    echo -e "${YELLOW}⚠️  Remote origin zaten mevcut, güncelleniyor...${NC}"
    git remote remove origin
fi

# Remote ekle
echo -e "${BLUE}🔗 GitHub remote ekleniyor...${NC}"
git remote add origin "https://github.com/$GITHUB_USERNAME/$REPO_NAME.git"

echo ""
echo -e "${GREEN}✅ Hazırlık tamamlandı!${NC}"
echo ""
echo -e "${YELLOW}═══════════════════════════════════════════════════════════════${NC}"
echo -e "${YELLOW}  ŞİMDİ YAPMANIZ GEREKENLER:${NC}"
echo -e "${YELLOW}═══════════════════════════════════════════════════════════════${NC}"
echo ""
echo -e "${BLUE}1. GitHub'da yeni repository oluşturun:${NC}"
echo "   → https://github.com/new"
echo "   → Repository adı: ${REPO_NAME}"
echo "   → Public seçin"
echo "   → 'Create repository' tıklayın"
echo ""
echo -e "${BLUE}2. Dosyaları GitHub'a yükleyin:${NC}"
echo "   → Terminal'de şu komutu çalıştırın:"
echo ""
echo -e "${GREEN}   git push -u origin main${NC}"
echo ""
echo -e "${BLUE}3. GitHub Pages'i etkinleştirin:${NC}"
echo "   → Repository → Settings → Pages"
echo "   → Source: 'Deploy from a branch'"
echo "   → Branch: 'main' → '/ (root)'"
echo "   → Save"
echo ""
echo -e "${BLUE}4. GoDaddy DNS ayarlarını yapın:${NC}"
echo "   → https://dcc.godaddy.com/domains"
echo "   → cyberminds.online → DNS"
echo "   → GODADDY_DNS_CONFIG.txt dosyasındaki ayarları uygulayın"
echo ""
echo -e "${YELLOW}═══════════════════════════════════════════════════════════════${NC}"
echo ""
echo -e "${GREEN}🎉 Script tamamlandı!${NC}"
echo ""

