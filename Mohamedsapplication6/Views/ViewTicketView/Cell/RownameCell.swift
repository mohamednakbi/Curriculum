import SwiftUI

struct RownameCell: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 0) {
                Text(StringConstants.kLblName)
                    .font(FontScheme.kUrbanistRegular(size: getRelativeHeight(16.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.Gray400)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(42.0), height: getRelativeHeight(20.0),
                           alignment: .leading)
                Text(StringConstants.kLblDanielAustin)
                    .font(FontScheme.kUrbanistSemiBold(size: getRelativeHeight(18.0)))
                    .fontWeight(.semibold)
                    .foregroundColor(ColorConstants.WhiteA700)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(109.0), height: getRelativeHeight(22.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(5.0))
            }
            .frame(width: getRelativeWidth(109.0), height: getRelativeHeight(47.0),
                   alignment: .leading)
            Spacer()
            VStack(alignment: .leading, spacing: 0) {
                Text(StringConstants.kLblPhoneNumber)
                    .font(FontScheme.kUrbanistRegular(size: getRelativeHeight(16.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.Gray400)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(105.0), height: getRelativeHeight(20.0),
                           alignment: .leading)
                Text(StringConstants.kMsg1123456789000)
                    .font(FontScheme.kUrbanistSemiBold(size: getRelativeHeight(18.0)))
                    .fontWeight(.semibold)
                    .foregroundColor(ColorConstants.WhiteA700)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(151.0), height: getRelativeHeight(22.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(6.0))
            }
            .frame(width: getRelativeWidth(151.0), height: getRelativeHeight(48.0),
                   alignment: .leading)
        }
        .frame(width: getRelativeWidth(311.0), alignment: .leading)
        .hideNavigationBar()
    }
}

/* struct RownameCell_Previews: PreviewProvider {

 static var previews: some View {
 			RownameCell()
 }
 } */
