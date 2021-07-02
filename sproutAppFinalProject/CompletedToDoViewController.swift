//
//  CompletedToDoViewController.swift
//  ALEXA SproutAppFinalProject
//
//  Created by  Scholar on 7/1/21.
//

import UIKit

class CompleteToDoViewController: UIViewController {
    var selectedToDo : ToDoCD?
    var previousVC = ToDoTableViewController()
   
    
  
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = selectedToDo?.name
    }
    
  
    
    @IBAction func completeTapped(_ sender: Any) {
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext{
            if let theToDo = selectedToDo{
            context.delete(theToDo)
            navigationController?.popViewController(animated: true)
            }
        }
    }
    
    
    
  

}

