//
//  StopSound.swift
//  PlayAudioSwiftUI
//
//  Created by Sandra Gomez on 5/16/24.
//

import Foundation
import AVFoundation

func stopSound() {
    if let player = audioPlayer {
          player.stop()
          UserDefaults.standard.removeObject(forKey: "PlaybackPosition")
          audioPlayer = nil 
      }
}
