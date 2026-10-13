# Shram Seva AI - Labour Data Quality Enhancement & Assessment Platform

> **Ministry of Labour & Employment (Govt. of India)** — Data Quality & Multi-Database Reconciliation Solution.

---

## ⚡ Quick Start (Local Setup in VS Code or any IDE)

### Option 1: One-Click Launcher (Windows)
Double-click **`start_all.bat`** in the root folder. It will launch both the FastAPI backend and React frontend automatically in separate windows!

---

### Option 2: Manual Terminal Commands

#### 1. Start Backend Server (Python / FastAPI)
```bash
cd backend
python -m pip install -r requirements.txt
python -m uvicorn app.main:app --host 127.0.0.1 --port 8000 --reload
```
- API Base URL: `http://localhost:8000`
- Interactive API Docs (Swagger): `http://localhost:8000/docs`

#### 2. Start Frontend Server (React / Vite)
Open a new terminal tab:
```bash
cd frontend
npm install
npm run dev -- --port 3000
```
- Access App UI: `http://localhost:3000`

---

## 🏗️ Project Architecture

```
shram_seva_ai/
├── backend/
│   ├── app/
│   │   ├── services/
│   │   │   ├── validator.py          # UAN, IFSC, Mobile, Pincode format validation engine
│   │   │   ├── nco_matcher.py        # TF-IDF NLP model for NCO-2015 taxonomy matching
│   │   │   ├── cross_db_linker.py    # eShram vs NCS cross-database entity reconciler
│   │   │   └── analytics.py          # Data Quality Index (DQI) & pattern anomaly engine
│   │   ├── data/
│   │   │   ├── nco_catalog.json      # Official NCO-2015 occupation codes taxonomy
│   │   │   ├── eshram_sample.csv     # Sample eShram unorganized worker dataset
│   │   │   └── ncs_sample.csv        # Sample NCS candidate dataset
│   │   └── main.py                   # FastAPI REST API entrypoint
│   └── requirements.txt
├── frontend/
│   ├── src/
│   │   ├── components/
│   │   │   ├── Header.jsx            # Official Ministry branding header
│   │   │   ├── OverviewMetrics.jsx   # DQI gauge, summary stats, anomaly alert feed
│   │   │   ├── FormatValidation.jsx  # Interactive format error corrector & edit modal
│   │   │   ├── NCOClassifier.jsx     # AI NCO classifier table & live sandbox
│   │   │   ├── CrossDbReconciler.jsx # eShram vs NCS split-view reconciler
│   │   │   └── AnalyticsView.jsx     # Quality analytics charts & CSV dataset export
│   │   ├── services/
│   │   │   └── api.js                # Axios API client
│   │   ├── App.jsx
│   │   └── index.css
│   ├── vite.config.js
│   └── package.json
├── start_all.bat                      # One-click start script for both services
├── run_backend.bat                    # Backend only start script
├── run_frontend.bat                   # Frontend only start script
└── README.md
```
