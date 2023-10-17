//Test variables
let playerGreeting = "Hello fellow Hunter!"
let armorTypes = ["Heavy Plate","Hunters Gear","Mage Robes"]
let weapons = ["Longsword": 150, "Dagger": 25, "Mace": 75]

//Strings and arrays
for strCharacter in playerGreeting {
	print(strCharacter)
}

for armor in armorTypes {
	print(armor)
}

//Dictionary key-values pairs
for weaponValues in weapons.values {
	print(weaponValues)
}

for (weapon, damage) in weapons {
	print("\(weapon): \(damage)")
}

//Using ranges
for indexNumber in 1...10 {
	print(indexNumber)
}

for armor in armorTypes[0...] {
	print(armor)
}

for indexNumber in 1..<10 {
	print(indexNumber)
}

for armor in armorTypes[..<armorTypes.count] {
	print(armor)
}