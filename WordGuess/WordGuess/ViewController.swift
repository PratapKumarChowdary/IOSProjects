//
//  ViewController.swift
//  WordGuess
//
//  Created by Kuchi,Yudu Eswar Vinay Pratap Kumar on 3/21/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var DisplayLabel: UILabel!
    
    
    @IBOutlet weak var HintLabel: UILabel!
    
    
    @IBOutlet weak var EnterLetter: UITextField!
    
    
    @IBOutlet weak var CheckButton: UIButton!
    
    
    @IBOutlet weak var StatusLabel: UILabel!
    
    
    @IBOutlet weak var PlayAgain: UIButton!
    
    // Creating Array of Words and Hints
    var array_words = [["Swift","Programming Language"],["Cat","Animal"],["Bike","Vehicle"]]
    
    var count = 0
    var word = ""
    var letterGuessed = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        // Disabling Check Button
        CheckButton.isEnabled = false
        
        
        // Getting first word from the array
        word = array_words[count][0]
        
        // Display Label was Empty Initially
        DisplayLabel.text = ""
        
        // Calling updateUnderScores() function
        updateUnderScores();
        
        // Displaying Hint
        HintLabel.text = "Hint: " + array_words[count][1]
        
        // Initially Status Label is Empty
        StatusLabel.text = ""
        
        
    }
    
    
    @IBAction func checkButtonClicked(_ sender: UIButton) {
        
        // Getting letter entered in the Text Field
        var letter = EnterLetter.text!
        
        // Replacing Letter Guessed based on if letter is part of the word or not
        letterGuessed = letterGuessed + letter
        
        var revealedWord = ""
        
        for l in word{
            if letterGuessed.contains(l){
                revealedWord += "\(l)"
            }else{
                revealedWord += "_ "
            }
        }
        
        // Now after guessing assigning to displayLabel
        
        DisplayLabel.text = revealedWord
        EnterLetter.text = ""
        
        // Based on guessed word is correct or not, unhide and enable play again button and disabling the check button
        if DisplayLabel.text!.contains("_") == false{
            PlayAgain.isHidden = false;
            CheckButton.isEnabled = false;
        }
        CheckButton.isEnabled = false
        
        
        
    }
    
    
    @IBAction func PlayAgainBtnClicked(_ sender: UIButton) {
        
        
        
        PlayAgain.isHidden = true
        
        // clear the label
        letterGuessed = ""
        
        // Increment the count to fetch the next array_words
        count += 1
        
        //if count reaches to end of the array, then display congratulations message
        
        if count == array_words.count{
            
            StatusLabel.text = "Congruations! You are done with the game!"
          // Clear the Labels
            DisplayLabel.text = ""
            HintLabel.text = ""
        }
        else{
            // get the next word from the array_words
            
            word = array_words[count][0]
            
           // get the next hint from the array_words
            HintLabel.text = "Hint: "
            HintLabel.text! += array_words[count][1]
            
            
            // Enable the check button
            CheckButton.isEnabled = true
            
            DisplayLabel.text = ""
            // call updateUnderScores() function
            updateUnderScores()
        }
    }
    
    @IBAction func EnterLetter(_ sender: UITextField) {
        
        // Read the data from the text Field
        var enteredText = EnterLetter.text!
        
        //Considering only last charcter by calling enteredText.last and trimming white spaces
        enteredText = String(enteredText.last ?? " ").trimmingCharacters(in: .whitespaces)
        EnterLetter.text = enteredText
        
        // Enabling and Disabling Check Button based on whether text field is empty or not
        if(enteredText.isEmpty){
            CheckButton.isEnabled = false
        }else{
            CheckButton.isEnabled = true
        }
        
        
        
    }
    
    func updateUnderScores()
    {
        // For each letter in the word incrementing the underscore
        for letter in word{
            DisplayLabel.text!  += "_ "
        }
    }
    
    
    
}

