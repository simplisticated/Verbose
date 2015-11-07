//
//  VerboseTextType.swift
//  Verbose
//
//  Created by Igor Matyushkin on 07.11.15.
//  Copyright © 2015 Igor Matyushkin. All rights reserved.
//

import Foundation

public enum VerboseTextType {
    case Alphabet
    case LoremIpsum
    
    var text: String {
        get {
            switch self {
            case .Alphabet:
                return String.Verbose_Alphabet
            case .LoremIpsum:
                return String.Verbose_LoremIpsum
            }
        }
    }
}