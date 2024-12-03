//
//  CardSelectionVC.swift
//  CardWorkout
//
//  Created by Ege Kaygisizer on 2/12/24.
//

import UIKit

class CardSelectionVC: UIViewController {
    
    @IBOutlet weak var cardImageView: UIImageView!
    @IBOutlet var buttons: [UIButton]!
    
    var timer : Timer!
    var card : [UIImage] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for button in buttons {
            button.layer.cornerRadius = 8
        }
        
        let deck = Decks()  // Decks nesnesi oluşturuluyor
        card = deck.AllCards
    }
    
    
    
    func startTimer() {
        timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector (updateCards), userInfo: nil, repeats: true)
    }
    
    @objc func updateCards() {
        cardImageView.image = card.randomElement() ?? UIImage(named: "AS")
        }
    
    @IBAction func stopButtonTapped(_ sender: UIButton) {
        timer?.invalidate()
        timer = nil
    }
    
    
    @IBAction func restartButtonTapped(_ sender: Any) {
        timer?.invalidate()
        timer = nil
        startTimer()
    }
    
    
    @IBAction func rulesButtonTapped(_ sender: Any) {
    }
    @IBAction func rulesCloseButton(unwindSegue: UIStoryboardSegue){
        
    }
}
