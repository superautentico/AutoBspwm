#!/bin/bash

# Función para mostrar el menú
mostrar_menu() {
    echo "------------------------"
    echo "       MENÚ VPN"
    echo "------------------------"
    echo "1. Conectar a VPN Hack The Box (HTB)"
    echo "2. Conectar a VPN TryHackMe (THM)"
    echo "3. Salir"
    echo "------------------------"
    echo -n "Seleccione una opción: "
}

# Función para ejecutar la opción seleccionada
ejecutar_opcion() {
    case $1 in
        1) 
            echo "Conectando a Hack The Box VPN..."
            sudo openvpn /home/$USER/vpn/htb.ovpn
            ;;
        2) 
            echo "Conectando a TryHackMe VPN..."
            sudo openvpn /home/$USER/vpn/thm.ovpn
            ;;
        3) 
            echo "Saliendo..."
            exit 0
            ;;
        *) 
            echo "Opción inválida. Intente nuevamente."
            ;;
    esac
}

# Bucle del menú
while true; do
    mostrar_menu
    read opcion
    ejecutar_opcion $opcion
    echo
done
