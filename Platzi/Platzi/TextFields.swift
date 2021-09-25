//
//  TextFields.swift
//  Platzi
//
//  Created by Juanse Vargas on 17/09/21.
//

import SwiftUI

struct TextFields: View {
    
    @State var textoVista: String = "Holi" // Indica que podemos mantener su estado
    
    var body: some View {
        
        // option + cmd + click para opciones VStack etc.
        VStack
        {
            Text(textoVista).bold() // Cada ciertos ciclos de reloj el sistema revisa la Estructura Text Fields y si tiene elementos como este Text(textoVista) para ver si han cambiado o no.
            
            TextField("Escribe contraseña", text: $textoVista) // Binding: Estamos uniendo TextoVista con lo que se introduce en la caja de texto.
    
            
            Button(action: {textoVista = "Juan"}, label: {
                Text("Cambia el texto de la vista")
            })
            
        }
        
        
        
    }
}

struct TextFields_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TextFields()
        }
    }
}
