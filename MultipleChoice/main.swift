import Foundation

// INPUT
// Loop forever until we get good input
var validInput = "" // outside the loop -- we can use it later on AFTER the loop
prompt: while 1 == 1 {
    
    // Prompt the user
    print("Input word is? ")
    
    // Wait for input
    // Test #1: Make sure it is not nil
    guard let givenInput = readLine() else {
        
        // If we got here, input is nil
        // Prompt again
        continue    // continue with the next iteration of while loop
        
    }
    
    // Test #2: Is the input the correct length
    if givenInput.count < 1 || givenInput.count > 30 {
        
        // If we got here, input is too short or it's too long
        continue // prompt again
        
    }
    
    // Test #3: Check to ensure there is only UPPERCASE letters and no spaces
    checking: for individualCharacter in givenInput {
        
        // DEBUG: Print the character we are looking at
        print(individualCharacter)
        
        // Check the character
        switch individualCharacter {
        case "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z":
            continue checking   // OK, go to iteration of loop that lets us
        // inspect next character of the input string
        default:
            continue prompt     // Stop looking, we've found bad input, so go
            // to next iteration of loop that lets prompt again
            // for user input
        }
        
    }
    
    // If we got to this point, we know the input is good
    validInput = givenInput
    break   // quit the while loop and begin PROCESS section
    
}

// PROCESS
// Now we have valid input that can be processed according to
// the remaining requirements of the scenario
print(validInput)

var countOfGoodLetters = 0
for letter in validInput { //Checks every letter
    //Check each letter to make sure it's I, O, S, H, Z, X and N
    print(letter)
    if letter == "I" || letter == "O" || letter == "S" || letter == "H" || letter == "Z" || letter == "X" || letter == "N" {
        
        
        //if input is Good - Keep checking, continue loop
        countOfGoodLetters += 1
        continue
        
        //If SAAB, it would hit S and continue to A, checks A and it would end up in output
        //If SOON, it would loop 4 times and it would end up in output
        //if APPLE, it would hit A, and it would break to output
        
    }
    
}


// Output
// If we got here, guranteed this is a word with only exceptable letters

// Output
if countOfGoodLetters == validInput.count {
    print("Yes")
    
    
} else {
    print("No")
}
