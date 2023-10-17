//Test variables
let shopItems = ["Magic wand": 10, "Iron Helm": 5, "Excalibur": 1000]
let currentGold = 16

// Guard statement with for-in loop
for (item, price) in shopItems {
	guard currentGold >= price else {
		print("You can't afford the \(item)")
		continue
	}
	
	print("Go ahead, the \(item) is yours for \(price) gold!")
}

// Guard check for specific item