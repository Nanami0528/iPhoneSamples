//
//  ResultViewController.swift
//  Anzan
//
//  Created by nanami tomozoe on 2019/11/19.
//  Copyright © 2019 nanami tomozoe. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet var correctAnswerLabel: UILabel!
    @IBOutlet var resultImageView: UIImageView!  //マルかバツかを表示する
    var userNumber:Int!                          //ユーザーが入力する数字
    var correctNumber:Int!                       //正解の数字
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        correctAnswerLabel.text = String(correctNumber)
        
        if userNumber == correctNumber{
            resultImageView.image = UIImage(named: "correct")
        } else{
            resultImageView.image = UIImage(named: "incorrect")
        }
    }
    
    @IBAction func restartButtonPressed(){
       dismiss(animated: true, completion: nil)
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
