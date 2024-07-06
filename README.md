# Kapital Challenge

![Simulator Screen Recording - iPhone 15 Pro - 2024-07-06 at 03 20 11](https://github.com/akongov/KapitalChallenge/assets/174865855/145169b5-8a2e-4a7c-8a38-9ff5d3e1279f)

# General
Está aplicación usa SwiftUI y Swift, con una arquitectura MVVM. 

Se han dividido en varios componentes la UI un ejemplo seria un boton que en el futuro puedan ser re usados, o las celdas de los tokens, etc.

# Consumo de servicio
El consumo de servicios se ha nombrado Network Manager donde se ocupa async y await para el uso de URLSession, con la ayuda de generics para poder parsear la data del servicio remoto a un objeto de tipo codable, donde el manager recive el tipo de Codable a parsear asi como la ruta de donde hara el consumo del API.

Con la ayuda de un Router que es un enum, se generan las rutas para el consumo del API, logrando tener un mejor manejo de las mismas y ocupando una base URL para el manejo de las llamadas al servidor.

El network manager regrese un tipo asociado que puede contener un error o el objeto del servicio, parseado desde la respuesta.

#Persistencia Local
Para la persistencia local se ocupa User Defaults, ocupando un manager para agregar objetos a User Defaults u obtener objetos del mismo. Se ocupa una logica de generics para la obtención de la data al Codable y al igual que el nertwork manager recibe el tipo de data para poder regresar el codable esperado. Puede regresar un error o el objeto en cuestión
