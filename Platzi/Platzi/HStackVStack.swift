//
//  HStackVStack.swift
//  Platzi
//
//  Created by Juanse Vargas on 20/09/21.
//

import SwiftUI

struct HStackVStack: View {
    var body: some View {
        
        // TODO: Homework 1. Make the design of picture called "reto"
        //
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

struct HStackVStack_Previews: PreviewProvider {
    static var previews: some View
    {
        Image("reto")
        HStackVStack()
    }
}
