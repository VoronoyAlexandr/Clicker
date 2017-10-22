//
//  ViewController.swift
//  Clicker
//
//  Created by Sasha Voronoy on 22.10.2017.
//  Copyright © 2017 Sasha Voronoy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func unwind(for unwindSegue: UIStoryboardSegue, viewController subsequentVC: UIViewController) {
        performSegue(withIdentifier: "unwindSegueToViewControleer", sender: self)
    }
}

