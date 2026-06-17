function identifacionusuarios {

    $usuariosvalidos = @(
        "Hugo"
    )
try {
   $eleccionusuario = read-Host ("Introduzca el usuario valido ")

    if ($usuariosvalidos -contains $eleccionusuario) {
        write-Host ("El usuario esta en el sistema") -ForeGroundColor Green
    }
    else {
        write-Host ("El usuario no esta en el sistema") -ForeGroundColor Yellow
        exit
    }


}

catch {
    write-Host ("Error") -ForeGroundColor Red
}
 

}


function menu {
 
    $opcionmenu = 0 
    while ($opcionmenu -ne 6 ) {
        write-Host ("1.Inicio")
        write-Host ("2.Creación usuarios ")
        write-Host ("3. Borrar usuarios ")
        write-Host ("4.Comprobar usuario (específico)")
        write-Host ("5.Comprobar usuarios generales")
        write-Host ("6.Salir")
    $opcionmenu = read-Host ("Seleccione con un numero la opción del menu que considere")
    switch ([int] $opcionmenu) {
        1 {Inicio}
        2 {Creacionusuarios}
        3 {Borradousuarios}
        4 {Comprobarusuarioespecífico}
        5 {Comprobarusuariosgenerales}
        6 {Salir}
    }
    }
}
function Inicio {
     write-Host ("1.Inicio") -ForeGroundColor Cyan
        write-Host ("2.Creación usuarios ") -ForeGroundColor Cyan
        write-Host ("3. Borrar usuarios ") -ForeGroundColor Cyan
        write-Host ("4.Comprobar usuario (específico)") -ForeGroundColor Cyan
        write-Host ("5.Comprobar usuarios generales") -ForeGroundColor Cyan
        write-Host ("6.Salir")
try {

 $salirsino = read-Host ("El usuario desea salir de inicio si o no ")
            if ($salirsino -eq "Si") {
                write-Host ("Ok el usuario no quiere seguir en la seccion inicio") -ForeGroundColor Red
                return
            }
            else {
                write-Host ("El usuario quiere seguir en inicio ")  -ForeGroundColor Green
            }

}
       catch {
        write-Host ("Error")
       }
}

function Creacionusuarios{
    $creacionusuariossino = read-Host ("Desea Crear un usuario (Si/No)")
    
        try {

        if ($creacionusuariossino -eq "Si") {
            write-Host ("Ok vamos a crear el usuario")  -ForeGroundColor Green
            $usuariocreacion = read-Host ("Introduzca el nombre del usuario a crear")
            $contraseñacreacion = read-Host ("Introduzca la contraseña del usuario a crear")
            net user $usuariocreacion $contraseñacreacion /add
        }

        else {
            write-Host ("Ok no quieres crear usuario ") -ForeGroundColor Yellow
            return
        }
        }

        catch {
            write-Host ("Error") -ForeGroundColor Red
        }

}

function Borradousuarios {
    try {
  $Borradousuarios = Read-Host ("El usuario desea borrar un usuario si o no ")
        if  ($Borradousuarios -eq "Si") {
            write-Host ("Ok vamos a borrar el usuario")  -ForeGroundColor Green
            $nombreusuarioborrar = read-Host ("Introduzca el nombre del usuario a borrar")
            net user $nombreusuarioborrar /delete
        }

        else {
            write-Host ("Ok no quieres borrar ningun  usuario ")  -ForeGroundColor Yellow
            exit
        }
    }

    catch {
        write-Host ("Error")  -ForeGroundColor Red
    }
  
}


function Comprobarusuarioespecífico {
    try {
    $comprobarusuarioespecificosino = read-Host ("El usuario desea comprobar que exita x usuario ")
    if ($comprobarusuarioespecificosino -eq "Si") {
        write-Host ("Ok vamos a comprobar el usuario ")  -ForeGroundColor Green
        $nombreusuarioespecifico = read-Host ("Introduzca el nombre del usuario a comprobar")
         net user  $nombreusuarioespecifico 
    }

    else{
        write-Host ("El usuario no quiere comprobar ") -ForeGroundColor Yellow
        exit
    }
    }
    catch {
        write-Host ("Error") -ForeGroundColor Red
    }
   

}

function Comprobarusuariosgenerales {
    try {
    $Comprobarusuariosgeneralessino = read-Host ("El usuario desea comprobar que exita x usuario ")
    if ($Comprobarusuariosgeneralessino -eq "Si") {
        write-Host ("Ok vamos a comprobar el usuario ") -ForeGroundColor Green
         net user  
    }

    else{
        write-Host ("El usuario no quiere comprobar ") -ForeGroundColor Yellow
        exit
    }
    }

    catch {
        write-Host ("Error") -ForeGroundColor Red
    }

}

function Salir {
    try {
$salirfinalsino = read-Host ("El usuario desea salir del script si o no")
    if ($salirfinalsino -eq "Si") {
        write-Host ("Ok el usuario se desea salir del script") -ForeGroundColor Green
        exit

    }
    else {
        write-Host ("El usuario desea permanecer en el script") -ForeGroundColor Yellow
    }
    }
catch {
    write-Host ("Error") -ForeGroundColor Red

}

}

identifacionusuarios
menu
