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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for button in buttons {
            button.layer.cornerRadius = 8
        }        // Do any additional setup after loading the view.
    }
    
    @IBAction func stopButtonTapped(_ sender: UIButton) {
    }
    
    
    @IBAction func restartButtonTapped(_ sender: Any) {
    }
    
    
    @IBAction func rulesButtonTapped(_ sender: Any) {
    }
    
    
    @IBAction func rulesCloseButton(unwindSegue: UIStoryboardSegue){
        
    }
}
