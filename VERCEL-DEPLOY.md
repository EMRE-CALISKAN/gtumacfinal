# 🚀 Vercel Deployment Kılavuzu

## ✅ Proje Vercel için Hazır!

Projenizi Vercel'e deploy etmek için adım adım rehber:

## 📋 **Adım 1: GitHub'a Yükleme**

```bash
# Projeyi git'e ekle
cd "c:\Users\3rcal\OneDrive\Masaüstü\yayın"
git init
git add .
git commit -m "🎉 GTU Live Platform - Ready for Vercel"

# GitHub repo oluştur ve push et
git remote add origin https://github.com/KULLANICI_ADI/gtu-live-platform.git
git branch -M main
git push -u origin main
```

## 🌐 **Adım 2: Vercel Deploy**

### **2.1. Vercel'e Git**
- [vercel.com](https://vercel.com) → **Sign up with GitHub**

### **2.2. Import Repository**
- **"Import Git Repository"** 
- **GitHub hesabını bağla**
- **"gtu-live-platform"** reposunu seç
- **Import** butonuna tık

### **2.3. Build Settings (Otomatik Detect)**
Vercel otomatik olarak şunları algılar:
- ✅ **Framework:** Vite (React)
- ✅ **Root Directory:** `web`
- ✅ **Build Command:** `npm run build` 
- ✅ **Output Directory:** `dist`

**Bu ayarları değiştirmeyin, otomatik doğru!** ✅

### **2.4. Environment Variables (ÖNEMLİ!)**
**"Environment Variables"** sekmesinde şunları ekle:

```
VITE_API_URL = https://your-project-name.vercel.app
JWT_SECRET = gtu-live-super-secret-key-2024
ADMIN_EMAILS = admin@gtu.edu.tr,youremail@gtu.edu.tr
CLIENT_ORIGIN = https://your-project-name.vercel.app
NODE_ENV = production
```

⚠️ **Önemli:** `your-project-name` kısmını Vercel'in size vereceği domain ile değiştirin!

### **2.5. Deploy**
- **"Deploy"** butonuna tık
- **2-3 dakika bekle** ☕
- **✅ Deployment successful!**

## 🎯 **Adım 3: Domain Alma**

Deploy olduktan sonra Vercel size şuna benzer bir link verir:
```
https://gtu-live-platform-abc123.vercel.app
```

### **Environment Variables Güncelleme:**
1. **Vercel Dashboard** → **Project Settings** → **Environment Variables**
2. **VITE_API_URL** ve **CLIENT_ORIGIN**'ı yeni domain ile güncelle:
   ```
   VITE_API_URL = https://gtu-live-platform-abc123.vercel.app
   CLIENT_ORIGIN = https://gtu-live-platform-abc123.vercel.app
   ```
3. **Redeploy** et (Settings → Deployments → ⋯ → Redeploy)

## 🔧 **Adım 4: Test Etme**

### **4.1. Siteye Git**
- Vercel link'ini aç
- Giriş sayfası gözükmeli ✅

### **4.2. Giriş Test**
- GTU emailin ile giriş yap
- Ana sayfaya yönlenmeli ✅

### **4.3. Admin Paneli**
- `/admin` sayfasına git
- Oda oluştur:
  - **ID:** `test`
  - **Başlık:** `Test Yayını`
  - **URL:** `https://playerch2t24.pages.dev/ch?id=yayin1`
- **Kaydet** → ✅

### **4.4. Oda Test**
- Ana sayfada "test" odasına tıkla
- Yayın gözükmeli ✅
- Chat'te mesaj yazabilmeli ✅
- Tepki verebilmeli ✅

## ⚠️ **Olası Sorunlar & Çözümler**

### **Sorun 1: "API bağlantı hatası"**
**Çözüm:** Environment variables'ları kontrol et, doğru domain'i yazdığından emin ol.

### **Sorun 2: "Socket connection failed"**
**Çözüm:** Vercel'de Socket.IO sınırlı çalışabilir. Bu normal, basic chat çalışır.

### **Sorun 3: "404 Not Found"**
**Çözüm:** `vercel.json` routing'leri kontrol et, redeploy et.

### **Sorun 4: Admin paneli çalışmıyor**
**Çözüm:** `ADMIN_EMAILS` environment variable'ında kendi GTU emailini ekle.

## 🎉 **Deployment Tamamlandı!**

Artık projen live:
- 🌐 **Site:** `https://your-project.vercel.app`
- 🔧 **Admin:** `https://your-project.vercel.app/admin`
- 📱 **Mobile uyumlu**
- ⚡ **Otomatik HTTPS**
- 🔄 **Git push = otomatik deploy**

## 📞 **Destek**

Sorun yaşarsan:
1. **Vercel Dashboard** → **Functions** loglarını kontrol et
2. **Browser Console** (F12) hatalarına bak
3. **Environment Variables** doğru mu kontrol et

**🎯 2024'te 5 dakikada modern web app deploy etmek bu kadar kolay!** 🚀