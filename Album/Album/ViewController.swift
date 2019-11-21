//
//  ViewController.swift
//  Album
//
//  Created by nanami tomozoe on 2019/11/18.
//  Copyright © 2019 nanami tomozoe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var imageName:String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    @IBAction func tapImage1(_ sender: UITapGestureRecognizer){
        imageName = "ocean.jpg"
        performSegue(withIdentifier: "toShowImageViewController", sender:nil)
    }
    
    @IBAction func tapImage2(_ sender: UITapGestureRecognizer){
        imageName = "portugal.jpg"
        performSegue(withIdentifier: "toShowImageViewController", sender:nil)
    }
    
    @IBAction func tapImage3(_ sender: UITapGestureRecognizer){
        imageName = "sakura.jpg"
        performSegue(withIdentifier: "toShowImageViewController", sender:nil)
    }
    
    @IBAction func tapImage4(_ sender: UITapGestureRecognizer){
        imageName = "ship.jpg"
        performSegue(withIdentifier: "toShowImageViewController", sender:nil)
    }
    
    @IBAction func tapImage5(_ sender: UITapGestureRecognizer){
        imageName = "waterfall.jpg"
        performSegue(withIdentifier: "toShowImageViewController", sender:nil)
    }
    
    @IBAction func tapImage6(_ sender: UITapGestureRecognizer){
        imageName = "yukata.jpg"
        performSegue(withIdentifier: "toShowImageViewController", sender:nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        
        if segue.identifier == "toShowImageViewController"{
            let  showImageViewController = segue.destination as! ShowImageViewController
            showImageViewController.imageName = imageName
        }
    }

}

