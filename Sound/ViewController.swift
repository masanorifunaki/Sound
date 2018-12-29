//
//  ViewController.swift
//  Sound
//
//  Created by 舟木正憲 on 2018/12/29.
//  Copyright © 2018 masanori. All rights reserved.
//

import UIKit
// サウンドや動画の再生機能が含まれる
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {

    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonTapped(sender: UIButton) {
        let url = URL(fileURLWithPath: Bundle.main.bundlePath).appendingPathComponent("sample.mp3")
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.delegate = self
            player.play()
        } catch {
            print("Failed")
        }
    }

    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
        print("Finished!")
    }

}

