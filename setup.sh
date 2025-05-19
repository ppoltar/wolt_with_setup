#!/bin/bash

echo "🔧 Setting up your test project..."

python3 -m venv venv
source venv/bin/activate

pip install --upgrade pip

pip install -r requirements.txt

echo "✅ Setup complete. To activate the virtual environment, run:"
echo "source venv/bin/activate\n"

echo "✅ To Generate allure report, run:"
echo "allure generate reports/allure-results --clean -o reports/allure-report\n"