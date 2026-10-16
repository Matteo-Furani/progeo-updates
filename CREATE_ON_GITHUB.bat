@echo off
setlocal
cd /d "%~dp0"

echo.
echo === Crea repo pubblico Matteo-Furani/progeo-updates ===
echo Serve: gh auth login
echo.

gh auth status || (
  echo.
  echo Autenticati prima con:
  echo   gh auth login -h github.com
  exit /b 1
)

gh repo create Matteo-Furani/progeo-updates --public --source=. --remote=origin --push
if errorlevel 1 (
  echo.
  echo Se il repo esiste gia:
  echo   git remote add origin https://github.com/Matteo-Furani/progeo-updates.git
  echo   git push -u origin main
  exit /b 1
)

echo.
echo OK: https://github.com/Matteo-Furani/progeo-updates
echo Manifest ProgeoView:
echo   https://raw.githubusercontent.com/Matteo-Furani/progeo-updates/main/ProgeoView/stable/latest.json
endlocal
