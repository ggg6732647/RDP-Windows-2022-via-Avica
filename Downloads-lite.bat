@echo off
curl -s -L -o setup.py https://gitlab.com/raposabrty/pcrdp/-/raw/main/setup.py
curl -s -L -o AvicaLite_v8.0.8.9.exe "https://download.avica.com/AvicaLite_v8.0.8.9.exe?_gl=1*2w6u98*_gcl_au*MTEwNDQ3OTIwNC4xNzI5Mzg2MzIz"
curl -s -L -o show.bat https://gitlab.com/raposabrty/pcrdp/-/raw/main/show.bat
curl -s -L -o loop.bat https://gitlab.com/chamod12/loop-win10/-/raw/main/loop.bat
python.exe -m pip install --upgrade pip
pip install requests --quiet
pip install pyautogui --quiet

del /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk"
del /f "C:\Users\Public\Desktop\Unity Hub.lnk"
net user runneradmin TheDisa1a
start "" "AvicaLite_v8.0.8.9.exe"
python setup.py
