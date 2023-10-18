// Basic function
func findNearestAlly() {
	print("Searching...")
}

func findNearestEnemy(level: Int) -> String {
	print("Searching...")
	return "Argus"
}

var enemy = findNearestEnemy(level: 5)

// Overloading Functions

// Base function
func attackEnemy() {
	print("Executing default attack...")
}

// Overloaded functions
func attackEnemy(damage: Int) {
	print("Attacking for \(damage)")
}

func attackEnemy(damage: Double, weapon: String) -> Bool {
	let attackSuccess = true
	print("Attacking enemy for \(damage) with \(weapon)")
	
	return attackSuccess
}

attackEnemy()
attackEnemy(damage: 29)
var enemyDefeated = attackEnemy(damage: 59.546, weapon: "Deadly Glaive")
