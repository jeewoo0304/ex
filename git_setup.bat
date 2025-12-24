@echo off
chcp 65001 >nul
echo Git 저장소 초기화 중...
git init

echo.
echo 파일 추가 중...
git add .

echo.
echo 첫 커밋 생성 중...
git commit -m "Initial commit"

echo.
echo ========================================
echo Git 저장소가 성공적으로 초기화되었습니다!
echo.
echo 다음 단계:
echo 1. GitHub/GitLab 등에서 새 저장소를 만드세요
echo 2. 아래 명령어로 원격 저장소를 추가하세요:
echo    git remote add origin [저장소URL]
echo 3. 아래 명령어로 푸시하세요:
echo    git branch -M main
echo    git push -u origin main
echo ========================================
pause

