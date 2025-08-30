@echo off
echo 🚀 GTU Live Platform - GitHub Upload Script
echo.

REM Change to project directory
cd /d "c:\Users\3rcal\OneDrive\Masaüstü\yayın"

REM Initialize git if not exists
if not exist ".git" (
    echo ⚡ Git başlatılıyor...
    git init
)

REM Add all files
echo 📦 Dosyalar ekleniyor...
git add .

REM Commit
echo ✍️ Commit oluşturuluyor...
git commit -m "🎉 GTU Live Platform - Ready for deployment

✨ Features:
- React + TypeScript frontend
- Node.js + Socket.IO backend
- Real-time chat system
- Emoji reactions  
- Admin panel
- Mobile responsive
- Vercel ready deployment

🚀 Deploy: Upload to GitHub and deploy on Vercel!"

REM Instructions for user
echo.
echo ⏭️  SONRAKI ADIMLAR:
echo.
echo 1. GitHub.com'da yeni repo oluştur: 'gtu-live-platform'  
echo 2. Aşağıdaki komutu çalıştır ^(KULLANICI_ADI'ni değiştir^):
echo.
echo    git remote add origin https://github.com/KULLANICI_ADI/gtu-live-platform.git
echo    git branch -M main
echo    git push -u origin main
echo.
echo 3. Vercel.com'da bu repo'yu import et
echo.
echo 🎯 5 dakikada live site!
echo.
pause