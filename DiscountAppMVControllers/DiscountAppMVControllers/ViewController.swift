//
//  ViewController.swift
//  DiscountAppMVControllers
//
//  Created by Kuchi,Yudu Eswar Vinay Pratap Kumar on 3/30/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var amountOL: UITextField!
    
    
    @IBOutlet weak var discRateOL: UITextField!
    
    
    var priceAfterDiscount = 0.0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func calcBtnClicked(_ sender: UIButton) {
        
        //Read the text and convert into Double
        
        var amount = Double(amountOL.text!)
        print(amount!)
        var discrate = Double(discRateOL.text!)
        print(discrate!)
        
        priceAfterDiscount = amount! - (amount! * discrate!/100)
        print(priceAfterDiscount)
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if(transition == "resultSegue"){
            // Set the destination.
            
            var destination = segue.destination as! ResultViewController
            
            // Assign appropriate values to the destination.
            destination.amount = amountOL.text!
            destination.discRate = discRateOL.text!
            
            destination.priceAfterDisc = String(priceAfterDiscount)
        }
    }
    

}

