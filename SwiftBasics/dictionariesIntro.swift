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



//-----------------------
// Caching and overwriting items
var playerStats: [String: Int] = ["HP": 100, "Attack": 35, "Gold": 29]
var oldValue = playerStats.updateValue(30, forKey: "Attack")

// Caching and removing items
//playerStats["Gold"] = nil
var removedValue = playerStats.removeValue(forKey: "Gold")

print(playerStats)

//Nested dictionaries
var questBoard = [
	"Fetch Gemstones": [
		"Objective": "Retrieve 5 gemstones",
		"Secret": "Complete in under 5 minutes"
	],
	"Defeat Big Boss": [
		"Objective": "Beat the boss",
		"Secret": "Win with 50% health"
	]
]

var gemstoneObjective = questBoard["Fetch Gemstones"]?["Objective"]


// Optional binding
if let item = itemGathered {
	print("You found an \(item)")
} else {
	print("Sorry, no item found")
}

if let shopOpen ) isShopOpen, let searchedItem = blacksmithShop["Shield"] {
	print("We're open \(shopOpen) and we have a \(searchedItem) in stock!")
} else {
	print("Sorry, either we're not open or don't have your item...")
}

if let fetchGems = questDirectory["Fetch Gemstones"]?["Objective"] {
	print("Active quest object: \(fetchGems)")
} else {
	print("That quest is no longer available")
}