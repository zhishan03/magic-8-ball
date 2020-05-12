//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.center.x = self.view.frame.width + 30
        
        UIView.animate(withDuration: 3.0, delay: 0, usingSpringWithDamping: 2.0, initialSpringVelocity: 60, options: [], animations: ({
            
            self.imageView.center.x = self.view.frame.width / 2
            
        }), completion: nil)
    }
    
    let ballArray = [#imageLiteral(resourceName: "ball1.png"),#imageLiteral(resourceName: "ball2.png"),#imageLiteral(resourceName: "ball3.png"),#imageLiteral(resourceName: "ball4.png"),#imageLiteral(resourceName: "ball5.png"),#imageLiteral(resourceName: "ball6.png"),#imageLiteral(resourceName: "ball7.png"),#imageLiteral(resourceName: "ball8.png"),#imageLiteral(resourceName: "ball9.png")]
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        AudioServicesPlaySystemSound(SystemSoundID(1109))
        imageView.image = ballArray.randomElement()
    }

}

