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


// Complex Functions

// Optional return value
func setupArenaMatch() -> Bool? {
	return nil
}

if let initSuccess = setupArenaMatch() {
	print("Level initialized: \(initSuccess)")
} else {
	print("Something went terribly wrong...")
}

// Multiple return values
func setupArenaMatch(levelName: String) -> (success: Bool, secretItem: String) {
	print("\(levelName) initialized...")
	return (true, "Minotaur's Head")
}

var levelDetails = setupArenaMatch(levelName: "Poison Flats")
levelDetails.secretItem
levelDetails.success

// Default values
func setupDefaultMatch(levelName: String = "Fire Marshes", opponents: Int = 3) {
	print("Arena match will take place in the \(levelName) between \(opponents) players!")
}

setupDefaultMatch()
setupDefaultMatch(levelName: "Poison Flats", opponents: 10)
