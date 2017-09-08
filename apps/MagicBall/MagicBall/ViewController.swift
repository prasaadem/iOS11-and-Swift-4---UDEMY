//
//  ViewController.swift
//  MagicBall
//
//  Created by Aditya Emani on 9/8/17.
//  Copyright © 2017 Aditya Emani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var answerImageView: UIImageView!
    var ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    var randomBall:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func askButton(_ sender: Any) {
        getRandomBall()
    }
    
    func getRandomBall(){
        randomBall = Int(arc4random_uniform(5))
        answerImageView.image = UIImage.init(named: ballArray[randomBall])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        getRandomBall()
    }
}

