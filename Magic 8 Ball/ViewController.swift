//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by PRIYANK on 12/02/17.
//  Copyright © 2017 Priyank agarwal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBallNumber : Int = 0
    
    @IBOutlet weak var ballImageView: UIImageView!
    
    override func viewDidLoad() {
        
        newBallImage()
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askbuttonPressed(_ sender: UIButton) {
        
        newBallImage()
    }
    func newBallImage() {
        randomBallNumber = Int(arc4random_uniform(5))
        
        ballImageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        newBallImage()
    }
}

