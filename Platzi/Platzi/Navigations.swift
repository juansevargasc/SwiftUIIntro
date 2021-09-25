//
//  Navigations.swift
//  Platzi
//
//  Created by Juanse Vargas on 24/09/21.
//

import SwiftUI

struct Navigations: View {
    
    @State var isDividersActive :Bool = false
    var body: some View {
        
        
        NavigationView
        {
            VStack
            {
                //La vista Text tiene estas características.
                Text("Hello, World!").navigationTitle("Home")
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbar(content: { ToolbarItem( placement: .navigationBarTrailing)
                        {
                        Button(action: {isDividersActive.toggle()}, label: {
                                Text("+")
                            })
                        }
                })
                
                NavigationLink("Navegar a TabViews!",
                               destination:
                               TabViews() )
                
                NavigationLink(
                    destination: Dividers(),
                    isActive: $isDividersActive,
                    label: {
                        EmptyView() // Vista vacía, es buena práctica porque no consume recursos, mientras que Text("") sí lo haría.
                        
                    })
                
                
            }
            
            //TODO: Modularizar el código, con un fondo mejor y con mejor tamaño el reproductor
            
            
            
            
            
        }
    }
}



struct Navigations_Previews: PreviewProvider {
    static var previews: some View {
        Navigations()
    }
}
