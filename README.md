# 포트폴리오 프로젝트

포트폴리오 웹사이트 프로젝트입니다.

## Git 저장소 설정 방법

### 1. Git 저장소 초기화
```bash
git init
```

### 2. 파일 추가
```bash
git add .
```

### 3. 첫 커밋
```bash
git commit -m "Initial commit"
```

### 4. 원격 저장소 추가 (GitHub 예시)
```bash
git remote add origin https://github.com/사용자명/저장소명.git
```

### 5. 원격 저장소에 푸시
```bash
git branch -M main
git push -u origin main
```

## 주의사항
- `.env` 파일은 Git에 포함되지 않습니다 (보안상의 이유)
- API 키 등 민감한 정보는 환경 변수로 관리하세요

