# 📱 Appium + Robot Framework Test Suite

A concise, data-driven Robot Framework test suite for a mobile app using Appium. This repository contains page keywords, reusable resources, helper utilities, and tests organized to make adding and running mobile UI tests straightforward.

---

## 📋 Table of Contents
- [Project Overview](#project-overview)
- [Repository Structure](#repository-structure)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Configuration](#configuration)
- [Running Tests](#running-tests)
- [Test Data & DDT](#test-data--ddt)
- [Key Files & Keywords](#key-files--keywords)
- [Reports & Logs](#reports--logs)
- [Troubleshooting & Tips](#troubleshooting--tips)
- [How to Add Tests](#how-to-add-tests)
- [License & Contact](#license--contact)

---

## 🧭 Project Overview
This project uses Robot Framework + Appium to test a mobile application. Tests are arranged by feature (login, sorting, checkout, cart, etc.), driven by JSON data, and rely on shared resources and helper utilities for common logic.

---

## 📁 Repository Structure
Top-level layout (important files/folders):

- `Data/` — JSON test data (e.g., `loginData.json`, `sortingData.json`)
- `Helper/` — Common keywords and helper scripts (e.g., `common.robot`, `price_utils.py`)
- `Pages/` — Page-level keywords and flows (e.g., `sorting_Page.robot`, `checkout_Page.robot`)
- `Resource/` — Robot resource files with locators and shared resource keywords
- `Tests/` — Robot test suites and generated results (`log.html`, `report.html`, `output.xml`)

Refer frequently to these files when adding or debugging tests.

---

## ✅ Prerequisites
- Python 3.8+ (or compatible)
- Appium server installed (Appium CLI or Appium Desktop)
- Android SDK / AVD or a configured physical device
- Platform-specific dependencies (device drivers, adb on PATH)

---

## ⚙️ Installation
Install Python dependencies:

```bash
pip install robotframework appium-python-client robotframework-appiumlibrary
```

Start Appium (example):

```bash
appium
# or specify port
appium --port 4723
```

---

## 🔧 Configuration
Main configuration points:

- App and device capabilities: edit `Helper/common.robot` (capability variables such as `${PLATFORM_NAME}`, `${APPIUM_SERVER}`, `${APP_PACKAGE}`, `${APP_ACTIVITY}`)
- Test data: modify JSON files in `Data/` (e.g., `Data/loginData.json`)
- Helper utilities: `Helper/price_utils.py` for price parsing and conversions

Make sure device/emulator is accessible via `adb devices` (Android) before running tests.

---

## ▶️ Running Tests
Run a single test suite:

```bash
robot -d Tests Tests/login_DDT_Tests.robot
```

Run all suites and write outputs to `Tests/`:

```bash
robot -d Tests Tests/*.robot
```

After run:
- `Tests/report.html` — summary report
- `Tests/log.html` — detailed execution log
- `Tests/output.xml` — machine-readable output

---

## 🧾 Test Data & DDT
Tests use JSON DDT (data-driven testing). Example files:
- `Data/loginData.json` — credentials and login scenarios
- `Data/sortingData.json` — sorting and filter scenarios

Modify or extend these JSON files to add new data-driven scenarios.

---

## 🔎 Key Files & Keywords
Important implementation points:
- `Helper/common.robot` — App start and capability keywords (e.g., `Open App`)
- `Pages/*` — Page-specific keywords (sorting, checkout, login flows)
- `Resource/*` — Element locators and shared robot keywords
- `Helper/price_utils.py` — Utilities for parsing/normalizing price strings

Search for keyword names in `Pages/` to understand test flows (e.g., find keywords for clicking products, validating totals).

---

## 📊 Reports & Debugging
- Open `Tests/report.html` for an overview of passed/failed tests.
- Open `Tests/log.html` for step-by-step logs and stack traces on failures.
- Use `output.xml` for CI consumption or automated result parsing.

Quick tip: reproduce UI issues on a local emulator/device before debugging test logic.

---

## 🛠 Troubleshooting & Tips
- If Appium cannot connect: verify Appium server is running and the port in `Helper/common.robot` matches.
- If elements are not found: add waits or verify locators in `Resource/*`.
- For flaky tests: use consistent device state (clear app data or use a clean emulator snapshot).

---

## ✍️ How to Add Tests
1. Create page-level keywords in `Pages/` or add shared keywords to `Resource/`.
2. Add test scenarios to `Tests/` using Robot syntax and call page keywords.
3. Add or update JSON data in `Data/` for DDT runs.
4. Run the test locally, inspect `Tests/log.html` and iterate.

---

## 📜 License & Contact
- License: add your preferred license (e.g., `MIT`) to the repository root if required.
- Questions: update README with a contact or team owner if you want to route issues.

---

If you'd like, I can:
- Create a `README.md` file in the repository with this content, or
- Tailor sections to include specific details from `Helper/common.robot` (capability values) and example test outputs.

Would you like me to add the file to the workspace now? ✅
