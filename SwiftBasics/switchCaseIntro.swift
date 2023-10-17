// Test variables
let initial = "H"
let hp = 26
let mp = 24

// Simple switch
switch initial {
	case "H":
		print("I'm guessing Harold?")
	case "A":
		print("Maybe Alita?")
	default:
		print("I've got nothing...")
}

// Complex variations
switch (mp, hp) {
case (15, 10):
	print("Great job")
case (1...15, 20..<25):
	print("Ranges are the best!")
case (let localMP, let localHP) where l
ocalMP + localHP > 20:
	print(localMP, localHP)
default:
	print("I've got nothing...")
}