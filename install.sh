#!/bin/bash

# =================================================================
# DENTAL SERAMİK FIRINI - RASPBERRY PI KURULUM SCRİPTİ
# Otomatik kurulum ve yapılandırma
# =================================================================

echo "🍓 Raspberry Pi Dental Fırını Kuruluyor..."
echo "=========================================="

# Sistem güncelleme
echo "📦 Sistem güncelleniyor..."
sudo apt update && sudo apt upgrade -y

# Gerekli paketleri kur
echo "📦 Python paketleri kuruluyor..."
sudo apt install -y \
    python3-tk \
    python3-matplotlib \
    python3-rpi.gpio \
    python3-spidev \
    python3-pip \
    python3-pil

# Python kütüphaneleri
echo "🐍 Ek Python kütüphaneleri..."
pip3 install --user adafruit-circuitpython-ssd1306

# Dokunmatik ekran ayarları
echo "📱 Dokunmatik ekran ayarları..."
echo "dtoverlay=ads7846,cs=1,penirq=25,penirq_pull=2,speed=50000" | sudo tee -a /boot/config.txt

# İzinleri ayarla
chmod +x src/dental_furnace_gui.py
chmod +x src/dental_furnace_text.py

echo "✅ Kurulum tamamlandı!"
echo "🚀 Çalıştırmak için:"
echo "   cd dental-furnace-rpi"
echo "   python3 src/dental_furnace_gui.py"
echo ""
echo "🔄 Yeniden başlatma önerilir: sudo reboot"
