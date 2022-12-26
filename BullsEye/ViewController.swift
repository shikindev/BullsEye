//
//  ViewController.swift
//  BullsEye
//
//  Created by maxshikin on 22.12.2022.
//

import UIKit

class ViewController: UIViewController {
//MARK - Outlets
    
    @IBOutlet weak var chooseLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var roundLabel: UILabel!
    @IBOutlet weak var startOverButtonOutlet: UIButton!
    @IBOutlet weak var hitMeButtonOutlet: UIButton!
    @IBOutlet weak var infoButtonOutlet: UIButton!
    @IBOutlet weak var sliderOutlet: UISlider!
    
    var currentValue = 50
    var targerValue = 0
    var score = 0
    var round = 0
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startNewRound()
        scoreLabel.text = "\(score)"
        roundLabel.text = "\(round)"
        
        sliderOutlet.minimumValue = 0
        sliderOutlet.maximumValue = 100
        
    }
//MARK - Actions
    
    @IBAction func sliderAction(_ sender: UISlider) {
     currentValue = lroundf(sender.value)
//        chooseLabel.text = "\(Int(sliderOutlet.value))"
        
    }
    @IBAction func hitmeAlertAction(_ sender: UIButton) {
        if currentValue == targerValue {
            let alert = UIAlertController(title: "Oh my god", message: "You are right" + "\n +50 points", preferredStyle: .alert)
            let action = UIAlertAction(title: "Once more", style: .default, handler: nil)
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
            score += 50
            round += 1
            scoreLabel.text = "\(score)"
            roundLabel.text = "\(round)"
            
            startNewRound()
        } else {
            wrongChoise()
            startNewRound()
        }
    }
    @IBAction func startOverAction(_ sender: UIButton) {
    }
    @IBAction func infoActionButton(_ sender: UIButton) {
        alertAction()
    }
    func alertAction() {
        let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
        let alert = UIAlertController(title: "Info", message: "The value of the slider is:  \(currentValue)" + "\n The target value is \(targerValue)", preferredStyle: .alert)
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
    
    func wrongChoise() {
        let action = UIAlertAction(title: "Try again", style: .default, handler: nil)
        let alert = UIAlertController(title: "Bad job", message: "The value of the slider is:  \(currentValue)" + "\n The target value is \(targerValue)", preferredStyle: .alert)
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
        score -= 5
        round += 1
        scoreLabel.text = "\(score)"
        roundLabel.text = "\(round)"
    }
    
    func startNewRound() {
        targerValue = Int.random(in: 0...100)
        currentValue = 50
        sliderOutlet.value = Float(currentValue)
        chooseLabel.text = "\(targerValue)"
    }
}

