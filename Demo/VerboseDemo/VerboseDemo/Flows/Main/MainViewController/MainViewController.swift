//
//  MainViewController.swift
//  VerboseDemo
//
//  Created by Igor Matyushkin on 07.11.15.
//  Copyright © 2015 Igor Matyushkin. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    // MARK: Class variables & properties
    
    
    // MARK: Class methods
    
    
    // MARK: Initializers
    
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    
    // MARK: Outlets
    
    @IBOutlet private weak var textView: UITextView!
    
    
    // MARK: Variables & properties
    
    
    // MARK: Public methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Initialize text view
        
        let text = Verbose.generateTextOfLength(15000, replaceLastThreeSymbolsWithDots: true)
        let attributedText = NSAttributedString(string: text, attributes: attributesForText())
        textView.attributedText = attributedText
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    func attributesForText() -> [String : AnyObject] {
        return [
            NSFontAttributeName: UIFont.systemFontOfSize(20.0),
            NSForegroundColorAttributeName: UIColor.blackColor(),
            NSKernAttributeName: 0.5
        ]
    }
    
    
    // MARK: Private methods
    
    
    // MARK: Actions
    
    
    // MARK: Protocol methods
    
}
