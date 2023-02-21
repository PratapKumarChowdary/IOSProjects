//
//  ViewController.swift
//  TemperatureApp
//
//  Created by Kuchi,Yudu Eswar Vinay Pratap Kumar on 2/21/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tempOutlet: UITextField!
    
    
    @IBOutlet weak var imageViewOutlet: UIImageView!
    
    @IBOutlet weak var displayLabelOutlet: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func evaluateTempBtn(_ sender: UIButton) {
        
        var temp = Int(tempOutlet.text!)
        
        if(temp! < 0){
            imageViewOutlet.image = UIImage(named: "freezing")
            displayLabelOutlet.text = "Its Freezing!"
        }
        else if(temp! > 0 && temp! < 36){
            imageViewOutlet.image = UIImage(named: "cold")
            displayLabelOutlet.text = "Its too Cold"
        }
        else{
            imageViewOutlet.image = UIImage(named: "sunny")
            displayLabelOutlet.text = "Today is Sunny"
        }
    }
    
}

