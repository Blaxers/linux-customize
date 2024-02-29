#!/bin/bash
echo "Sesja była aktywna przez: $(uptime -p)"
echo "Adres IP na koniec sesji: $(hostname -I)"
