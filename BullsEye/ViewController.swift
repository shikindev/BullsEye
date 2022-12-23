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
    
    let currentValue = 0
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
//MARK - Actions
    
    @IBAction func sliderAction(_ sender: UISlider) {
     var sliderValue = lroundf(sender.value)
        
    }
    @IBAction func hitmeAlertAction(_ sender: UIButton) {
    }
    @IBAction func startOverAction(_ sender: UIButton) {
    }
    @IBAction func infoActionButton(_ sender: UIButton) {
        alertAction()
    }
    func alertAction() {
        let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
        let alert = UIAlertController(title: "Info", message: "The value of the slider is:  \(currentValue)", preferredStyle: .alert)
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
}

