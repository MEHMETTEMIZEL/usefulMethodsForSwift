// Declare a protocol
protocol Collactable {
	var name: String { get }
	var price: Int { get set }
	
	init(withName: String, startingPrice: Int)
	func collect() -> Bool
}

extension Collactable {
	var priceIncrease: Int {
		return self.price * 10
	}
	
	init(name: String) {
		self.init(withName: name, startingPrice: 100)
	
	
	func collect() -> Bool {
		print("Default item couldn't be collected...")
		return false
	}
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
	
//	func collect() -> Bool {
//		print("Item collected!")
//		return true
//	}
	
	func use() {
		print("Item used!")
	}
}

let potion = Item(withName: "High Potion", startingPrice: 35)
potion.collect()
potion.use()


let antidote = Item(name: "Antidote")
antidote.price

extension String {
	func fancyDebug() {
		print("This string has \(self.count) characters")
	}
}

antidote.name.fancyDebug()