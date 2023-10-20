// Declare a protocol
protocol Collactable {
	var name: String { get }
	var price: Int { get set }
	
	init(withName: String, startingPrice: Int)
	func collect() -> Bool
}

protocol Usable {
	func use()
}

// Protocol adoption
class Item: Collactable, Usable {
	var name: String
	var price: Int
	
	required init(withName: String, startingPrice: Int) {
		self.name = withName
		self.price = startingPrice
	}
	
	func collect() -> Bool {
		print("Item collected!")
		return true
	}
	
	func use() {
		print("Item used!")
	}
}

let potion = Item(withName: "High Potion", startingPrice: 35)
potion.collect()
potion.use()


