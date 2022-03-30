//
//  ViewController.swift
//  xylophone
//
//  Created by Goh Yuhan on 2022/03/30.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    @IBAction func keyPresssd(_ sender: UIButton) {
        sender.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now()+0.2, execute: {
            sender.alpha = 1

        })
        playSound(filename: sender.currentTitle!)
    }
    
    func playSound(filename: String){
        let url = Bundle.main.url(forResource: filename, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}

