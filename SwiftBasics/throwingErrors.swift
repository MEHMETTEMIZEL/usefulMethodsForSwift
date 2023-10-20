// Error enum
enum DataError {
	case EmptyPath
	case InvalidPath
}

let playerDataPath = "/example/data.txt"

// Throwing functions
func loadData(path: String) throws {
	guard path.contains("/") else {
		throw DataError.InvalidPath
	}
	
	guard  !path.isEmpty else {
		throw DataError.EmptyPath
	}
	
}

//Do-Catch statements
do {
	try loadData(path: playerDataPath)
	print("Data fetch successful!")
} catch is DataError {
	print("Invalid or empty path detected...")
} catch {
	print("Unknown error detected...")
}


if let dataLoaded = try? loadData(path: playerDataPath) {
	print("Data fetch went just fine...")
}

// Propagating errors
func propagateDataError() throws {
	try loadData(path: playerDataPath)
}

do {
	try propagateDataError()
	print("Propagated data fetch successful!")
} catch DataError.EmptyPath {
	print("Empty path detected...")
} catch DataError.InvalidPath {
	print("Invalid path detected...")
} catch {
	print("Unknown error detected...")
}
