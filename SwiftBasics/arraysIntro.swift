// Creating arrays
var levelDifficulty: [String] = ["Easy", "Moderate", "Veteran", "Nightmare"]
var extraSyntax1: Array<String> = Array<String>()

//Count and isEmpty
levelDifficulty.count
levelDifficulty.isEmpty

//var mostDifficult = levelDifficulty[3]
levelDifficulty[3] = "Utter Ridiculusness"


// Changing & appending items
var characterClasses = ["Ranger", "Paladin", "Druid"]
characterClasses.append("Golang")
characterClasses += ["Healer", "Berserker"]

// Inserting and removing items
characterClasses.insert("Beast Master", at: 2)
characterClasses.remove(at: 1)

//Ordering and query,n values
characterClasses.reverse()
var reversedClasses = characterClasses.reversed()

characterClasses.sort()
var sortedClasses = characterClasses.sorted()

print(characterClasses)

// 2D arrays and subscripts
var skillTree: [[String]] = [
	["Attack+", "Barrage", "Heavy Hitter"],
	["Guard+", "Evasion", "Run"]
]

var attackTreeSkill = skillTree[0][2]
