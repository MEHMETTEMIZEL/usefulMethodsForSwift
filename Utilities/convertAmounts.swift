
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
		
		        
        /// double değeri birimiyle birlikte standart font ayarlarında döndürür
        /// - Parameters:
        ///   - amount: string tipinde tutar
        ///   - fec: para birimi (default: nil)
        ///   - isBold: textin kalın fontta olup olmaması (default: true)
        ///   - fontSize: textin font büyüklüğü (default: standartFontSize)
        ///   - foreColor: textin font rengi  (default: nil)
        ///   - isSmallFec: tutarın en sağında para biriminin küçük yazılıp yazılmaması (default: true)
        /// - Returns: verilen parametrelerdeki attributeların uygulandığı NSAttributedString tipinde tutar
        public static func getAttributedAmountString(amount: String, fec: String? = nil, isBold: Bool? = true, fontSize: CGFloat = Constants.BaseConstants.standartFontSize, foreColor: UIColor? = nil, isSmallFec: Bool? = true) -> NSAttributedString {
            
            let amountAttribute = [NSAttributedString.Key.font: Utils.BaseUtils.getFont(isBold!,fontSize)]
            let fecAttribute = [NSAttributedString.Key.font: Utils.BaseUtils.getFont(isBold!, isSmallFec! ? (fontSize - 5) : fontSize)]
            
            let amountText = NSMutableAttributedString()
            amountText.append(NSMutableAttributedString(string: amount, attributes: amountAttribute ))
            if let fec = fec{
                let fecCode = NSMutableAttributedString(string: fec, attributes: fecAttribute)
                amountText.append(NSMutableAttributedString(string: " ", attributes: amountAttribute))
                amountText.append(fecCode)
            }
            
            if foreColor != nil {
                let colorAttributes: [NSAttributedString.Key: Any] = [NSAttributedString.Key.foregroundColor: foreColor!]
                amountText.addAttributes(colorAttributes, range: NSMakeRange(0, amountText.length))
            }
            
            return amountText
        }
        
        /// double değerleri currency formatında stringe cevirir (12345.5 -> 12.345,50)
        /// - Parameters:
        ///   - value: tutar
        ///   - fec: para birimi (default: nil)
        ///   - format: text format tipi (default: n2)
        ///   - isBold: textin kalın font olup olmaması (default: false)
        ///   - fontSize: textin font büyüklüğü (default: standartFontSize)
        ///   - foreColor: textin font rengi  (default: nil)
        ///   - isSmallFec: tutarın en sağında para biriminin küçük yazılıp yazılmaması (default: true)
        /// - Returns: verilen parametrelerdeki attributeların uygulandığı NSAttributedString tipinde tutar
        public static func stringfromAmount( _ value: Double?, fec: String? = nil, format: TextFormatType = .n2, isBold: Bool? = false, fontSize: CGFloat = Constants.BaseConstants.standartFontSize, foreColor: UIColor? = nil, isSmallFec: Bool? = true) -> NSAttributedString {
            if let val = value {

                let amount = Utils.BaseUtils.getFormatter(type: format).string(from: NSNumber(value: val))!
                
                if foreColor == nil {
                    return Utils.AmountUtils.getAttributedAmountString(amount: amount, fec: fec, isBold: isBold, fontSize: fontSize, isSmallFec: isSmallFec)
                }else{
                    return Utils.AmountUtils.getAttributedAmountString(amount: amount, fec: fec, isBold: isBold, fontSize: fontSize, foreColor: foreColor, isSmallFec: isSmallFec)
                }
                
            }
            else {
                return NSAttributedString(string: "")
            }
        } 
    }
}

