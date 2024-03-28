#SingleInstance force
SetTitleMatchMode, 2 ; Recherche des fenêtres qui contiennent une partie du titre

global windows := [] ; Initialiser un tableau global pour stocker les HWND des fenêtres

; Remplir le tableau avec les HWND des instances de Dofus.exe
ReloadWindowsList() {
    global windows
    windows := [] ; Réinitialiser le tableau
    WinGet, idList, List, ahk_exe Dofus.exe
    Loop, %idList%
    {
        hwnd := idList%A_Index%
        windows.Push(hwnd)
    }
}

; Fonction pour activer la fenêtre suivante
ActivateNextWindow() {
    static currentIndex := 1
    global windows

    if (windows.MaxIndex() = 0) ; Vérifier si le tableau est vide
        return

    if (currentIndex > windows.MaxIndex()) ; Réinitialiser l'index si nécessaire
        currentIndex := 1

    hwnd := windows[currentIndex] ; Obtenir le HWND de la fenêtre actuelle
    WinActivate, ahk_id %hwnd%
    currentIndex := (currentIndex == windows.MaxIndex() ? 1 : currentIndex + 1) ; Mettre à jour pour la prochaine fenêtre
}

; Initialiser la liste au démarrage
ReloadWindowsList()

F3::ActivateNextWindow()




F10::Pause ; Pause l'application


; Hotkey pour simuler le clic dans toutes les fenêtres Dofus
!LButton::
    MouseGetPos, xpos, ypos
    For index, hwnd in windows {
        ControlClick, x%xpos% y%ypos%, ahk_id %hwnd%, , LEFT,, NA
        Random, delay, 250, 1000 ; Génère un nombre aléatoire entre 250 et 1000
        Sleep, delay ; Pause le script pour le nombre de millisecondes généré

    }
    return

