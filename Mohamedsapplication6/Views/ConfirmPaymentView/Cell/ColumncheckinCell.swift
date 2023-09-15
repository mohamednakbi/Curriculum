import SwiftUI

struct ColumncheckinCell: View {
    var body: some View {
        VStack {
            HStack {
                Text(StringConstants.kLblCheckIn)
                    .font(FontScheme.kUrbanistSemiBold(size: getRelativeHeight(16.0)))
                    .fontWeight(.semibold)
                    .foregroundColor(ColorConstants.Gray200)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(61.0), height: getRelativeHeight(20.0),
                           alignment: .leading)
                Spacer()
                Text(StringConstants.kMsgDecember1620)
                    .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(18.0)))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.WhiteA700)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(151.0), height: getRelativeHeight(22.0),
                           alignment: .leading)
            }
            .frame(width: getRelativeWidth(330.0), height: getRelativeHeight(22.0),
                   alignment: .leading)
            HStack {
                Text(StringConstants.kLblCheckOut)
                    .font(FontScheme.kUrbanistSemiBold(size: getRelativeHeight(16.0)))
                    .fontWeight(.semibold)
                    .foregroundColor(ColorConstants.Gray200)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(72.0), height: getRelativeHeight(20.0),
                           alignment: .leading)
                Spacer()
                Text(StringConstants.kMsgDecember2020)
                    .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(18.0)))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.WhiteA700)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(158.0), height: getRelativeHeight(22.0),
                           alignment: .leading)
            }
            .frame(width: getRelativeWidth(330.0), height: getRelativeHeight(22.0),
                   alignment: .leading)
            .padding(.top, getRelativeHeight(20.0))
            HStack {
                Text(StringConstants.kLblGuest)
                    .font(FontScheme.kUrbanistSemiBold(size: getRelativeHeight(16.0)))
                    .fontWeight(.semibold)
                    .foregroundColor(ColorConstants.Gray200)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(42.0), height: getRelativeHeight(20.0),
                           alignment: .leading)
                Spacer()
                Text(StringConstants.kLbl3)
                    .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(18.0)))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.WhiteA700)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(7.0), height: getRelativeHeight(22.0),
                           alignment: .leading)
            }
            .frame(width: getRelativeWidth(330.0), height: getRelativeHeight(22.0),
                   alignment: .leading)
            .padding(.top, getRelativeHeight(19.0))
        }
        .frame(width: getRelativeWidth(378.0), alignment: .leading)
        .background(RoundedCorners(topLeft: 16.0, topRight: 16.0, bottomLeft: 16.0,
                                   bottomRight: 16.0)
                .fill(ColorConstants.BlueGray900))
        .shadow(color: ColorConstants.Black9000c, radius: 60, x: 0, y: 4)
        .hideNavigationBar()
    }
}

/* struct ColumncheckinCell_Previews: PreviewProvider {

 static var previews: some View {
 			ColumncheckinCell()
 }
 } */
