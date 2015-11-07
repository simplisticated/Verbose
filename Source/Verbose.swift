//
//  Verbose.swift
//  Verbose
//
//  Created by Igor Matyushkin on 07.11.15.
//  Copyright © 2015 Igor Matyushkin. All rights reserved.
//

import UIKit

public class Verbose: NSObject {
    
    // MARK: Class variables & properties
    
    private class var textUnit: String {
        get {
            return "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
        }
    }
    
    
    // MARK: Class methods
    
    /**
    Generates text with required length.
    
    - Parameters:
        - length: Required length of generated text.
    
        - replaceLastThreeSymbolsWithDots: Defines whether last three symbols in generated text should be replaced with dots.
    
    - returns: Text with required length.
    */
    public class func generateTextOfLength(length: Int, replaceLastThreeSymbolsWithDots: Bool) -> String {
        // Create result text variable
        
        var resultText = ""
        
        
        // Fill result text with text unit until its length become bigger than required
        
        while resultText.lengthOfBytesUsingEncoding(NSUTF8StringEncoding) < length {
            if resultText.lengthOfBytesUsingEncoding(NSUTF8StringEncoding) > 0 {
                resultText += " "
            }
            
            resultText += textUnit
        }
        
        
        // Remove text which goes beyond of required length
        
        let lengthOfResultText = resultText.lengthOfBytesUsingEncoding(NSUTF8StringEncoding)
        let resultTextIsBiggerThanRequiredLength = lengthOfResultText > length
        
        if resultTextIsBiggerThanRequiredLength {
            resultText = (resultText as NSString).substringToIndex(length)
        }
        
        
        // Replace last three symbols with dots if needed
        
        if replaceLastThreeSymbolsWithDots {
            // Obtain string with maximum possible number of dots between zero and three depending on length of result string
            
            var dots = ""
            
            for var i = 0; i < length; i++ {
                if i == 3 {
                    break
                }
                
                dots += "."
            }
            
            
            // Replace end of result text with dots
            
            let indexWhereDotsBegin = length - dots.lengthOfBytesUsingEncoding(NSUTF8StringEncoding)
            let resultTextBeforeDots = (resultText as NSString).substringToIndex(indexWhereDotsBegin)
            resultText = resultTextBeforeDots + dots
        }
        
        
        // Return result
        
        return resultText
    }
    
    /**
    Generates Lorem Ipsum text based on specified parameters.
     
    - Parameters:
        - replaceLastThreeSymbolsWithDots: Defines whether last three symbols in generated text should be replaced with dots.
     
    - returns: Lorem Ipsum text with specified parameters.
    */
    public class func generateText(replaceLastThreeSymbolsWithDots replaceLastThreeSymbolsWithDots: Bool) -> String {
        let lengthOfText = textUnit.lengthOfBytesUsingEncoding(NSUTF8StringEncoding)
        let resultText = generateTextOfLength(lengthOfText, replaceLastThreeSymbolsWithDots: replaceLastThreeSymbolsWithDots)
        return resultText
    }
    
    
    // MARK: Initializers
    
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    
    // MARK: Variables & properties
    
    
    // MARK: Public methods
    
    
    // MARK: Private methods
    
    
    // MARK: Protocol methods
    
}
