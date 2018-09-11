//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Caroline Downey on 8/28/18.
//  Copyright © 2018 Caroline Downey. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var awesomeImageView: UIImageView!
    @IBOutlet weak var messageLabel: UILabel!
    var awesomePlayer = AVAudioPlayer()
    
    var index = -1
    var imageIndex = -1
    var soundIndex = -1
    let numberOfImages = 10
    let numberOfSounds = 6
    
    // Code below executes when the app's view first loads
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func showMessagePressed(_ sender: UIButton) {
        
        let messages = ["You Are Awesome",
                        "You Are Great",
                        "You Are Fantastic",
                        "When the Genius Bar needs help, they call you",
                        "You Brighten My Day",
                        "You Are Da Bomb",
                        "Hey, Fabulous",
                        "You Are Tremendous",
                        "You've got the design skills of Jony Ive",
                        "I can't wait to download your app"]
        
        
 //    var newIndex = -1
        var newIndex: Int // declares but doesn't initialize
        
        // Show a message
        repeat {
            newIndex = Int.random(in: 0..<messages.count)
            
        } while index == newIndex
        
        index = newIndex
        messageLabel.text = messages[index]
        
        // Show an image
        repeat {
            newIndex = Int.random(in: 0..<numberOfImages)
        } while imageIndex == newIndex
        
        imageIndex = newIndex
        awesomeImageView.image = UIImage(named: "image\(imageIndex)")
        
        //get a random number to use in our soundName file
        repeat {
            newIndex = Int.random(in: 0..<numberOfSounds )
        } while soundIndex == newIndex
        
        soundIndex = newIndex
        
        
        // Play a sound
        var soundName = "sound\(soundIndex)"
        
        //Can we load in the file soundName?
        if let sound = NSDataAsset(name: soundName) {
            // check if sound.data is a sound file
            do {
                try awesomePlayer = AVAudioPlayer(data: sound.data)
                awesomePlayer.play()
            } catch {
                // if sound.data is not a valid audio file
                print("ERROR: data in \(soundName) couldn't be played as a sound.")
            }
            
        } else {
            // if reading in the NSDataAsset didn't work, tell the developer / report the error.
            print("ERROR: file \(soundName) didn't load")
        }
        
        
    }

        
}

    


    


