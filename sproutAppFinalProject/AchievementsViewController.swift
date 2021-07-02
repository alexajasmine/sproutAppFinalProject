//
//  AchievementsViewController.swift
//  ALEXA SproutAppFinalProject
//
//  Created by Maya J on 7/2/21.
//

import UIKit

class AchievementsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if completedTasks >= 5 {
            starImage.isHidden = false
            congratsLineOne.text = "Congratulations!"
            congratsLineTwo.text = "You completed five"
            congratsLineThree.text = "goals!"
        } else {
            starImage.isHidden = true
            congratsLineOne.text = "Complete \(String(5-completedTasks))"
            congratsLineTwo.text = "more tasks to"
            congratsLineThree.text = "earn this badge!"
        }
    }
    
    @IBOutlet weak var starImage: UIImageView!
    
    @IBOutlet weak var congratsLineOne: UILabel!
    
    @IBOutlet weak var congratsLineTwo: UILabel!
    
    @IBOutlet weak var congratsLineThree: UILabel!
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
