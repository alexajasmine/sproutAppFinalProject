//
//  MainScreenViewController.swift
//  ALEXA SproutAppFinalProject
//
//  Created by Maya J on 7/1/21.
//

import UIKit

class MainScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        welcomeName.text = "Welcome to Sprout, \(username)"
    }
    @IBOutlet weak var welcomeName: UILabel!
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
