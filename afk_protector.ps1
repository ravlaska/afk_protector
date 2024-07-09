﻿[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
[console]::WindowHeight = 22;[console]::WindowWidth = 55
[console]::BufferHeight = 22;[console]::BufferWidth = 55
[console]::Title = "AFK Protector";[Console]::CursorVisible = $false
[console]::WindowHeight = 22;[console]::WindowWidth = 55

$shell = New-Object -com "Wscript.Shell"

function animate {

    $frames_up=@(
        "               ___________________________`n              |   _____________________   |`n              |  /                     \  |`n              | |                       | |`n              | |                       | |`n              | |                       | |`n              | |                       | |`n              | |                       | |`n              |  \_____________________/  |`n              |___________________________|`n            ,---\_____     []     _______/------,`n          /         /______________\           /|`n        /___________________________________ /  | ___`n        |                                   |   |    )`n        |  _ _ _                 [-------]  |   |   (`n        |  o o o                 [-------]  |  /    _)_`n        |__________________________________ |/     /()/`n    /-------------------------------------/|      /__/`n  /-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/ /`n/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/ /`n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`n",
        "               ___________________________`n              |   _____________________   |`n              |  /                     \  |`n              | |                       | |`n              | |                       | |`n              | |                       | |`n              | |                       | |`n              | |                       | |`n              |  \_____▄▀▄_____▄▀▄_____/  |`n              |___________________________|`n            ,---\_____     []     _______/------,`n          /         /______________\           /|`n        /___________________________________ /  | ___`n        |                                   |   |    )`n        |  _ _ _                 [-------]  |   |   (`n        |  o o o                 [-------]  |  /    _)_`n        |__________________________________ |/     /()/`n    /-------------------------------------/|      /__/`n  /-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/ /`n/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/ /`n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`n",
        "               ___________________________`n              |   _____________________   |`n              |  /                     \  |`n              | |                       | |`n              | |                       | |`n              | |                       | |`n              | |                       | |`n              | |      ▄▀▄     ▄▀▄      | |`n              |  \____▄█░░▀▀▀▀▀░░█▄____/  |`n              |___________________________|`n            ,---\_____     []     _______/------,`n          /         /______________\           /|`n        /___________________________________ /  | ___`n        |                                   |   |    )`n        |  _ _ _                 [-------]  |   |   (`n        |  o o o                 [-------]  |  /    _)_`n        |__________________________________ |/     /()/`n    /-------------------------------------/|      /__/`n  /-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/ /`n/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/ /`n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`n",
        "               ___________________________`n              |   _____________________   |`n              |  /                     \  |`n              | |                       | |`n              | |                       | |`n              | |                       | |`n              | |      ▄▀▄     ▄▀▄      | |`n              | |     ▄█░░▀▀▀▀▀░░█▄     | |`n              |  \▄▄__█░░░░░░░░░░░█__▄▄/  |`n              |___________________________|`n            ,---\_____     []     _______/------,`n          /         /______________\           /|`n        /___________________________________ /  | ___`n        |                                   |   |    )`n        |  _ _ _                 [-------]  |   |   (`n        |  o o o                 [-------]  |  /    _)_`n        |__________________________________ |/     /()/`n    /-------------------------------------/|      /__/`n  /-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/ /`n/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/ /`n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`n",
        "               ___________________________`n              |   _____________________   |`n              |  /                     \  |`n              | |                       | |`n              | |                       | |`n              | |      ▄▀▄     ▄▀▄      | |`n              | |     ▄█░░▀▀▀▀▀░░█▄     | |`n              | | ▄▄  █░░░░░░░░░░░█  ▄▄ | |`n              |  \▄▄█_█░░▀░░┬░░▀░░█_█▄▄/  |`n              |___________________________|`n            ,---\_____     []     _______/------,`n          /         /______________\           /|`n        /___________________________________ /  | ___`n        |                                   |   |    )`n        |  _ _ _                 [-------]  |   |   (`n        |  o o o                 [-------]  |  /    _)_`n        |__________________________________ |/     /()/`n    /-------------------------------------/|      /__/`n  /-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/ /`n/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/ /`n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`n")

    $frames_mid=@(
        "               ___________________________`n              |   _____________________   |`n              |  /                     \  |`n              | |                       | |`n              | |                       | |`n              | |      ▄▀▄     ▄▀▄      | |`n              | |     ▄█░░▀▀▀▀▀░░█▄  ▄▄ | |`n              | | ▄▄  █░░░░░░░░░░░█ █▄▄ | |`n              |  \▄▄█_█░░▀░░┬░░▀░░█__█_/  |`n              |___________________________|`n            ,---\_____     []     _______/------,`n          /         /______________\           /|`n        /___________________________________ /  | ___`n        |                                   |   |    )`n        |  _ _ _                 [-------]  |   |   (`n        |  ☺ o o                 [-------]  |  /    _)_`n        |__________________________________ |/     /()/`n    /-------------------------------------/|      /__/`n  /-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/ /`n/-/-/A/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/ /`n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`n",
        "               ___________________________`n              |   _____________________   |`n              |  /                     \  |`n              | |                       | |`n              | |                       | |`n              | |      ▄▀▄     ▄▀▄      | |`n              | |     ▄█░░▀▀▀▀▀░░█▄     | |`n              | | ▄▄  █░░░░░░░░░░░█  ▄▄ | |`n              |  \▄▄█_█░░▀░░┬░░▀░░█_█▄▄/  |`n              |___________________________|`n            ,---\_____     []     _______/------,`n          /         /______________\           /|`n        /___________________________________ /  | ___`n        |                                   |   |    )`n        |  _ _ _                 [-------]  |   |   (`n        |  ☻ o o                 [-------]  |  /    _)_`n        |__________________________________ |/     /()/`n    /-------------------------------------/|      /__/`n  /-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/ /`n/-/-/A/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/ /`n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`n",
        "               ___________________________`n              |   _____________________   |`n              |  /                     \  |`n              | |                       | |`n              | |                       | |`n              | |      ▄▀▄     ▄▀▄      | |`n              | |     ▄█░░▀▀▀▀▀░░█▄  ▄▄ | |`n              | | ▄▄  █░░░░░░░░░░░█ █▄▄ | |`n              |  \▄▄█_█░░▀░░┬░░▀░░█__█_/  |`n              |___________________________|`n            ,---\_____     []     _______/------,`n          /         /______________\           /|`n        /___________________________________ /  | ___`n        |                                   |   |    )`n        |  _ _ _                 [-------]  |   |   (`n        |  ☻ ☺ o                 [-------]  |  /    _)_`n        |__________________________________ |/     /()/`n    /-------------------------------------/|      /__/`n  /-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/ /`n/-/-/A/-/-/-/-/-/-/F/-/-/-/-/-/-/-/-/-/ /`n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`n",
        "               ___________________________`n              |   _____________________   |`n              |  /                     \  |`n              | |                       | |`n              | |                       | |`n              | |      ▄▀▄     ▄▀▄      | |`n              | |     ▄█░░▀▀▀▀▀░░█▄     | |`n              | | ▄▄  █░░░░░░░░░░░█  ▄▄ | |`n              |  \▄▄█_█░░▀░░┬░░▀░░█_█▄▄/  |`n              |___________________________|`n            ,---\_____     []     _______/------,`n          /         /______________\           /|`n        /___________________________________ /  | ___`n        |                                   |   |    )`n        |  _ _ _                 [-------]  |   |   (`n        |  ☻ ☻ o                 [-------]  |  /    _)_`n        |__________________________________ |/     /()/`n    /-------------------------------------/|      /__/`n  /-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/ /`n/-/-/A/-/-/-/-/-/-/F/-/-/-/-/-/-/-/-/-/ /`n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`n",
        "               ___________________________`n              |   _____________________   |`n              |  /                     \  |`n              | |                       | |`n              | |                       | |`n              | |      ▄▀▄     ▄▀▄      | |`n              | |     ▄█░░▀▀▀▀▀░░█▄  ▄▄ | |`n              | | ▄▄  █░░░░░░░░░░░█ █▄▄ | |`n              |  \▄▄█_█░░▀░░┬░░▀░░█__█_/  |`n              |___________________________|`n            ,---\_____     []     _______/------,`n          /         /______________\           /|`n        /___________________________________ /  | ___`n        |                                   |   |    )`n        |  _ _ _                 [-------]  |   |   (`n        |  ☻ ☻ ☺                 [-------]  |  /    _)_`n        |__________________________________ |/     /()/`n    /-------------------------------------/|      /__/`n  /-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/ /`n/-/-/A/-/-/-/-/-/-/F/-/-/-/-/-/-/K/-/-/ /`n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`n",
        "               ___________________________`n              |   _____________________   |`n              |  /                     \  |`n              | |                       | |`n              | |                       | |`n              | |      ▄▀▄     ▄▀▄      | |`n              | |     ▄█░░▀▀▀▀▀░░█▄     | |`n              | | ▄▄  █░░░░░░░░░░░█  ▄▄ | |`n              |  \▄▄█_█░░▀░░┬░░▀░░█_█▄▄/  |`n              |___________________________|`n            ,---\_____     []     _______/------,`n          /         /______________\           /|`n        /___________________________________ /  | ___`n        |                                   |   |    )`n        |  _ _ _                 [-------]  |   |   (`n        |  ☻ ☻ ☻                 [-------]  |  /    _)_`n        |__________________________________ |/     /()/`n    /-------------------------------------/|      /__/`n  /-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/ /`n/-/-/A/-/-/-/-/-/-/F/-/-/-/-/-/-/K/-/-/ /`n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`n")

    $frames_down=@(
        "               ___________________________`n              |   _____________________   |`n              |  /                     \  |`n              | |                       | |`n              | |                       | |`n              | |                       | |`n              | |      ▄▀▄     ▄▀▄      | |`n              | |     ▄█░░▀▀▀▀▀░░█▄     | |`n              |  \▄▄__█░░░░░░░░░░░█__▄▄/  |`n              |___________________________|`n            ,---\_____     []     _______/------,`n          /         /______________\           /|`n        /___________________________________ /  | ___`n        |                                   |   |    )`n        |  _ _ _                 [-------]  |   |   (`n        |  o o o                 [-------]  |  /    _)_`n        |__________________________________ |/     /()/`n    /-------------------------------------/|      /__/`n  /-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/ /`n/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/ /`n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`n",
        "               ___________________________`n              |   _____________________   |`n              |  /                     \  |`n              | |                       | |`n              | |                       | |`n              | |                       | |`n              | |                       | |`n              | |      ▄▀▄     ▄▀▄      | |`n              |  \____▄█░░▀▀▀▀▀░░█▄____/  |`n              |___________________________|`n            ,---\_____     []     _______/------,`n          /         /______________\           /|`n        /___________________________________ /  | ___`n        |                                   |   |    )`n        |  _ _ _                 [-------]  |   |   (`n        |  o o o                 [-------]  |  /    _)_`n        |__________________________________ |/     /()/`n    /-------------------------------------/|      /__/`n  /-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/ /`n/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/ /`n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`n",
        "               ___________________________`n              |   _____________________   |`n              |  /                     \  |`n              | |                       | |`n              | |                       | |`n              | |                       | |`n              | |                       | |`n              | |                       | |`n              |  \_____▄▀▄_____▄▀▄_____/  |`n              |___________________________|`n            ,---\_____     []     _______/------,`n          /         /______________\           /|`n        /___________________________________ /  | ___`n        |                                   |   |    )`n        |  _ _ _                 [-------]  |   |   (`n        |  o o o                 [-------]  |  /    _)_`n        |__________________________________ |/     /()/`n    /-------------------------------------/|      /__/`n  /-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/ /`n/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/ /`n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`n",
        "               ___________________________`n              |   _____________________   |`n              |  /                     \  |`n              | |                       | |`n              | |                       | |`n              | |                       | |`n              | |                       | |`n              | |                       | |`n              |  \_____________________/  |`n              |___________________________|`n            ,---\_____     []     _______/------,`n          /         /______________\           /|`n        /___________________________________ /  | ___`n        |                                   |   |    )`n        |  _ _ _                 [-------]  |   |   (`n        |  o o o                 [-------]  |  /    _)_`n        |__________________________________ |/     /()/`n    /-------------------------------------/|      /__/`n  /-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/ /`n/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/ /`n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`n")


    for ($j = 0; $j -lt 7; $j++) {
        $frames_up | % {
            Clear-Host
            Write-Host "$_" -NoNewline -ForegroundColor White
            Start-Sleep -m 100
        }
        Start-Sleep 2
        $frames_mid | % {
            Clear-Host
            Write-Host "$_" -NoNewline -ForegroundColor White
            Start-Sleep -m 300
        }
        Start-Sleep 2
        $frames_down | % {
            Clear-Host
            Write-Host "$_" -NoNewline -ForegroundColor White
            Start-Sleep -m 100
        }
      }
}

for ($i = 0; $i -lt 11; $i++) {
    
    animate

    $shell.sendkeys("{SCROLLLOCK}")

    if (($i % 2) -eq 0) {
        $Pos = [System.Windows.Forms.Cursor]::Position
        [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point((($Pos.X) + 1), $Pos.Y)
    }
    if (($i % 2) -ne 0) {
        $Pos = [System.Windows.Forms.Cursor]::Position
        [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point((($Pos.X) - 1), $Pos.Y)
    }
    if ($i -eq 10) {
        $i = 0
    }
}
