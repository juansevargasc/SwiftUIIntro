//
//  Dividers.swift
//  Platzi
//
//  Created by Juanse Vargas on 17/09/21.
//

import SwiftUI

struct Dividers: View {
    var body: some View {
        
        VStack {
            
            Circle().frame(width: 100, height: 100, alignment: .center)
            Text("Círculo Negro")
            
            Divider().frame(height: 8).background(Color.red) // Lo que está aumentando es el frame.
            
            Rectangle().foregroundColor(.blue)
                .frame(width: 200, height: 100, alignment: .center)
            Text("Rectángulo azul")
        }
    }
}

struct Dividers_Previews: PreviewProvider {
    static var previews: some View {
        Dividers()
    }
}
