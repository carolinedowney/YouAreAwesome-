//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Caroline Downey on 8/28/18.
//  Copyright © 2018 Caroline Downey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var awesomeImageView: UIImageView!
    @IBOutlet weak var messageLabel: UILabel!
    
    var index = -1
    var imageIndex = -1
    let numberOfImages = 10
    
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
        
        repeat {
            newIndex = Int.random(in: 0..<messages.count)
            
        } while index == newIndex
        
        index = newIndex
        messageLabel.text = messages[index]
        
        
        repeat {
            newIndex = Int.random(in: 0..<numberOfImages)
        } while imageIndex == newIndex
        
        imageIndex = newIndex
        awesomeImageView.image = UIImage(named: "image\(imageIndex)")
        
    }

        
}

    


    


