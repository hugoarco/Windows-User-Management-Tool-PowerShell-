##  Windows User Management Tool (PowerShell)

Herramienta de administración local para sistemas Windows desarrollada en PowerShell que permite gestionar usuarios del sistema de forma rápida mediante una interfaz de consola interactiva.

Este proyecto está orientado a entornos de aprendizaje y laboratorios de sistemas, simulando tareas reales de administración en equipos Windows.

⚙️ Funcionalidades

La herramienta permite realizar operaciones de administración local de usuarios:

🔐 Control de acceso mediante lista de usuarios autorizados
👤 Creación de usuarios locales en el sistema
❌ Eliminación de usuarios
🔎 Consulta de usuarios específicos
📋 Listado completo de usuarios del sistema
📊 Interfaz de menú interactivo en consola
🚪 Salida controlada del sistema
🧠 Características técnicas
Desarrollo en PowerShell (compatible con Windows PowerShell 5.1 o superior)
Uso de funciones para modularización del código
Interfaz basada en menú interactivo por consola
Integración con comandos nativos del sistema (net user)
Validación de permisos de administrador
🔐 Control de acceso

El script incluye un sistema básico de autorización para limitar el acceso al menú principal.

Por defecto:

$usuariosValidos = @("Hugo")

Este valor puede modificarse directamente en el código según el entorno de uso.

⚠️ Requisitos
Sistema operativo Windows
PowerShell 5.1 o superior
Permisos de administrador
🚀 Ejecución
Abrir PowerShell como administrador
Navegar hasta el directorio del script
Ejecutar:
.\script.ps1
Introducir un usuario autorizado para acceder al menú principal
🧪 Uso recomendado

Este proyecto está diseñado para:

Laboratorios de administración de sistemas
Entornos de pruebas en máquinas virtuales
Aprendizaje de automatización en Windows
Prácticas de PowerShell y gestión de usuarios
🎯 Objetivo del proyecto

El objetivo es practicar conceptos fundamentales de administración de sistemas Windows, incluyendo:

Automatización de tareas administrativas
Gestión de usuarios locales
Diseño de interfaces de consola
Estructuración de scripts en PowerShell
Simulación de herramientas reales de IT
👨‍💻 Autor

Proyecto desarrollado por Hugo Arco como parte de su formación en administración de sistemas y redes.
