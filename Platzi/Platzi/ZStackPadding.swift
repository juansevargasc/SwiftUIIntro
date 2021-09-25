//
//  ZStackPadding.swift
//  Platzi
//
//  Created by Juanse Vargas on 22/09/21.
//

import SwiftUI

struct ZStackPadding: View {
    
    
    
    var body: some View {
        
        ZStack
        {
            
            Color.yellow // Lo que está atrás
            //Text("Platzi!")
            
            Spacer()
            VStack // Todo lo que está al frente
            {
                
                
                Text("Bienvenidos al curso").padding(.bottom, 6.0)
                
                DatosEntradaUsuario()
                Imagenes()
                
                TextMod()
                
                
            }
        }.ignoresSafeArea()
    }
}

struct Imagenes: View
{
    var body: some View
    {
        VStack {
            Image("platzi").resizable().aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100, alignment: .center)
            Image("platzi").resizable().aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100, alignment: .center)
            Image("platzi").resizable().aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100, alignment: .center)
        }
        
    }
}


struct DatosEntradaUsuario: View
{
    @State var curso: String = "iOS"
    
    var body: some View
    {
        ZStack
        {
            if curso == ""
            {
                Text("Curso")
                    .foregroundColor(Color.blue)
            }
            
            TextField("Curso", text: $curso).padding(.leading, 8.0)
        }
    }
}

struct Reto: View
{
    var body: some View
    {
        VStack(alignment: .trailing)
        {
            Text("1").border(Color.black)
            Text("2").border(Color.black)
            Text("3").border(Color.black)
            
            HStack
            {
                Text("A").foregroundColor(.black)
                    .frame(width: 100, height: 100, alignment: .center)
                    .background(Color.red)
                    .border(Color.black)
                
                HStack(alignment: .top)
                {
                    Text("B").border(Color.black).background(Color.red)
                        .frame(width: 20, height: 100, alignment: .top)
                    Text("C").border(Color.black).background(Color.red)
                        .frame(width: 20, height: 100, alignment: .top)
                }
                
            }.background(Color.red)
        }.background(Color.blue)
    }
}

struct ZStackPadding_Previews: PreviewProvider {
    static var previews: some View {
        ZStackPadding()
        
        Imagenes()
    }
}
