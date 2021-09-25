//
//  TextMod.swift
//  Platzi
//
//  Created by Juanse Vargas on 16/09/21.
//

import SwiftUI

struct TextMod: View {
    var body: some View {
        Text("Hola mundo!!!,")
            .font(.largeTitle)
            .foregroundColor(Color.blue)
            .frame(width: 300, height: 100, alignment: .leading)
            .background(Color.black)
    }
}

struct TextMod_Previews: PreviewProvider {
    static var previews: some View {
        TextMod()
    }
}
