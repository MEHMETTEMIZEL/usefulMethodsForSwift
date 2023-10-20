// Declaring an enum
enum GameState {
	case Completed
	case Initializing
	case LoadingData
}
// enum GemState { case Completed, Initializing, LoadingData }

// Storing and switching on an enum value
var currentState = GemState.Completed
print("Current state is \(currentState)")

switch {
case .Completed:
	print("Completed processing all tasks...")
case .Initializing:
	print("Still initializing data...")
case .LoadingData:
	print("Player data correctly unpacked...")
@unknown default:
	print("Unknown game state detected...")
}

// Raw values
enum NonPlayableCharacters: String {
	case Villager = "Not much useful info there"
	case Blacksmith = "One per village"
	case Merchant = "No limit per village"
}

var blackSmith = NonPlayableCharacters.Blacksmith
print(blackSmith.rawValue)


// Associated values
enum PlayerState {
	case Alive
	case KO(level: Int)
	case Unknown(debugError: String)
	
	func eveluateCase() {
		switch self {
		case .Alive:
			print("Still kicking!")
		case .KO(let restartLevel):
			print("Sorry, back to level \(restartLevel) for you...")
		case .Unknown(let message):
			print(message)
		default:
			print("Unknown state encountered...")
		}
	}
}

PlayerState.KO(level: 1).eveluateCase()
