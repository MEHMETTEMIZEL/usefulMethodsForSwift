
import Foundation
import UIKit
import BOAIOSModels

extension Utils {
    
    public class AmountUtils {
        
        /// Double olan değeri Float'a çevirir.
        /// - Parameter value: double tipinde tutar
        /// - Returns: floata çevrilmiş tutar
        public static func getFloatFromDouble( _ value: Double?) -> Float {
            
            guard let value = value else {
                return 0.00
            }

            return Float(value)
        }
        
        /// Integer değeri double a dönüştürür.
        /// - Parameter value: çevirilmesi istenen tutar
        /// - Returns: double tipinde tutar
        public static func amountFromInteger(_ value: Int?) -> Double? {
        
            if let value = value {
                return Double(value)
            }
            
            return 0
        }

        /// Parametre olarak verilen Double? değeri Nilable olmayan bir Double'a dönüştürür.
        /// - Parameter value: tutar
        /// - Returns: tutar nil değilse double karşılığı, nil ise sıfır (0) döner.
        public static func doubleFromNilableDouble(_ value: Double?) -> Double {
            return Double(value ?? 0)
        }
        
    }
}

