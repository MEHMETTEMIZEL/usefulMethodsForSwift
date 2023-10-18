// Declaring a new Struct
struct Level {
	var levelId: Int
	var levelObjectives: [String]
	
	var levelDescription: String {
		return "Level ID: \(self.levelId)"
	}
	
	init(id: Int, objectives: [String]) {
		self.levelId = id
		self.levelObjectives = objectives
	}
	
	func queryObjectives() {
		for objective in levelObjectives {
			print("\(objective)")
		}
	}
	
	mutating func completeObjective(index: Int) {
		levelObjectives.remove(at: index)
	}
}

var objectives = ["Find the lost cat", "Collect all gemstones", "Defeat the Big Boss"]
var level1 = Level(id: 1, objectives: objectives)


//Value types again
var defaultLevel = level1

level1.completeObjective(index: 0)
level1.queryObjectives()

defaultLevel.queryObjectives()