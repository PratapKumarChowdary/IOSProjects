//
//  ViewController.swift
//  CourseDisplayApp
//
//  Created by Kuchi,Yudu Eswar Vinay Pratap Kumar on 3/16/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var displayImage: UIImageView!
    
    
    @IBOutlet weak var crsNum: UILabel!
    
    @IBOutlet weak var crsTitle: UILabel!
    
    @IBOutlet weak var semOffered: UILabel!
    
    
    @IBOutlet weak var prevBtn: UIButton!
    
    
    
    @IBOutlet weak var nextBtn: UIButton!
    
    var imageNumber = 0
    
    
    let courses = [["img01","44555","Network Security","Fall 2022"],
                   ["img02","44643","iOS","Spring 2023"],
                   ["img03","44656","Streaming Data","Fall 2024"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Load the first Image (image in the 0th Position)
            displayImage.image = UIImage(named: courses[0][0])
        //Load the course details (Number, Title, and Semester)
            crsNum.text = courses[0][1]
            crsTitle.text = courses[0][2]
            semOffered.text = courses[0][3]
        
        //Previous Btn Disabled
        prevBtn.isEnabled = false
        
        //Next Btn Enabled
        nextBtn.isEnabled = true
        
        
    }
    
    
    @IBAction func previousBtnClicked(_ sender: UIButton) {
        
        // Decrement the image Number
        imageNumber -= 1
        
        updateCourseDetails(_imageNumber: imageNumber)
        
        nextBtn.isEnabled = true
        
    }
    
    @IBAction func nextBtnClicked(_ sender: UIButton) {
        
        // Increment the Image Number
            imageNumber += 1
        // Update Course Details(image, numbers,title, sem offered)
        updateCourseDetails(_imageNumber: imageNumber)
        
        
        if(imageNumber == courses.count-1){
            nextBtn.isEnabled = false
        }
        
    }
    
    func updateCourseDetails(_imageNumber:Int){
        displayImage.image = UIImage(named: courses[imageNumber][0])
        crsNum.text = courses[imageNumber][1]
        crsTitle.text = courses[imageNumber][2]
        semOffered.text = courses[imageNumber][3]
        // Previous button should be enabled
        prevBtn.isEnabled = true
        //When we reach the end of array next button should be disbaled.
        
        
        
        // Update Course Details(image, numbers,title, sem offered)
        displayImage.image = UIImage(named: courses[imageNumber][0])
        crsNum.text = courses[imageNumber][1]
        crsTitle.text = courses[imageNumber][2]
        semOffered.text = courses[imageNumber][3]
        
        // when we reach end of the array Previous button should be enabled
        if(imageNumber == 0){
            prevBtn.isEnabled = false
            
        }
        
    }
    

}

