//
//  ViewController.swift
//  DisplayImageApp
//
//  Created by Kuchi,Yudu Eswar Vinay Pratap Kumar on 2/21/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageViewOL: UIImageView!
    
    
    @IBOutlet weak var descriptionLabelOl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func displayImage(_ sender: UIButton) {
        
        imageViewOL.image = UIImage(named: "raina")
        
        descriptionLabelOl.text = "Mr. IPL - Suresh Raina"
    }
    
}

