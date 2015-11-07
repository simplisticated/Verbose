<p align="center" >
  <img src="https://github.com/igormatyushkin014/Verbose/blob/master/Logo/logo-1024-300.png" alt="Verbose" title="Verbose">
</p>

# Verbose
Text generator written in Swift.

##How To Get Started

- Copy content of `Source` folder to your project.

or

- Use `Verbose` cocoapod

## Requirements

* iOS 8 and later
* Xcode 7 and later

## Usage

```swift
/*
 * Example text will contain well-known Lorem Ipsum text:
 *
 * "Lorem ipsum dolor sit amet, consectetur adipisicing elit,
 * sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
 * Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
 * nisi ut aliquip ex ea commodo consequat.
 * Duis aute irure dolor in reprehenderit in voluptate velit esse cillum
 * dolore eu fugiat nulla pariatur.
 * Excepteur sint occaecat cupidatat non proident,
 * sunt in culpa qui officia deserunt mollit anim id est laborum."
 *
 * Text will be repeated as many times as needed to fit required length of 1500 symbols.
 *
 * Last three symbols will be replaced with dots.
 */
        
let loremIpsum = Verbose.textOfType(.LoremIpsum, withLength: 1500, replaceLastThreeSymbolsWithDots: true)
        
        
/*
 * Another example text will contain English alphabet,
 * repeated several times until length of text is equal to 2000.
 */
        
let alphabet = Verbose.textOfType(.Alphabet, withLength: 1500, replaceLastThreeSymbolsWithDots: true)

```

## License

`Laconic` is available under the MIT license. See the `LICENSE` file for more info.
