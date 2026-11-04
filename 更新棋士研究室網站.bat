@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo ------------------------------------------------
echo   正在把最新版的棋士研究室送上網站...
echo   （只送程式；棋譜資料在 Firebase，不會動到）
echo ------------------------------------------------
echo.
git add -A
git commit -m "update qishi lab"
git push -u origin main
echo.
echo ------------------------------------------------
if %errorlevel%==0 (
  echo   完成！網站大約 1 分鐘後會是最新版本。
  echo   網址：https://milu891212-milu.github.io/qishi-lab/
) else (
  echo   發布失敗了，請把這個視窗截圖給我看一下。
)
echo ------------------------------------------------
echo.
pause
