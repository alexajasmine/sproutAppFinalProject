//
//  EntryViewViewController.swift
//  ALEXA SproutAppFinalProject
//
//  Created by  Scholar on 7/1/21.
//

import UIKit

class EntryViewController: UIViewController {
var name = ""
var paragraph = ""
var pictures = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleInput.text = name
        summaryInput.text = paragraph
        emojiInput.text = pictures
       print(name)
        
        print("In entry view : \(selectedArray.count)")
        // Do any additional setup after loading the view.
    }
    
    //UPDATE***
   
    @IBOutlet weak var titleInput: UILabel!
    
    @IBOutlet weak var summaryInput: UILabel!
    
    @IBOutlet weak var emojiInput: UILabel!
}
