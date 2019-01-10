 //
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Tugba on 5.01.2019.
//  Copyright © 2019 Tugba. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imageView: UIImageView!


    
let ballArray = ["ball1","ball2","ball3","ball4","ball5"]
  var randomBallNumber = Int()

    func updateImageView(){
        randomBallNumber = Int(arc4random_uniform(4))
        imageView.image = UIImage(named:ballArray[randomBallNumber])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        updateImageView()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        print("ask button pressed")
        
        updateImageView()
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateImageView()
    }
}

