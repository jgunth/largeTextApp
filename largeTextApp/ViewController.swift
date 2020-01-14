//
//  ViewController.swift
//  largeTextApp
//
//  Created by John Gunther on 1/2/20.
//  Copyright © 2020 John Gunther. All rights reserved.
//

import UIKit

extension UITextView{
    
    //    This entire function adds a done button to the top of the apple keyboard.
    func addDoneButtonOnKeyboard()
    {
        let doneToolbar: UIToolbar = UIToolbar(frame: CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 50))
        doneToolbar.barStyle = .default
        
        let flexSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let done: UIBarButtonItem = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(self.doneButtonAction))
        
        let items = [flexSpace, done]
        doneToolbar.items = items
        doneToolbar.sizeToFit()
        
        self.inputAccessoryView = doneToolbar
    }
    
    @objc func doneButtonAction()
    {
        self.resignFirstResponder()
    }
}


class ViewController: UIViewController, UITextViewDelegate {
    
    
    @IBOutlet weak var userTextInput: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //this line of code specifies that the text in the Text Input bod will be what ever size I want it to be
        userTextInput.font = UIFont(name: "Times New Roman", size: 70)
        //the below code simply executes that when someone is typing in the text input box that there should be a "done" button at on the keyboard to drop it.
        userTextInput.addDoneButtonOnKeyboard()
        
        
    }
//    code below is simply a button that clears all text in the userTextInput box
    @IBAction func clearButtonPressed(_ sender: UIButton) {
        userTextInput.text = ""
        
    }
    
    
}


