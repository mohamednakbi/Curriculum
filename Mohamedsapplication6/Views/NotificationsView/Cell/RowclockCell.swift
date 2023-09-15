import SwiftUI

struct RowclockCell: View {
    var body: some View {
        HStack {
            Image("img_group_cyan_600_180x185")
                .resizable()
                .frame(width: getRelativeWidth(81.0), height: getRelativeHeight(80.0),
                       alignment: .leading)
                .scaledToFit()
            VStack(alignment: .leading, spacing: 0) {
                Text(StringConstants.kMsgPaymentSuccess2)
                    .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(18.0)))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.WhiteA700)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(166.0), height: getRelativeHeight(22.0),
                           alignment: .leading)
                Text(StringConstants.kMsgLalunaHotelBo)
                    .font(FontScheme.kUrbanistRomanMedium(size: getRelativeHeight(14.0)))
                    .fontWeight(.medium)
                    .foregroundColor(ColorConstants.Gray400)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(235.0), height: getRelativeHeight(17.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(7.0))
            }
            .frame(width: getRelativeWidth(235.0), height: getRelativeHeight(46.0),
                   alignment: .leading)
            .padding(.leading, getRelativeWidth(20.0))
        }
        .frame(width: getRelativeWidth(378.0), alignment: .leading)
        .background(RoundedCorners(topLeft: 16.0, topRight: 16.0, bottomLeft: 16.0,
                                   bottomRight: 16.0)
                .fill(ColorConstants.BlueGray900))
        .shadow(color: ColorConstants.Black9000c, radius: 60, x: 0, y: 4)
        .hideNavigationBar()
    }
}

/* struct RowclockCell_Previews: PreviewProvider {

 static var previews: some View {
 			RowclockCell()
 }
 } */
