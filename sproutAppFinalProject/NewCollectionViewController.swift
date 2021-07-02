//
//  NewCollectionViewController.swift
//  ALEXA SproutAppFinalProject
//
//  Created by  Scholar on 7/1/21.
//

import UIKit
var selectedArray : [Journal] = []

class NewCollectionViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    let reuseIdentifier = "cell" // also enter this string as the cell identifier in the storyboard
    var items = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48"]
    
    // MARK: - UICollectionViewDataSource protocol
    
    // tell the collection view how many cells to make
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return entryArray.count
    }

    // make a cell for each cell index path
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
           
        // get a reference to our storyboard cell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath as IndexPath) as! MyCollectionViewCell
           
        // Use the outlet in our custom class to get a reference to the UILabel in the cell
        cell.myLabel.text = entryArray[indexPath.row].title // The row value is the same as the index of the desired text within the array.
        cell.backgroundColor = UIColor.white // make cell more visible in our example project
           
           return cell
       }
       
       // MARK: - UICollectionViewDelegate protocol
       
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    // handle tap events
    selectedArray.append(entryArray[indexPath.item])
        
        print("You selected cell #\(indexPath.item)!")
        print("In new collection \(selectedArray.count)")
        
        let vc = storyboard?.instantiateViewController(identifier: "EntryViewController") as? EntryViewController
                vc?.name =  entryArray[indexPath.row].title
                vc?.paragraph = entryArray[indexPath.row].summary
                vc?.pictures = entryArray[indexPath.row].emojis
        
                self.navigationController?.pushViewController(vc!, animated: true)
       }
    
    // change background color when user touches cell
    func collectionView(_ collectionView: UICollectionView, didHighlightItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
        cell?.backgroundColor = UIColor.red
    }

    // change background color back when user releases touch
    func collectionView(_ collectionView: UICollectionView, didUnhighlightItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
        cell?.backgroundColor = UIColor.white
    }
    
   }


