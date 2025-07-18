#!/usr/bin/env python3
"""
🔥 Dental Seramik Fırını GUI - Raspberry Pi Optimized
- Dokunmatik ekran desteği
- GPIO donanım kontrolü  
- Gerçek zamanlı sıcaklık kontrolü
- PID algoritması
"""

import tkinter as tk
from tkinter import messagebox
import threading
import time
import json
import datetime

# Raspberry Pi GPIO
try:
    import RPi.GPIO as GPIO
    GPIO_AVAILABLE = True
except ImportError:
    GPIO_AVAILABLE = False

class DentalFurnaceGUI:
    def __init__(self):
        # ... (tam kod)
