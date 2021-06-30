//
//  EnterNameViewController.swift
//  sproutAppFinalProject
//
//  Created by Maya J on 6/30/21.
//

import UIKit

class EnterNameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
   
    @IBOutlet weak var nextButton: UIButton!
    
    @IBOutlet weak var enterName: UITextField!
    
    @IBOutlet weak var hiNameLabel: UILabel!
    
    @IBAction func submitButton(_ sender: UIButton) {
        if let welcomeText = enterName.text {
            if welcomeText != "" {
                hiNameLabel.text = "Welcome, \(welcomeText), to SPROUT🌱"
                hiNameLabel.isHidden = false
                nextButton.isHidden = false
                let profile = UserProfile(username : welcomeText)
            }
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
