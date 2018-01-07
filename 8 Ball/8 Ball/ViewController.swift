//
//  ViewController.swift
//  8 Ball
//
//  Created by Salavat Shirgaleev on 12/10/17.
//  Copyright © 2017 Salavat Shirgaleev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var n : Int = 0;
    let array = ["ball1","ball2","ball3","ball4","ball5",]

    override func viewDidLoad() {
        super.viewDidLoad()
        updateImageButton()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var ballImage: UIImageView!
    
    @IBAction func button(_ sender: UIButton) {
        updateImageButton()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateImageButton(){
        n = Int(arc4random_uniform(5))
        ballImage.image = UIImage(named: array[n])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateImageButton()
    }

}

