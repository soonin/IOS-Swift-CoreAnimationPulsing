//
//  ViewController.swift
//  IOS-Swift-CoreAnimationPulsing
//
//  Created by Pooya on 2018-05-29.
//  Copyright © 2018 Pooya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var buttonView: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonView.isUserInteractionEnabled = true
        buttonView.layer.cornerRadius = 50
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.addPulse))
        
        tapGestureRecognizer.numberOfTapsRequired = 1
        buttonView.addGestureRecognizer(tapGestureRecognizer)
        
    }

    
    @objc func addPulse() {
        let pulse =  Pulsing(numberOfPulses: 1, radius: 180, position: buttonView.center)
        pulse.animationDuration = 0.8
        pulse.backgroundColor = UIColor.green.cgColor
        self.view.layer.insertSublayer(pulse, below: buttonView.layer)
        
        // TODO: Add Button action after pulse
        print("Add Button action after pulse ")
    }
    
}

