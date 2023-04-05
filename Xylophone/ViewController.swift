//
//  ViewController.swift
//  Xylophone
//
//  Created by Edward Kheladze on 03.04.2023.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
        
    @IBAction func keyButtonPressed(_ sender: UIButton) {
    playSound(soundName: sender.currentTitle!)
        
    }
    
    func playSound(soundName : String)  {
        
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}
    


