// Test cases
var currentHealth = 100
var maxHealth = 100

// If statement(<, >, <=, >=, !=, ==)
if currentHealth >= maxHealth {
	print("HP is at max")
} else if currentHealth <= 50 {
	print("Grab some health soon!")
} else {
	print("HP is between 50 and 100")
}

if currentHealth > 90 || currentHealth <= maxHealth {
	print("You'redoing just fine...")
}