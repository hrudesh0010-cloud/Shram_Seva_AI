@echo off
echo =================================================================
echo   Shram Seva AI - Ministry of Labour & Employment Platform
echo =================================================================
echo.
echo Starting Backend API (FastAPI) and Frontend Dashboard (React Vite)...
echo.

start "Shram Seva AI - Backend API (Port 8000)" cmd /k "cd backend && python -m pip install -r requirements.txt && python -m uvicorn app.main:app --host 127.0.0.1 --port 8000 --reload"

start "Shram Seva AI - Frontend Dashboard (Port 3000)" cmd /k "cd frontend && npm install && npm run dev -- --port 3000"

echo.
echo Servers are launching in separate windows:
echo - Backend API:  http://localhost:8000 (Docs: http://localhost:8000/docs)
echo - Frontend UI:   http://localhost:3000
echo.
echo Leave those windows open while testing!
pause
