
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
	
		/// Double olan değeri Float'a çevirir.
        /// - Parameter value: double tipinde tutar
        /// - Returns: floata çevrilmiş tutar
        public static func getFloatFromDouble( _ value: Double?) -> Float {
            
            guard let value = value else {
                return 0.00
            }

            return Float(value)
        }
        
        /// string değeri dönüştürebiliyorsa double halini cevirir, dönüşemiyecek bir değer ise 0 döndürür ( "1.234,20" -> 1234.2 )
        /// - Parameter value: string tipinde amount (ör: "1.234,20")
        /// - Returns: double tipinde tutar (ör: 1234.2)
        public static func amountfromString( _ value: String?) -> Double {

            if let value = value {
                var str = value.replacingOccurrences(of: Constants.BaseConstants.groupingSeparator, with: "")
                str = str.replacingOccurrences(of: Constants.BaseConstants.decimalSeparator, with: Constants.BaseConstants.groupingSeparator)
                if let dvalue = Double(str) {
                    return dvalue
                }
            }
            
            return 0
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
        
        /// Paramatre verilen String degerden para birimini kaldirarak döndürür.
        /// - Parameter string: tutar
        /// - Returns: içerisinden para birimi ayrılmış tutat
        public static func removeFECCode(from string: String) -> String {
            let arr: [Any] = string.components(separatedBy: " ")
            let mText: String = arr[0] as! String
            
            return mText.replacingOccurrences(of: Constants.BaseConstants.decimalSeparator, with: Constants.BaseConstants.groupingSeparator)
        }
        
        /// Parametre olarak verilen string tutarından para birimi gibi ekstra bilgileri kaldırır.
        /// - Parameter amountStringWithFec: para birmi ile tutar (ör: "123,45 ALT (gr)")
        /// - Returns: para birimi olmadan tutar (ör: 123.45)
        public static func getAmountFromStringWithFec(_ amountStringWithFec: String?) -> Double {
            
            return amountfromString(amountStringWithFec?.components(separatedBy: " ").first)
        }		
				
        /// Parametre olarak verilen string tipindeki tutarı, yine parametre olarak verilen attributelara göre formatlanmış olarak döndürür.
        /// - Parameters:
        ///   - amount: string tipinde tutar
        ///   - fecCode: para birimi
        ///   - amountFontSize: tutar font büyüklüğü (default: 17.0)
        ///   - decimalFontSize: ondalık kısım font büyüklüğü (default: 12.0)
        ///   - format: text format tipi (default: n2)
        ///   - textColor: text font rengi
        ///   - isBold: textin kalın font olup olmaması (default: true)
        ///   - plusMinusSymbol: +/- sembolü (default: "")
        /// - Returns: verilen tutarın parametrelerde belirtilen attributelar ile formatlanmış hali
        public static func convertAmountWithSmallDecimal(amount: String?, fecCode: String?, amountFontSize: CGFloat = 17.0, decimalFontSize: CGFloat = 12.0, format: TextFormatType = .n2, textColor: UIColor, isBold: Bool = true, plusMinusSymbol: String = "") -> NSAttributedString {
            
            guard let amount = amount?.components(separatedBy: " ").first else { return NSAttributedString() }
            
            return convertAmountWithSmallDecimal(
                amount: Utils.AmountUtils.amountfromString(amount),
                fecCode: fecCode ?? amount.components(separatedBy: " ")[safe: 1],
                amountFontSize: amountFontSize, decimalFontSize: decimalFontSize, format: format,
                textColor: textColor, isBold: isBold, plusMinusSymbol: plusMinusSymbol
            )
        }
    }
}

