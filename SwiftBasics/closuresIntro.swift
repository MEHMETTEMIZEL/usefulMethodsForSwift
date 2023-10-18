// Defining closures
var closure: () -> () = {}

// Initializing closures
/*var computeBonusDamage = { (base: Int) -> Int in
	return base * 5
}*/

var computeBonusDamage = { base in
	return base * 5
}

computeBonusDamage(20)


// Test variables
var highScores = [23, 5, 132, 0, 9899]
var partyMembers = ["Mehmet", "Berre", "Ayşe", "Ali"]

// Existing functions with closures
var ascendingSort = highScores.sorted { (firstValue, secondValue) -> Bool in
	return firstValue < secondValue
}

print(ascendingSort)

// Using custom closures with functions
func activeMembers(completion: ([String]) -> Void) {
	completion(partyMembers)
}

activeMembers { (members) in
	for name in members {
		print("\(name) is active!")
	}
}

func activeMembers(members: [String]) -> () -> Void {
	let completion: () -> Void = {
		for name in members {
			print("\(name) is present!")
		}
	}
	
	return completion
}

var closureReturn = activeMembers(members: partyMembers)
closureReturn()



// Type Alias
typealias AttackTuple = (name: String, damage: Int, rechargable: Bool)

var sunStrike: AttackTuple = ("Sun Strike", 45, false)

func levelUpAttack(baseAttack: AttackTuple) -> AttackTuple {
	let increasedAttack: AttackTuple = (baseAttack.name, baseAttack.damage + 10, true)
	return increasedAttack
}

var poweredAttack = levelUpAttack(baseAttack: sunStrike)

//TypeAlias as a function parameter
typealias ArrayClosure = ([String]) -> Void

func activeMembersCopy(completion: ArrayClosure) {
	completion(partyMembers)
}