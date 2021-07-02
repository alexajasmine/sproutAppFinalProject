//
//  ToDoTableViewController.swift
//  ALEXA SproutAppFinalProject
//
//  Created by  Scholar on 7/1/21.
//

import UIKit

class ToDoTableViewController: UITableViewController {

    var toDos : [ToDoCD] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //toDos = createToDos()
    }
    
    func getToDos(){
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext{
            
            if let coreDataToDos = try? context.fetch(ToDoCD.fetchRequest()) as? [ToDoCD]{
                toDos = coreDataToDos
                tableView.reloadData()
            }
        }
    }
    
    //static to-dos
    func createToDos() -> [ToDo]{
        let swift = ToDo()
        swift.name = "Learn Swift"
        swift.important = true
        
        let dog = ToDo()
        dog.name = "Walk the Dog"
        
        return[swift, dog]
    }
    

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath : IndexPath){
        let toDo = toDos[indexPath.row]
        
        performSegue(withIdentifier: "moveToComplete", sender: toDo)
    }
    
    //ite 1
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDos.count
    }
    
    //ite 1
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        let toDo = toDos[indexPath.row]
        if let name = toDo.name{
            if toDo.important{
                cell.textLabel?.text = "❗️" + name
            } else{
                cell.textLabel?.text = name
            }
        }
    
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender : Any?){
        if let addVC = segue.destination as? AddToDoViewController{
            addVC.previousVC = self
        }
        
        if let completeVC = segue.destination as? CompleteToDoViewController{
            if let toDo = sender as? ToDoCD{
                completeVC.selectedToDo = toDo
                completeVC.previousVC = self
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool){
        getToDos()
    }

}
