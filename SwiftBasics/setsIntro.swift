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