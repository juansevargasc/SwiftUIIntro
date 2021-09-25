//
//  Buttons.swift
//  Platzi
//
//  Created by Juanse Vargas on 16/09/21.
//

import SwiftUI

struct Buttons: View {
    var body: some View {
        
        VStack
        {
            Button("Mi primer botón", action: {
            
                //Closures. Pedazos de código dentro de un elemento.
                print("Pulsé mi botón")
            })
            
            Button("Mi segundo botón")
            {
                print("Mi segundo BOTÓN 2")
            }
            
            Button(action: {saludo()}, label: {
                // Se podrían poner imágenes aquí
                Text("Botón con LABEL como argumento")
            })
        }
    }
    
    func saludo()
    {
        print("Método EXTERNO saludooo")
    }
}

struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        Buttons()
    }
    // TODO: Create git repo to this project
}
