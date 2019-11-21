//
//  ViewController.swift
//  Profile
//
//  Created by nanami tomozoe on 2019/11/17.
//  Copyright © 2019 nanami tomozoe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //文字を表示するラベル
    @IBOutlet var label:UILabel!
    
    //画像を表示するイメージビュー
    @IBOutlet var imageView:UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //ボタンがタップされた時の動作
    @IBAction func tapNameButton(){
        //ラベルの文字を変更
        label.text = "とびすけ"
        
        //とびすけの画像を表示
        imageView.image = UIImage(named: "tobisuke.png")
        
        
    }


}

