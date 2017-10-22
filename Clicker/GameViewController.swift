//
//  GameViewController.swift
//  Clicker
//
//  Created by Sasha Voronoy on 22.10.2017.
//  Copyright © 2017 Sasha Voronoy. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    @IBOutlet weak var greenButtonLabel: UIButton!
    @IBOutlet weak var redButtonLabel: UIButton!
    @IBOutlet weak var blueButtonLabel: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var click = 0
    var counter = 5
    var buttons:[UIButton] = []
    var timer =  Timer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.buttons = [greenButtonLabel, redButtonLabel, blueButtonLabel]
    }
    
    @IBAction func startGameButton(_ sender: Any) {
        self.timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(self.randomShowButton), userInfo: nil, repeats: true)
        
    }
    
    @IBAction func goNext(_ sender: Any) {
        
    }
    @IBAction func buttonPressed(_ sender: Any) {
        click = click + 1
        scoreLabel.text = String(click)
        
    }
    
    @objc func randomShowButton(){
        self.resetAllButton()
        let random = Int(arc4random_uniform(3))
        print("random \(random)")
        print("counter \(counter)")
        buttons[random].isHidden = false
        counter = counter - 1
        if counter == 0 { gameOver() }
    }
    
    func resetAllButton(){
        for button in buttons{
            button.isHidden = true
        }
    }
    
    func gameOver(){
        
        self.timer.invalidate()

        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let gameOverViewController = storyBoard.instantiateViewController(withIdentifier: "GameOverViewController") as! GameOverViewController
        gameOverViewController.labeltext = String(click)
        self.present(gameOverViewController, animated:true, completion:nil)
    }
}
