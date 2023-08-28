@echo off
cd /d %appdata%\Microsoft\teams\blob_storage && rd /s /q %appdata%\Microsoft\teams\blob_storage 2>NUL
cd /d %appdata%\Microsoft\teams\Cache && rd /s /q %appdata%\Microsoft\teams\Cache 2>NUL
cd /d %appdata%\Microsoft\teams\databases && rd /s /q %appdata%\Microsoft\teams\databases 2>NUL
cd /d %appdata%\Microsoft\teams\GPUcache && rd /s /q %appdata%\Microsoft\teams\GPUcache 2>NUL
cd /d %appdata%\Microsoft\teams\IndexedDB && rd /s /q %appdata%\Microsoft\teams\IndexedDB 2>NUL
cd /d "%appdata%\Microsoft\teams\Local Storage" && rd /s /q "%appdata%\Microsoft\teams\Local Storage" 2>NUL
cd /d %appdata%\Microsoft\teams\tmp && rd /s /q %appdata%\Microsoft\teams\tmp 2>NUL
