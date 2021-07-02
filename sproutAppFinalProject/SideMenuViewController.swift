//
//  SideMenuViewController.swift
//  sproutAppFinalProject
//
//  Created by  Scholar on 7/1/21.
//

import UIKit

class SideMenuViewController: UIViewController, UITableViewDelegate {

    @IBOutlet var sideMenuTableView: UITableView!
    
    var defaultHighlightedCell: Int = 0
   
    override func viewDidLoad() {
        super.viewDidLoad()
//        // TableView
//               self.sideMenuTableView.delegate = self
//               self.sideMenuTableView.dataSource = self
//               self.sideMenuTableView.backgroundColor = #colorLiteral(red: 0.737254902, green: 0.1294117647, blue: 0.2941176471, alpha: 1)
//               self.sideMenuTableView.separatorStyle = .none
//
//               // Set Highlighted Cell
//               DispatchQueue.main.async {
//                   let defaultRow = IndexPath(row: self.defaultHighlightedCell, section: 0)
//                   self.sideMenuTableView.selectRow(at: defaultRow, animated: false, scrollPosition: .none)
//               }
//
////               // Footer
////               self.footerLabel.textColor = UIColor.white
////               self.footerLabel.font = UIFont.systemFont(ofSize: 12, weight: .bold)
////               self.footerLabel.text = "Developed by John Codeos"
//
//               // Register TableView Cell
//               self.sideMenuTableView.register(sideMenuTableView.nib, forCellReuseIdentifier: sideMenuTableView.identifier)
//
//               // Update TableView with the data
//               self.sideMenuTableView.reloadData()
//
        

        // Do any additional setup after loading the view.
    }

}



