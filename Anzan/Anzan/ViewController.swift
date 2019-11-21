//
//  ViewController.swift
//  Anzan
//
//  Created by nanami tomozoe on 2019/11/19.
//  Copyright © 2019 nanami tomozoe. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var rightNumberLabel:UILabel!
    @IBOutlet var leftNumberLabel:UILabel!
    @IBOutlet var operatorLabel:UILabel!
    @IBOutlet var answerTextField:UITextField!
    
    var leftNumebr:Int = 0
    var rightNumber:Int = 0
    var operatorIndex:Int = 0
    var correctNumber:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        answerTextField.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        initNumbers()
    }
    
    override func prepare(for segue:UIStoryboardSegue, sender:Any?){
        let resultViewController = segue.destination as! ResultViewController
        resultViewController.userNumber = Int(answerTextField.text!)
        resultViewController.correctNumber = correctNumber
    }
    
    @IBAction func checkAnswerButtonPressed(){
        performSegue(withIdentifier: "toResult",sender: nil)
    }
    
    
    

    func initNumbers(){
        answerTextField.text = ""
        leftNumebr = Int.random(in: 1...999)
        leftNumberLabel.text = String(leftNumebr)
        rightNumber = Int.random(in: 1...999)
        rightNumberLabel.text = String(rightNumber)
        operatorIndex = Int.random(in:0...3)
        
        if operatorIndex == 0{
            operatorLabel.text = "＋"
            correctNumber = leftNumebr + rightNumber
        }else if operatorIndex == 1{
            operatorLabel.text = "-"
            correctNumber = leftNumebr - rightNumber
        }else if operatorIndex == 2{
            operatorLabel.text = "×"
            correctNumber = leftNumebr * rightNumber
        }else{
            operatorLabel.text = "÷"
            correctNumber = leftNumebr / rightNumber
        }
    }
    
    //キーボードでエンターキー押したら呼ばれる
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        answerTextField.resignFirstResponder()
        return true
    }

}

