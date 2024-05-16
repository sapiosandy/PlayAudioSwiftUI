//
//  PlaySound.swift
//  PlayAudioSwiftUI
//
//  Created by Sandra Gomez on 5/16/24.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            if let playbackPosition = UserDefaults.standard.object(forKey: "PlaybackPosition") as? TimeInterval {
                audioPlayer?.currentTime = playbackPosition
            }
            audioPlayer?.play()
        } catch {
            print("Could not find and play sound file")
        }
    }
}
