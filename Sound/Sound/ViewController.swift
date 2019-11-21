//
//  ViewController.swift
//  Sound
//
//  Created by nanami tomozoe on 2019/11/17.
//  Copyright © 2019 nanami tomozoe. All rights reserved.
//

import UIKit
import AVFoundation  //音を鳴らしたいときに必要

class ViewController: UIViewController {

    @IBOutlet var button:UIButton!
    //音を鳴らす源の役割を担っているよ
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    /*ボタンをタップ　　Sound１の教科書
    @IBAction func tap() {
        //ここに画像をタップしたときのコードを書くよ
        //プロジェクト内のファイルを取得
        let path = Bundle.main.path(forResource: "taiko", ofType: "mp3")!
        //取得したファイルをURLに変換
        let url = URL(fileURLWithPath: path)
        
        //実際にaudioPlayerを作成
        audioPlayer = try! AVAudioPlayer(contentsOf: url)
        //audioPlayerを鳴らす
        audioPlayer.play()
    }*/
    
    @IBAction func tapBeginButton(){
        //音を鳴らすためのコード
         let path = Bundle.main.path(forResource: "guitar", ofType: "mp3")!
         let url = URL(fileURLWithPath: path)
        audioPlayer = try! AVAudioPlayer(contentsOf: url)
        audioPlayer.play()
        
        //ボタンが押されている間は、画像が猫に変わるためのコード
        button.setImage(UIImage(named: "musician_cat.png"),for: .normal)
        print("tap begin")
    }
    
    @IBAction func tapEndButton(){
        button.setImage(UIImage(named: "guitar.png"),for: .normal)
        print("tap end")
        
        //audioPlayer.pause()追加
    }


}

