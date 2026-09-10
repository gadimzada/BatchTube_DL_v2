@echo off
chcp 65001 >nul
title YouTube Downloader V2 (BATCH by ROGER)

:lang_menu
cls
echo ===============================================
echo        LANGUAGE / DİL SEÇİMİ / DİL SEÇİMİ
echo ===============================================
echo [1] English
echo [2] Türkçe
echo [3] Azərbaycan dili
echo.
set "lang="
set /p lang="Select / Seçin / Seçin (1-3): "

if "%lang%"=="1" goto lang_en
if "%lang%"=="2" goto lang_tr
if "%lang%"=="3" goto lang_az
goto lang_menu

:lang_en
set "m_ytdlp_err=[ERROR] yt-dlp.exe not found! Place it in the script folder."
set "m_ffmpeg_err=[WARNING] ffmpeg.exe not found! High-res merge might fail."
set "m_dest=Enter save folder path (e.g., D:\YouTubeDownloads): "
set "m_mkdir=Folder created: "
set "m_browser_title=BROWSER SELECTION (FOR COOKIES)"
set "m_browser_prompt=Select browser (1-5) or [6] NO COOKIES (Fixes 'Could not copy database' error): "
set "m_browser_warn=WARNING: If you select a browser, make sure it is completely CLOSED, otherwise you may get a 'Could not copy cookie database' error!"
set "m_menu_title=ACTION SELECTION"
set "m_opt1=[1] Download Video (MP4 - Best)"
set "m_opt2=[2] Download Audio (MP3 - with Metadata)"
set "m_opt3=[3] Update yt-dlp"
set "m_opt4=[4] Exit"
set "m_choice=Make your choice: "
set "m_invalid=Invalid selection!"
set "m_link=Enter YouTube link: "
set "m_dl_vid=--- Downloading Video ---"
set "m_dl_aud=--- Downloading Audio ---"
set "m_success=[SUCCESS] Download complete!"
set "m_fail=[ERROR] Download failed. If you got a cookie error, return to the Browser Menu and select '[6] No Cookies'."
set "m_updating=Updating yt-dlp..."
set "m_next_title=Process complete. What next?"
set "m_next1=[1] Action Menu (Video/Audio/Update)"
set "m_next2=[2] Change Browser / Cookie Settings"
set "m_next3=[3] Exit"
goto init

:lang_tr
set "m_ytdlp_err=[HATA] yt-dlp.exe bulunamadı! Betik ile aynı klasöre koyun."
set "m_ffmpeg_err=[UYARI] ffmpeg.exe bulunamadı! Yüksek çözünürlükte birleştirme başarısız olabilir."
set "m_dest=Kayıt yolunu girin (Örn: D:\YouTubeDownloads): "
set "m_mkdir=Klasör oluşturuldu: "
set "m_browser_title=TARAYICI SEÇİMİ (ÇEREZLER İÇİN)"
set "m_browser_prompt=Tarayıcı seçin (1-5) veya [6] ÇEREZ KULLANMA ('Could not copy database' hatasını çözer): "
set "m_browser_warn=UYARI: Eğer bir tarayıcı seçerseniz, tarayıcının tamamen KAPALI olduğundan emin olun, aksi takdirde 'Could not copy cookie database' hatası alabilirsiniz!"
set "m_menu_title=İŞLEM SEÇİMİ"
set "m_opt1=[1] Video İndir (MP4 - En İyi Kalite)"
set "m_opt2=[2] Ses İndir (MP3 - Metadata ile)"
set "m_opt3=[3] yt-dlp Güncelle"
set "m_opt4=[4] Çıkış"
set "m_choice=Seçiminizi yapın: "
set "m_invalid=Geçersiz seçim!"
set "m_link=YouTube linkini girin: "
set "m_dl_vid=--- Video İndiriliyor ---"
set "m_dl_aud=--- Ses İndiriliyor ---"
set "m_success=[BAŞARILI] İndirme tamamlandı!"
set "m_fail=[HATA] İndirme başarısız. Çerez hatası aldıysanız, Tarayıcı Menüsüne dönüp '[6] Çerez Kullanma' seçeneğini deneyin."
set "m_updating=yt-dlp güncelleniyor..."
set "m_next_title=İşlem tamamlandı. Şimdi ne yapmak istersiniz?"
set "m_next1=[1] İşlem Menüsü (Video/Ses/Güncelleme)"
set "m_next2=[2] Tarayıcı / Çerez Ayarlarını Değiştir"
set "m_next3=[3] Çıkış"
goto init

:lang_az
set "m_ytdlp_err=[XƏTA] yt-dlp.exe tapılmadı! Faylı bu skriptlə eyni qovluğa qoyun."
set "m_ffmpeg_err=[XƏBƏRDARLIQ] ffmpeg.exe tapılmadı! Yüksək keyfiyyətli videoların birləşdirilməsi xəta verə bilər."
set "m_dest=Yaddaş qovluğunun yolunu daxil edin (Məs: D:\YouTubeDownloads): "
set "m_mkdir=Qovluq yaradıldı: "
set "m_browser_title=BRAUZER SEÇİMİ (KUKİLƏR ÜÇÜN)"
set "m_browser_prompt=Brauzer seçin (1-5) və ya [6] KUKİ İSTİFADƏ ETMƏ ('Could not copy database' xətasını həll edir): "
set "m_browser_warn=XƏBƏRDARLIQ: Əgər bir brauzer seçsəniz, onun tamamilə BAĞLI olduğundan əmin olun, əks halda 'Could not copy cookie database' xətası ala bilərsiniz!"
set "m_menu_title=ƏMƏLİYYAT SEÇİMİ"
set "m_opt1=[1] Video Yüklə (MP4 - Ən Yaxşı Keyfiyyət)"
set "m_opt2=[2] Səs Yüklə (MP3 - Metadata ilə)"
set "m_opt3=[3] yt-dlp Yenilə"
set "m_opt4=[4] Çıxış"
set "m_choice=Seçiminizi edin: "
set "m_invalid=Yanlış seçim!"
set "m_link=YouTube linkini daxil edin: "
set "m_dl_vid=--- Video Yüklənir ---"
set "m_dl_aud=--- Səs Yüklənir ---"
set "m_success=[UĞURLU] Yükləmə tamamlandı!"
set "m_fail=[XƏTA] Yükləmə alınmadı. Kuki xətası aldınızsa, Brauzer Menyusuna dönüb '[6] Kuki İstifadə Etmə' seçimini yoxlayın."
set "m_updating=yt-dlp yenilənir..."
set "m_next_title=Əməliyyat bitdi. İndi nə etmək istəyirsiniz?"
set "m_next1=[1] Əməliyyat Menyusu (Video/Səs/Yeniləmə)"
set "m_next2=[2] Brauzer / Kuki Ayarlarını Dəyiş"
set "m_next3=[3] Çıxış"
goto init

:init
where yt-dlp >nul 2>nul
if %errorlevel% neq 0 (
    if not exist "yt-dlp.exe" (
        echo %m_ytdlp_err%
        pause
        exit /b
    )
)

where ffmpeg >nul 2>nul
if %errorlevel% neq 0 (
    if not exist "ffmpeg.exe" (
        echo %m_ffmpeg_err%
        timeout /t 5 >nul
    )
)

:start
cls
echo ===============================================
echo        YouTube Downloader V2 (BATCH by ROGER)
echo ===============================================
echo.
set /p destination="%m_dest%"
if not exist "%destination%" (
    mkdir "%destination%"
    echo %m_mkdir% %destination%
)
echo.

:browser_menu
cls
echo ===============================================
echo               %m_browser_title%
echo ===============================================
echo %m_browser_warn%
echo.
echo [1] Google Chrome
echo [2] Microsoft Edge
echo [3] Mozilla Firefox
echo [4] Brave
echo [5] Opera
echo [6] NO COOKIES / ÇEREZSİZ İŞLEM / KUKİSİZ
echo.
set "b_choice="
set /p b_choice="%m_browser_prompt%"

if "%b_choice%"=="1" set "cookie_cmd=--cookies-from-browser chrome" & goto menu
if "%b_choice%"=="2" set "cookie_cmd=--cookies-from-browser edge" & goto menu
if "%b_choice%"=="3" set "cookie_cmd=--cookies-from-browser firefox" & goto menu
if "%b_choice%"=="4" set "cookie_cmd=--cookies-from-browser brave" & goto menu
if "%b_choice%"=="5" set "cookie_cmd=--cookies-from-browser opera" & goto menu
if "%b_choice%"=="6" set "cookie_cmd=" & goto menu

echo %m_invalid%
timeout /t 2 >nul
goto browser_menu

:menu
cls
echo ===============================================
echo               %m_menu_title%
echo ===============================================
echo %m_opt1%
echo %m_opt2%
echo %m_opt3%
echo %m_opt4%
echo.
set "choice="
set /p choice="%m_choice%"

if "%choice%"=="1" goto video
if "%choice%"=="2" goto audio
if "%choice%"=="3" goto update
if "%choice%"=="4" exit

echo %m_invalid%
timeout /t 2 >nul
goto menu

:video
cls
echo ===============================================
echo %m_opt1%
echo ===============================================
echo.
set /p link="%m_link%"
echo.
echo %m_dl_vid%
yt-dlp.exe %cookie_cmd% -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best" --merge-output-format mp4 -o "%destination%\%%(playlist_index)s - %%(title)s.%%(ext)s" "%link%"

if %ERRORLEVEL% EQU 0 (
    echo.
    echo %m_success%
) else (
    echo.
    echo %m_fail%
)
goto next

:audio
cls
echo ===============================================
echo %m_opt2%
echo ===============================================
echo.
set /p link="%m_link%"
echo.
echo %m_dl_aud%
yt-dlp.exe %cookie_cmd% -x --audio-format mp3 --audio-quality 0 --embed-thumbnail --add-metadata -o "%destination%\%%(title)s.%%(ext)s" "%link%"

if %ERRORLEVEL% EQU 0 (
    echo.
    echo %m_success%
) else (
    echo.
    echo %m_fail%
)
goto next

:update
cls
echo ===============================================
echo %m_opt3%
echo ===============================================
echo %m_updating%
yt-dlp.exe -U
pause
goto menu

:next
echo.
echo =======================================================================
echo        %m_next_title%
echo =======================================================================
echo %m_next1%
echo %m_next2%
echo %m_next3%
echo.
set "continue="
set /p continue="%m_choice%"

if "%continue%"=="1" goto menu
if "%continue%"=="2" goto browser_menu
if "%continue%"=="3" exit

echo %m_invalid%
timeout /t 2 >nul
goto next