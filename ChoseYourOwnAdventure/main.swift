//
//  main.swift
//  ChoseYourOwnAdventure
//
//  Created by Alisher Abdukarimov on 5/6/17.
//  Copyright © 2017 MrAliGorithm. All rights reserved.
//

import Foundation

let hasNonWhitespaceCharacters: (String) -> Bool = { input in
    
    let whitespaceCharacters = CharacterSet.whitespacesAndNewlines
    
    let filtered = input.unicodeScalars.filter { char in
        whitespaceCharacters.contains(char) == false
    }
    
    return filtered.isEmpty == false
}

print("Welcome to your day!")
let givenName = getStringFromUser(prompt: "I am you, your concious, remind me our name please! I gotta make sure what our name is?!",
                                  failureMessage: "Please enter our awesome name.",
                                  predicate: hasNonWhitespaceCharacters)

print("Well hello \(givenName), I am exactly what I have thought of myself, unique. Oh well, lets get started with the day.")
print("\n")
selecSceneMethod1()
