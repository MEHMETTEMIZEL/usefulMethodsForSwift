// Declaring a new class.
class Adventurer {
	var name: String
	let maxHealth: Int
	
	var specialMove: String?
	
	init(name: String, maxHP: Int) {
		self.name = name
		self.maxHealth = maxHP
	}
	
	convenience init(name: String) {
		self.init(name: name, maxHP: 100)
	}
	
	func printStats() {
		print("Character: \(self.name), Max Health: \(self.maxHealth)")
	}
}

var player1 = Adventurer(name: "Mehmet", maxHP: 99)
var player2 = Adventurer(name: "Steven")
var defultPlayer = player1

defultPlayer.name = "Bob the Nob"
player1.printStats()
player2.printStats()

player1.name = "Ali"
print(defultPlayer.name)
player1.printStats()
player2.printStats()


// Subclass
class Ranger: Adventurer {
	var classAdvantage: String
	
	ovverride class var credo: String {
		return "To the King!"
	}
	
	init(name: String, advantage: String) {
		self.classAdvantage = advantage
		super.init(name: name, maxHP: 150)
	}
	
	override func printStats() {
		print("\(self.name): Ranger, Advantage: \(self.classAdvantage)")
	}
}

var aragorn = Ranger(name: "Aragorn", advantage: "Stealth")
aragorn.printStats()

