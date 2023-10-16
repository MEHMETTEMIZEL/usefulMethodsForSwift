// Generating sets
var activeQuests: Set = ["Fetch Gemstones", "Big Boss", "The Undertaker", "Granny Needs Firewood"]

// Inserting and removing elements
activeQuests.insert("Only the Strong")
activeQuests.remove("The Undertaker")

print(activeQuests)

//More common methods
activeQuests.contains("All-4-One")
activeQuests.sorted()


// NOTE: Sets can only store values that are hashable. -> Meaning They're able to provide a hash value of themselves.



// Test variables
var activeQuests: Set = ["Fetch Gemstones", "Big Boss", "The Undertaker", "Granny Needs Firewood"]

var completeQuests: Set = ["Big Boss", "All-4-One", "The Hereafter"]

// Set operations
var commonQuests = activeQuests.intersection(completeQuests)
var differentQuests = activeQuests.symmetricDifference(completeQuests)
var allQuests = activeQuests.union(completeQuests)
var clippedQuests = activeQuests.subtracting(completeQuests)