//
//  Player.swift
//  Platzi
//
//  Created by Juanse Vargas on 25/09/21.
//

import SwiftUI
import AVKit

struct Player: View {
    
    var body: some View {
        
        
        NavigationView
        {
            VideoButton()
        }
        
    }
}

//TODO: Modularizar el código, con un fondo mejor y con mejor tamaño el reproductor

struct VideoButton: View
{
    
    @State var isPlayerActive:Bool = false
    
    var body: some View
    {
        VStack
        {
            Button(action: {isPlayerActive = true}, label: {
                
                ZStack
                {
                    Image("cuphead").resizable().aspectRatio(contentMode: .fit)
                    Image(systemName: "play.fill").foregroundColor(.white)
                }
            })
            
            NavigationLink(
                destination:
                    PlayerSection(),
                isActive: $isPlayerActive,
                label:
                {
                    EmptyView()
                })
            
        }
    }
}

struct PlayerSection: View
{
    var body: some View
    {
        ZStack
        {
            Color.black
            
            VideoPlayer(player: AVPlayer( url: URL(string: "https://cdn.cloudflare.steamstatic.com/steam/apps/256705156/movie480.mp4")!)).frame(width: 420, height: 360, alignment: .center)// Hay que ponerle ! un wrap, dado que URL podría arrojar excepción.
        }.ignoresSafeArea()
    }
}


struct Player_Previews: PreviewProvider {
    static var previews: some View
    {
        Player()
        PlayerSection()
    }
}
