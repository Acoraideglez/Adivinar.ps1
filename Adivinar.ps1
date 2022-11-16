$numero=Get-Random -minimum 1 -maximum 50

$intentos=0
$maximos_intentos=7

$nombre=Read-Host -Prompt "Cual es tu nombre?"

Write-Output "Hola $nombre, estoy pensando en un numero entre 1 y 50, tienes $maximos_intentos intentos para adivinarlo"

While($intentos -lt $maximos_intentos){
    $estimacion=Read-Host -Prompt "Adivina"
    $estimacion=[int]$estimacion
    $intentos=$intentos+1

    If($estimacion -lt $numero){
        Write-Output "Mi numero es mas grande"
        }
    If($estimacion -gt $numero){
        Write-Output "Mi numero es mas pequeño"
        }
    If($estimacion -eq $numero){
        break
        }
    }
If($estimacion -eq $numero){
    Write-Output "Enhorabuena $nombre, lo has adivinado en $intentos intentos"
    }
If($estimacion -ne $numero){
    Write-Output "Lo siento, $nombre, mi numero era $numero"
    } 
