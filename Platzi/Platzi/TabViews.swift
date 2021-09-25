//
//  TabViews.swift
//  Platzi
//
//  Created by Juanse Vargas on 24/09/21.
//

import SwiftUI

struct TabViews: View {
    var body: some View {
        
        
        TabView
        {
            TextMod().tabItem
            {
                Text("Pantalla 1")
                Image(systemName: "moon")
            }
            
            TextFields().tabItem
            {
                Text("Pantalla 2")
                Image(systemName: "play")
            }
            
            ZStackPadding().tabItem
            {
                Text("Pantalla 3")
                Image(systemName: "terminal")
            }
        }
    }
}

struct TabViews_Previews: PreviewProvider {
    static var previews: some View {
        TabViews()
    }
}
