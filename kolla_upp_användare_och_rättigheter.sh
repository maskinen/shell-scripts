#!/bin/bash

# 1. Skapar användare/konton för Alice, Bob, Charlie, David och Evert
echo "Skapar användare/konton för Alice, Bob, Charlie, David och Evert..."
sudo useradd alice
sudo useradd bob
sudo useradd charlie
sudo useradd david
sudo useradd evert

# 2. Skapar gruppen 'developers'och lägger till Alice, Charlie och Evert i denna grupp
echo "Skapar gruppen developers och lägger till Alice, Charlie och Evert..."
sudo groupadd developers
sudo usermod -aG developers alice
sudo usermod -aG developers charlie
sudo usermod - aG developers evert

# 3. Skapar en delad katalog /opt/developers och sätter upp rättigheter för denna grupp
echo "Skapar katalogen /opt/developers och ställer in rättigheter..."
sudo mkdir /opt/developers
sudo chown root:developers /opt/developers
sudo chmod 770 /opt/developers
sudo chmod g+s /opt/developers # Sätter Set Group ID på en katalog som gör att alla nya filer och mappar som skapas i k>


# 4. Sätter ett utgångsdatum för Bob och David till datumet 2024-12-31
echo "Ställer in kontona för Bob och David att deras konton ska gå ut den 2024-12-31..."
sudo usermod -e 2024-12-31 bob
sudo usermod -e 2024-12-31 david

# 5. Tvingar Evert att byta lösenord vid nästa inloggning
echo "Tvingar Evert att byta lösenord vid nästa inloggning..."
sudo passwd -e evert

echo "Hands-on har slutförts på ett korrekt sätt!"