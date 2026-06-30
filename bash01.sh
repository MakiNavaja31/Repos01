#!/usr/bin/env bash

# CONFIGURACIÓN DE SEGURIDAD Y CTROL
# -e: detiene script si el comando falla
# -u: detiene script si se usa una variable no definida
# -o pipefile: el script falla si cualquier comando de una 'pipe' (|) falla.

set -euo pipefail


# DEFINICIÓN DE COLORES

GREEN = '\033[0;32m'
YELLOW = '\033[1;33m'
BLUE = '\033[0;34m'
CYAN = '\033[0;36m'
NC = '\033[0m'              # No Color


# FUNCIONES DE REGISTRO

Success()   {echo -e "${GREEN}[OK]${NC} $1"; }
Warn()      {echo -e "${YELLOW}[WARNING]${NC} $1"; }
Info()      {echo -e "${BLUE}[INFO]${NC} $1"; }
Title()     {echo -e "${CYAN}[INFO]${NC} $1"; }

#########################################################
# LOG SYSTEM INFO

Info "Start collecting system info data . . . "

# Collecting O.S characteristics
Title " o.S Characteristics"
if [ -f /etc/&os-release ]; then
    # load system variables
    #
    source /etc/os-release
    Success "Distro: ~$NAME"
    Success "Version: $VERSION"
    Success "Codename; ${VERSION_CODENAME: -No available}"
else
    Warn "It was not possible to acces this info (/etc/os-release does not exist)"
fi

Success "Kernel version: $(uname -r)"

#














# .................... E o F ...................................
    
