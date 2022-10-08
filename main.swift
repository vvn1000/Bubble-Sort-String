import Foundation

/*
 
//Opening message
func clear () {
    for _ in 1 ... 100 {
        print("")
    }
}
clear()
print("Hello!")
print("This program sorts the words you enter alphabetically")
print("")


 */

var unsortedArray: [String] = []

var i: Int

func swap (words:inout [String], firstIndex: Int, secondIndex: Int) {
    let temp = words[firstIndex]
    words[firstIndex] = words[secondIndex]
    words[secondIndex] = temp
}

func wordOneGreater(word1: String, word2: String) -> Bool {
    let shorterWordLength = min(word1.count, word2.count)
    for k in 0..<shorterWordLength {
        let char2 = word2[word2.index(word2.startIndex, offsetBy: k)]
        let char1 = word1[word1.index(word1.startIndex, offsetBy: k)]
        if char2 > char1{
            return false
        } else if char2 < char1 {
            return true
        } else if k == (shorterWordLength - 1) {
            if word1.count > word2.count {
                return true
            }
        }   
    }
    return false
}

func bubbleSort() {
    if unsortedArray.count > 1 {
        for i in 0 ..< unsortedArray.count{
            for j in 1 ..< unsortedArray.count - i{
                if wordOneGreater(word1: unsortedArray[j - 1], word2: unsortedArray[j]) {
                    swap(words:&unsortedArray, firstIndex: j - 1, secondIndex: j)
                }
            }
        }
    }
}

/*
 
func sort () {
    if unsortedArray.count > 1 {
        for i in 0 ..< unsortedArray.count{
            for j in 1 ..< unsortedArray.count - i{
                let word2 : String = unsortedArray[j]
                let word1 : String = unsortedArray[j-1]
                let shorterWordLength = min(word1.count, word2.count)
                for k in 0..<shorterWordLength {
                    let char2 = word2[word2.index(word2.startIndex, offsetBy: k)]
                    let char1 = word1[word1.index(word1.startIndex, offsetBy: k)]
                    if char2 > char1 {
                        break
                    } else if char2 < char1 {
                        swap(words:&unsortedArray, firstIndex: j, secondIndex: (j-1))
                        break
                    } else if word1.count > word2.count {
                        swap(words:&unsortedArray, firstIndex: j, secondIndex: (j-1))                        
                    }
                }
            }
        }
    }
}



 */
//print("Please enter at least two words below, type 'leave' when you are ready to sort.")

while let input = readLine() {
    unsortedArray.append(input.lowercased())
}

bubbleSort()



i = 0



while i < unsortedArray.count {
    
    print("\(i+1). \(unsortedArray[i])")
    
    i += 1
    
}
