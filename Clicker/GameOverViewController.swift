//
//  GameOverViewController.swift
//  Clicker
//
//  Created by Sasha Voronoy on 22.10.2017.
//  Copyright © 2017 Sasha Voronoy. All rights reserved.
//

import UIKit

class GameOverViewController: UIViewController {

    @IBOutlet weak var scoreLabel: UILabel!
    var labeltext = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreLabel.text = labeltext

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
