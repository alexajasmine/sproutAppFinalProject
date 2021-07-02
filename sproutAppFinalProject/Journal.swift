//
//  Journal.swift
//  ALEXA SproutAppFinalProject
//
//  Created by  Scholar on 7/1/21.
//

import UIKit

class Journal{
    var title : String
    var summary :  String
    var emojis : String
    
    init(entryTitle : String, entrySummary :  String, entryEmoji : String){
        title = entryTitle
        summary = entrySummary
        emojis = entryEmoji
    }
    
    func printJournalEntry(){
        print("\(title), \(summary), \(emojis)")
    }
}
     
