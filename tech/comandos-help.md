#-------VPN
# Subir VPN
sudo wg-quick up ~/Desktop/Repos/visioAI/visio-vpn.conf

# Derrubar VPN
sudo wg-quick down visio-vpn

# Reconectar (quando parar de funcionar)
sudo wg-quick down visio-vpn && sudo wg-quick up ~/Desktop/Repos/visioAI/visio-vpn.conf

# Ver status (deve mostrar "latest handshake" se conectado)
sudo wg show 



#--------Claude