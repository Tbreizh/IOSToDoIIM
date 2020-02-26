//
//  ViewController.swift
//  Bull's Eyes UIKit
//
//  Created by GUILLO Tristan on 26/02/2020.
//  Copyright © 2020 GUILLO Tristan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelTarget: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var labelScore: UILabel!
    @IBOutlet weak var labelRound: UILabel!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var infoButton: UIButton!
    
    var firstUse :Bool  = true
    var sliderValue: Int = 0
    var targetValue : Int = 0
    var roundValue : Int = 0
    var scoreValue : Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        sliderValue = Int(slider.value.rounded())
        startNewRound()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        sliderValue = Int(slider.value.rounded())
   }
    
    
    @IBAction func showAlert() {
        var titleValue = ""
        titleValue = sliderValue == targetValue ? "Perfect !!!" :
            abs(sliderValue - targetValue) <= 1 ? "Almost Perfect !":
            "Better next time"
        
        scoreValue = sliderValue == targetValue ? scoreValue + 100:
            abs(sliderValue - targetValue) <= 1 ? scoreValue + 50:
            scoreValue
                
        let alert = UIAlertController(title: titleValue, message: "You Find \(sliderValue)", preferredStyle: .alert)
        let action = UIAlertAction(title: "Next Round", style: .default, handler: {
            action in
            self.startNewRound()
        })
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func resetGame() {
        firstUse = true
        startNewRound()
    }

    func startNewRound(){
        targetValue = Int.random(in: 1...100)
        sliderValue = 50
        slider.value = 50
        labelTarget.text = "Find the number : " + String(targetValue)

        if (firstUse){
            scoreValue = 0
            roundValue = 0
            firstUse = false
        }
        else{
            scoreValue = scoreValue + 100 - abs(targetValue - sliderValue)
        }
        
        roundValue += 1
        labelRound.text = "Round : " + String(roundValue)
        labelScore.text = "Score : " + String(scoreValue)

    }

}

