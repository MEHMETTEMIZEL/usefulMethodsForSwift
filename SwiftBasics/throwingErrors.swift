// Error enum
enum DataError {
	case EmptyPath
	case InvalidPath
}

// Throwing functions
func loadData(path: String) throws {
	guard path.contains("/") else {
		throw DataError.InvalidPath
	}
	
	guard  !path.isEmpty else {
		throw DataError.EmptyPath
	}
	
}
