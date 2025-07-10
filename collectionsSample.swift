// var names = ["Alice", "Bob", "Charlie", "John"]

// print(names.contains("Alice"))


// print(names.count)

// print(names[2])



// names.append("Eve")

// print(names)



// names.insert("Dave", at: 2)

// print(names)



// names.remove(at: 1)

// print(names)



// names.removeLast()

// print(names)



// names.removeAll()

// print(names)



// let arr1 = [1, 2, 3]
// let arr2 = [4, 5, 6]

// let containerArray = [arr1, arr2]
// print(containerArray[0])

// print(containerArray[0][0])




// var scores = ["Ankit": 500, "bruh": 400, "john": 800]

// scores["oli"] = 399

// scores.updateValue(495, forKey: "bruh")
// print(scores)

// scores.removeValue(forKey: "oli")
// print(scores)

// let names1 = Array(scores.keys)
// let points = Array(scores.values)
// print(names1)
// print(points)




var scores = ["Ankit": 500, "bruh": 400, "john": 800]
scores["oli"] = 399

if let oldValue = scores.updateValue(495, forKey: "bruh") {
    print("Old value for 'bruh': \(oldValue)")
} 
else {
    print("'bruh' did not exist in the dictionary.")
}

if let removedValue = scores.removeValue(forKey: "oli") {
    print("Removed value for 'oli': \(removedValue)")
} 
else {
    print("'oli' did not exist in the dictionary.")
}

print(scores)