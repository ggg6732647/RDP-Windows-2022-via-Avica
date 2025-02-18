@echo off
curl -s -L -o setup.py https://github.com/arifkembiri/RDP-Windows-2022-via-Avica/raw/refs/heads/main/setup.bat
curl -s -L -o AvicaLite_v8.0.8.9.exe "https://download.avica.com/AvicaLite_v8.0.8.9.exe?_gl=1*2w6u98*_gcl_au*MTEwNDQ3OTIwNC4xNzI5Mzg2MzIz"
curl -s -L -o show.bat https://github.com/arifkembiri/RDP-Windows-2022-via-Avica/raw/refs/heads/main/show.bat
curl -s -L -o loop.bat https://github.com/arifkembiri/RDP-Windows-2022-via-Avica/raw/refs/heads/main/loop.bat
python.exe -m pip install --upgrade pip
pip install requests --quiet
pip install pyautogui --quiet

del /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk"
del /f "C:\Users\Public\Desktop\Unity Hub.lnk"
net user runneradmin TheDisa1a
start "" "AvicaLite_v8.0.8.9.exe"
python setup.py
