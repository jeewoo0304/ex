@echo off
chcp 65001 >nul
cd /d "%~dp0"

echo ========================================
echo Git 저장소 상태 확인 및 푸시
echo ========================================
echo.

echo 1. Git 인덱스 재생성 중...
if exist .git\index del .git\index
git reset

echo.
echo 2. 파일 추가 중...
git add .

echo.
echo 3. 변경사항 확인...
git status

echo.
echo 4. 커밋 생성 중...
git commit -m "Update project files"

echo.
echo 5. 원격 저장소 확인...
git remote -v

echo.
echo ========================================
echo 다음 단계:
echo - 원격 저장소가 없다면 아래 명령어로 추가하세요:
echo   git remote add origin [저장소URL]
echo - 그 다음 아래 명령어로 푸시하세요:
echo   git branch -M main
echo   git push -u origin main
echo ========================================
pause

