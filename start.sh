#!/bin/bash
echo "🔹 Устанавливаем браузеры Playwright..."
playwright install --with-deps

echo "🔹 Запускаем main.py"
python3 main.py
