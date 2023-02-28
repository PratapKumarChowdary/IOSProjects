//
//  ViewController.swift
//  Sample_Practise
//
//  Created by Dhana Sri Kuchi on 2/27/23.
//

import UIKit

class ViewController: UIViewController {
    
    enum Product {
        case perfume,t_Shirt,other
    }
    
    
    @IBOutlet weak var headingOutlet: UILabel!
    
    
    @IBOutlet weak var productNameOL: UITextField!
    
    
    @IBOutlet weak var unitsOutlet: UITextField!
    
    
    @IBOutlet weak var beforeDiscountLbl: UILabel!
    
    
    @IBOutlet weak var afterDiscountLbl: UILabel!
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func calcBtn(_ sender: UIButton) {
        var productName = productNameOL.text!
        var units = Int(unitsOutlet.text!)
        
        if(productName == "Perfume"){
            
            let discount = 2.0
            let unitPrice = 10
            
            var beforeDiscount = Double(units! * unitPrice)
            var afterDiscount = beforeDiscount - (beforeDiscount * discount/100)
            
            beforeDiscountLbl.text = "Total price before discount for \(productName) is $\(beforeDiscount)"
            
            afterDiscountLbl.text = "Total price after discount for \(productName) is $\(afterDiscount)"
            
            imageView.image = UIImage(named: "perfumeimg")
            
        }
        else if(productName == "T-Shirt"){
            
            let discount = 4.0
            let unitPrice = 35
            
            let beforeDiscount = Double(units! * unitPrice)
            let afterDiscount = beforeDiscount - (beforeDiscount * discount/100)
            
            beforeDiscountLbl.text = "Total price before discount for \(productName) is $\(beforeDiscount)"
            
            afterDiscountLbl.text = "Total price after discount for \(productName) is $\(afterDiscount)"
            
            imageView.image = UIImage(named: "t-shirt")
            
        }
        else{
            let discount = 0
            let unitPrice = 0
            
            let beforeDiscount = Int(units! * unitPrice)
            let afterDiscount = beforeDiscount - (beforeDiscount * discount/100)
            
            beforeDiscountLbl.text = "Total price before discount for \(productName) is $\(beforeDiscount)"
            
            afterDiscountLbl.text = "Total price after discount for \(productName) is $\(afterDiscount)"
            
        
            
            
        }
    }
    
}

