import Foundation
import SwiftUI

class FontScheme: NSObject {
    static func kUrbanistRomanBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kUrbanistRomanBold, size: size)
    }

    static func kUrbanistRomanBlack(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kUrbanistRomanBlack, size: size)
    }

    static func kUrbanistSemiBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kUrbanistSemiBold, size: size)
    }

    static func kUrbanistRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kUrbanistRegular, size: size)
    }

    static func kUrbanistRomanMedium(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kUrbanistRomanMedium, size: size)
    }

    static func kSourceSansProSemiBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kSourceSansProSemiBold, size: size)
    }

    static func fontFromConstant(fontName: String, size: CGFloat) -> Font {
        var result = Font.system(size: size)

        switch fontName {
        case "kUrbanistRomanBold":
            result = self.kUrbanistRomanBold(size: size)
        case "kUrbanistRomanBlack":
            result = self.kUrbanistRomanBlack(size: size)
        case "kUrbanistSemiBold":
            result = self.kUrbanistSemiBold(size: size)
        case "kUrbanistRegular":
            result = self.kUrbanistRegular(size: size)
        case "kUrbanistRomanMedium":
            result = self.kUrbanistRomanMedium(size: size)
        case "kSourceSansProSemiBold":
            result = self.kSourceSansProSemiBold(size: size)
        default:
            result = self.kUrbanistRomanBold(size: size)
        }
        return result
    }

    enum FontConstant {
        /**
         * Please Add this fonts Manually
         */
        static let kUrbanistRomanBold: String = "UrbanistRoman-Bold"
        /**
         * Please Add this fonts Manually
         */
        static let kUrbanistRomanBlack: String = "UrbanistRoman-Black"
        /**
         * Please Add this fonts Manually
         */
        static let kUrbanistSemiBold: String = "Urbanist-SemiBold"
        /**
         * Please Add this fonts Manually
         */
        static let kUrbanistRegular: String = "Urbanist-Regular"
        /**
         * Please Add this fonts Manually
         */
        static let kUrbanistRomanMedium: String = "UrbanistRoman-Medium"
        /**
         * Please Add this fonts Manually
         */
        static let kSourceSansProSemiBold: String = "SourceSansPro-SemiBold"
    }
}
