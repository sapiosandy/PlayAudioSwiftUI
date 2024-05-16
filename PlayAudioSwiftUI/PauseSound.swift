//
//  PauseSound.swift
//  PlayAudioSwiftUI
//
//  Created by Sandra Gomez on 5/16/24.
//

import Foundation
import AVFoundation

func pauseSound() {
    if let player = audioPlayer {
            player.pause()
            UserDefaults.standard.set(player.currentTime, forKey: "PlaybackPosition")
        }
}

