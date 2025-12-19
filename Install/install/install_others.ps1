
# Android
choco install android-sdk androidstudio -y

# Go
choco install golang  -y

# Image Magick
choco install imagemagick ghostscript -y

choco install Cygwin -y
.\setup-x86_64.exe -q -P gcc-g++ -P wget -P tar -P gawk -P libiconv -P make -P curl
setx PATH "$($env:PATH);D:\cygwin64\usr\bin"
