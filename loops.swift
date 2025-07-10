var steps = 0

repeat {
    if steps == 5 {
        steps += 1
        continue
    }
    if steps == 8 {
        break
    }
    print("Step \(steps)")
    steps += 1
    
} while steps < 10
