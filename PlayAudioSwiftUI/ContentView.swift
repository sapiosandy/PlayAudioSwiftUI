//
//  ContentView.swift
//  PlayAudioSwiftUI
//
//  Created by Sandra Gomez on 5/16/24.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack {
            Image("curb")
                .resizable()
                .renderingMode(.original)
                .scaledToFill()
                .position(x: UIScreen.main.bounds.width / 2, y: UIScreen.main.bounds.height / 2)                .edgesIgnoringSafeArea(.all)
           
            VStack {
                Spacer()
                HStack{
                    Button(action: {
                        playSound(sound: "CurbYourEnthusiasm", type: "mp3")
                    }, label: {
                        Image(systemName: "play.fill")
                    })
                    .padding()
                    Button(action: {
                        pauseSound()
                    }, label: {
                        Image(systemName: "pause.fill")
                    })
                    .padding()
                    Button(action: {
                        stopSound()
                    }, label: {
                        Image(systemName: "stop.fill")
                    })
                    .padding()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
