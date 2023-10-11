import Foundation
import UIKit
    public class BaseUtils {

		/// standart font tipini size isteğine göre döndürür
        /// - Parameters:
        ///   - isBold: font kalın olup olmaması (default: false)
        ///   - fontSize: font büyüklüğü (default: standartFontSize )
        /// - Returns: parametre olarak verilen değerlere göre font döndürür.
        public static func getFont( _ isBold: Bool = false, _ fontSize: CGFloat = Constants.BaseConstants.standartFontSize) -> UIFont {
            
            if #available(iOS 12.0, *) {
                return UIFont.monospacedDigitSystemFont(ofSize: fontSize, weight: isBold ? .bold : .regular)
            } else {
                if let font = UIFont(name: isBold == true ? Constants.BaseConstants.fontFamilyBold : Constants.BaseConstants.fontFamily, size: CGFloat(fontSize)) {
                    return font
                }
                else {
                    if isBold {
                        return UIFont.systemFont(ofSize: fontSize, weight: UIFont.Weight.bold)
                    }
                    else {
                        return UIFont.systemFont(ofSize: fontSize)
                    }
                }
            }
        }
		
		/// Parametre olarak verilen String degeri, disaridan alinan renk, font size vs. degerlere göre özellestirilmis string olarak döner.
        /// - Parameters:
        ///   - text: formatlanacak olan text
        ///   - isBold: font kalın olup olmaması (default: true)
        ///   - fontSize: font büyüklüğü (default: standartFontSize )
        ///   - foreColor: text rengi (default: nil)
        /// - Returns: parametre olarak verilmiş attributelar ile formatlanmış NSAttributedString tipinde text
        public static func getAttributedString(text: String, isBold: Bool? = true, fontSize: CGFloat = Constants.BaseConstants.standartFontSize, foreColor: UIColor? = nil) ->NSAttributedString {
            
            let attributes = [NSAttributedString.Key.font:getFont(isBold!,fontSize)]
            
            let attributedText = NSMutableAttributedString(string: text, attributes: attributes)
            
            if foreColor != nil {
                let colorAttributes : [NSAttributedString.Key:Any] = [NSAttributedString.Key.foregroundColor: foreColor!]
                attributedText.addAttributes(colorAttributes, range: NSMakeRange(0, attributedText.length))
            }
            
            return attributedText
        }
		
		/// Parametre olarak verilen String degeri, disaridan alinan renk, font size vs. degerlere göre özellestirilmis string olarak döner.
        /// - Parameters:
        ///   - text: formatlanacak olan text
        ///   - weight: regular, medium, bold vs.
        ///   - fontSize: font büyüklüğü (default: standartFontSize )
        ///   - foreColor: text rengi (default: nil)
        /// - Returns: parametre olarak verilmiş attributelar ile formatlanmış NSAttributedString tipinde text
        public static func getAttributedStringWithWeight(text: String, weight: UIFont.Weight = .regular, fontSize: CGFloat = Constants.BaseConstants.standartFontSize, foreColor: UIColor? = nil) ->NSAttributedString {
            
            let attributes = [NSAttributedString.Key.font: UIFont.monospacedDigitSystemFont(ofSize: fontSize, weight: weight)]
            
            let attributedText = NSMutableAttributedString(string: text, attributes: attributes)
            
            if foreColor != nil {
                let colorAttributes : [NSAttributedString.Key:Any] = [NSAttributedString.Key.foregroundColor: foreColor!]
                attributedText.addAttributes(colorAttributes, range: NSMakeRange(0, attributedText.length))
            }
            
            return attributedText
        }
		
        /// Paramatrede gelen String degeri; hizalama, kalin olabilme, renkli olabilme ve yazi büyüklügü niteliklerini katarak özellestirilmis string olarak döner.
        /// - Parameters:
        ///   - text: formatlanacak text
        ///   - textAllignment: text hizalama (default: sol taraf)
        ///   - isBold: textin kalın font olup olmaması (default: false)
        ///   - fontSize: textin font büyüklüğü (default: 13.0)
        ///   - foreColor: textin rengi (default: nil)
        /// - Returns: parametredeki attributeların uygulanmış olduğu string
        public static func getAlignedAttributedString(text: String, textAllignment: NSTextAlignment = NSTextAlignment.left, isBold: Bool = false, fontSize: CGFloat = 13.0, foreColor: UIColor? = nil) -> NSAttributedString {
            
            let paragraphAttribute = NSMutableParagraphStyle()
            paragraphAttribute.alignment = textAllignment
            
            let attributedText = NSMutableAttributedString(string: text, attributes: [NSAttributedString.Key.paragraphStyle: paragraphAttribute, NSAttributedString.Key.font: getFont(isBold, fontSize)])
            
            if foreColor != nil {
                let colorAttributes : [NSAttributedString.Key:Any] = [NSAttributedString.Key.foregroundColor: foreColor!]
                attributedText.addAttributes(colorAttributes, range: NSMakeRange(0, attributedText.length))
            }
            
            return attributedText
        }
	}