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
    
    
    // MARK: Class methods
    
    /**
    Generates text with required length.
    
    - Parameters:
        - type: Type of text.
    
        - length: Required length of generated text.
    
        - replaceLastThreeSymbolsWithDots: Defines whether last three symbols in generated text should be replaced with dots.
    
    - returns: Text with required length.
    */
    public class func textOfType(type: VerboseTextType, withLength length: Int, replaceLastThreeSymbolsWithDots: Bool) -> String {
        let unitText = type.text
        let resultText = generateTextWithUnit(unitText, length: length, replaceLastThreeSymbolsWithDots: replaceLastThreeSymbolsWithDots)
        return resultText
    }
    
    /**
    Generates text with required length.
     
    - Parameters:
        - textUnit: Unit of text that will be repeated in result string as many times as needed to fit required text length.
     
        - length: Required length of generated text.
     
        - replaceLastThreeSymbolsWithDots: Defines whether last three symbols in generated text should be replaced with dots.
     
    - returns: Text with required length.
    */
    private class func generateTextWithUnit(textUnit: String, length: Int, replaceLastThreeSymbolsWithDots: Bool) -> String {
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
    
    
    // MARK: Initializers
    
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    
    // MARK: Variables & properties
    
    
    // MARK: Public methods
    
    
    // MARK: Private methods
    
    
    // MARK: Protocol methods
    
}
