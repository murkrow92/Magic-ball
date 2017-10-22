//
//  ViewController.swift
//  MagicBall
//
//  Created by murkrow on 10/18/17.
//  Copyright © 2017 Murkrow. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    private let ARRAY_IMAGES = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomDiceNumber: Int = 0;

    @IBOutlet weak var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let index = Int(arc4random_uniform(4))
        imageView.image = UIImage(named: ARRAY_IMAGES[index])
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
    }
}
