//
//  ShareViewController.swift
//  ALEXA SproutAppFinalProject
//
//  Created by Maya J on 7/2/21.
//

import UIKit

class ShareViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func fbButton(_ sender: UIButton) {
        UIApplication.shared.open(URL(string:"https://www.facebook.com")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func igButton(_ sender: UIButton) {
        UIApplication.shared.open(URL(string:"https://www.instagram.com")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func twitterButton(_ sender: UIButton) {
        UIApplication.shared.open(URL(string:"https://www.twitter.com")! as URL, options: [:], completionHandler: nil)
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
