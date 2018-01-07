//
//  ViewController.swift
//  Magic 8 ball
//
//  Created by Salavat Shirgaleev on 12/10/17.
//  Copyright © 2017 Salavat Shirgaleev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var n: Int = 0
    let a = ["ball1","ball2","ball3","ball4","ball5"]

    
    @IBOutlet weak var answerImage: UIImageView!
    
    @IBAction func askButton(_ sender: UIButton) {
        updateImage()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        updateImage()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }

    
  
    
    
    func updateImage(){
        n = Int (arc4random_uniform(5))
        answerImage.image = UIImage(named: a [n])
    }
    
    
    
}

