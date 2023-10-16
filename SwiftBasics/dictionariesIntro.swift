// Generating dictionaries
var blacksmithShop: [String: Int] = ["Bottle": 10, "Shield": 15, "Ocarina": 1000]

// Accessing and modifying values
var shieldPrice = blacksmithShop["Shield"]
blacksmithShop["Bottle"] = 11

blacksmithShop["Towel"] = 1
print(blacksmithShop)

// All keys and values
let allKeys = [String](blacksmithShop.keys)

let allValues = [Int](blacksmithShop.values)