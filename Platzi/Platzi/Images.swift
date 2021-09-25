//
//  Images.swift
//  Platzi
//
//  Created by Juanse Vargas on 17/09/21.
//

import SwiftUI

struct Images: View {
    var body: some View {
    
        VStack
        {
            Text("IMÁGENES")
            
            Image("platzi").resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            Image("platzi").resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .blur(radius: 8.0)
            // Blur
            
            Image("platzi").resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).opacity(0.7)
            // Opacity. For things in background
                
            Button(action: {print("Bienvenido a Platzi")}, label: {
                Image("platzi").resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            })
            
            Image(systemName: "moon.fill")
        }
    }
}

struct Images_Previews: PreviewProvider {
    static var previews: some View {
        Images()
    }
}
