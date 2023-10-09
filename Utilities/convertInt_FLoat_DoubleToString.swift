import Foundation
import UIKit
public class BaseUtils {    
	
	/// string değerler null exception hataları engellemek için kullanılır (null -> "")
	/// - Parameter value: kontrol edilecek Int değeri
	/// - Returns: parametre nil ise boş string(""), değilse stringe çevirip döndürür.
	public static func getIntToStringValue( _ value: Int?) -> String {
		if value == nil {
			return ""
		}
		return String(value!)
	}
	
	/// string değerler null exception hataları engellemek için kullanılır (null -> "")
	/// - Parameter value: kontrol edilecek Int16 değeri
	/// - Returns: parametre nil ise boş string(""), değilse stringe çevirip döndürür.
	public static func getInt16ToStringValue( _ value: Int16?) -> String {
		if value == nil {
			return ""
		}
		return String(value!)
	}
	/// string değerler null exception hataları engellemek için kullanılır (null -> "")
	/// - Parameter value: kontrol edilecek Int32 değeri
	/// - Returns: parametre nil ise boş string(""), değilse stringe çevirip döndürür.
	public static func getInt32ToStringValue( _ value: Int32?) -> String {
		if value == nil {
			return ""
		}
		return String(value!)
	}

	/// string değerler null exception hataları engellemek için kullanılır (null -> "")
	/// - Parameter value: kontrol edilecek Float değeri
	/// - Returns: parametre nil ise boş string(""), değilse stringe çevirip döndürür.
	public static func getFloatToStringValue( _ value: Float?) -> String {
		if value == nil {
			return ""
		}
		return String(value!)
	}
	
	/// string değerler null exception hataları engellemek için kullanılır (null -> "")
	/// - Parameter value: kontrol edilecek Double değeri
	/// - Returns: parametre nil ise boş string(""), değilse stringe çevirip döndürür.
	public static func getDoubleToStringValue( _ value: Double?) -> String {
		if let doubleValue = value {
			return String(doubleValue)
		} else {
			return ""
		}
	}
}