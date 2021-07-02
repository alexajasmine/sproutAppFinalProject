//
//  TimerViewController.swift
//  sproutAppFinalProject
//
//  Created by Maya J on 6/30/21.
//

import UIKit

class TimerViewController: UIViewController {
    
    var timer = Timer()
    var minutes = 10
    var seconds = 600

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
        
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var sliderValue: UISlider!
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        minutes = Int(sliderValue.value)
        timeLabel.text = "\(minutes):00"
        seconds = minutes * 60
    }
    
    @IBAction func startButton(_ sender: UIButton) {
        timer.invalidate()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(TimerViewController.timerClass), userInfo: nil, repeats: true)
    }
    
    @IBAction func pauseButton(_ sender: UIButton) {
        timer.invalidate()
    }
    
    @IBAction func resetButton(_ sender: UIButton) {
        timer.invalidate()
        seconds = minutes * 60
        timeLabel.text = "\(String(minutes)):00"
    }
    
    
    @objc func timerClass() {
        
        var labelP2 = ""
        seconds -= 1
        if seconds % 60 < 10 {
            labelP2 = "0\(String(seconds % 60))"
        } else {
            labelP2 = String(seconds % 60)
        }
        
        timeLabel.text = "\(String(Int(seconds / 60)))" + ":" + "\(labelP2)"
        
        if seconds == 0 {
            timer.invalidate()
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
