@echo off
chcp 65001 >nul
cd /d "%~dp0"

echo ========================================
echo Git 저장소 푸시 스크립트
echo ========================================
echo.

REM Git 인덱스 문제 해결
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
set /p REMOTE_URL="원격 저장소 URL을 입력하세요 (예: https://github.com/사용자명/ex.git): "

if "%REMOTE_URL%"=="" (
    echo 원격 저장소 URL이 입력되지 않았습니다.
    echo 수동으로 실행하려면:
    echo   git remote add origin [저장소URL]
    echo   git branch -M main
    echo   git push -u origin main
    pause
    exit /b
)

echo.
echo 6. 원격 저장소 추가 중...
git remote remove origin 2>nul
git remote add origin %REMOTE_URL%

echo.
echo 7. 브랜치 이름 변경 중...
git branch -M main

echo.
echo 8. 원격 저장소에 푸시 중...
git push -u origin main

echo.
echo ========================================
echo 완료되었습니다!
echo ========================================
pause

