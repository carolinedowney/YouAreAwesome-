//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Caroline Downey on 8/28/18.
//  Copyright © 2018 Caroline Downey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    
    // Code below executes when the app's view first loads
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func showMessagePressed(_ sender: UIButton) {
        messageLabel.text = "You Are Awesome"

    }
    
}

