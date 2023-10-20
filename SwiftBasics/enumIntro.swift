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