import SwiftUI

struct RowvolumeCell: View {
    var body: some View {
        HStack {
            ZStack {
                Image("img_user")
                    .resizable()
                    .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(26.0),
                           alignment: .leading)
                    .scaledToFit()
                    .padding(.top, getRelativeHeight(26.67))
                    .padding(.bottom, getRelativeHeight(27.33))
                    .padding(.horizontal, getRelativeWidth(26.67))
            }
            .hideNavigationBar()
            .frame(width: getRelativeWidth(78.0), height: getRelativeWidth(80.0),
                   alignment: .leading)
            .background(RoundedCorners(topLeft: 40.0, topRight: 40.0, bottomLeft: 40.0,
                                       bottomRight: 40.0)
                    .fill(ColorConstants.Gray800))
            VStack(alignment: .leading, spacing: 0) {
                Text(StringConstants.kLblViaSms)
                    .font(FontScheme.kUrbanistRomanMedium(size: getRelativeHeight(14.0)))
                    .fontWeight(.medium)
                    .foregroundColor(ColorConstants.Gray300)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(53.0), height: getRelativeHeight(17.0),
                           alignment: .leading)
                Text(StringConstants.kLbl111199)
                    .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(16.0)))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.WhiteA700)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(91.0), height: getRelativeHeight(20.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(10.0))
            }
            .frame(width: getRelativeWidth(91.0), height: getRelativeHeight(47.0),
                   alignment: .leading)
            .padding(.leading, getRelativeWidth(20.0))
        }
        .frame(width: getRelativeWidth(378.0), alignment: .leading)
        .overlay(RoundedCorners(topLeft: 20.0, topRight: 20.0, bottomLeft: 20.0, bottomRight: 20.0)
            .stroke(ColorConstants.Cyan600,
                    lineWidth: 3))
        .background(RoundedCorners(topLeft: 20.0, topRight: 20.0, bottomLeft: 20.0,
                                   bottomRight: 20.0)
                .fill(ColorConstants.BlueGray900))
        .hideNavigationBar()
    }
}

/* struct RowvolumeCell_Previews: PreviewProvider {

 static var previews: some View {
 			RowvolumeCell()
 }
 } */
