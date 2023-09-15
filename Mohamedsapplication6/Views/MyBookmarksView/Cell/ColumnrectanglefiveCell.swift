import SwiftUI

struct ColumnrectanglefiveCell: View {
    var bookmarkClick: (() -> Void)?
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack(alignment: .leading, spacing: 0) {
                Image("img_rectangle5_120x140_1")
                    .resizable()
                    .frame(width: getRelativeWidth(138.0), height: getRelativeHeight(120.0),
                           alignment: .leading)
                    .scaledToFit()
                    .background(RoundedCorners(topLeft: 16.0, topRight: 16.0, bottomLeft: 16.0,
                                               bottomRight: 16.0))
                Text(StringConstants.kMsgPresidentMila)
                    .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(18.0)))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.WhiteA700)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(113.0), height: getRelativeHeight(44.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(15.0))
                HStack {
                    Image("img_star_12x12")
                        .resizable()
                        .frame(width: getRelativeWidth(10.0), height: getRelativeWidth(12.0),
                               alignment: .leading)
                        .scaledToFit()
                    Text(StringConstants.kLbl48)
                        .font(FontScheme.kUrbanistSemiBold(size: getRelativeHeight(14.0)))
                        .fontWeight(.semibold)
                        .foregroundColor(ColorConstants.Cyan60001)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(17.0), height: getRelativeHeight(17.0),
                               alignment: .leading)
                        .padding(.leading, getRelativeWidth(4.0))
                    Text(StringConstants.kLblParisFrance)
                        .font(FontScheme.kUrbanistRegular(size: getRelativeHeight(12.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.Gray300)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(65.0), height: getRelativeHeight(15.0),
                               alignment: .leading)
                        .padding(.leading, getRelativeWidth(8.0))
                }
                .frame(width: getRelativeWidth(108.0), height: getRelativeHeight(17.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(9.0))
                HStack {
                    Text(StringConstants.kLbl35)
                        .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(20.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.Cyan60001)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(32.0), height: getRelativeHeight(24.0),
                               alignment: .leading)
                    Text(StringConstants.kLblNight)
                        .font(FontScheme.kUrbanistRegular(size: getRelativeHeight(10.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.Gray300)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(27.0), height: getRelativeHeight(12.0),
                               alignment: .leading)
                        .padding(.leading, getRelativeWidth(4.0))
                    Image("img_bookmark_24x24")
                        .resizable()
                        .frame(width: getRelativeWidth(22.0), height: getRelativeWidth(24.0),
                               alignment: .leading)
                        .scaledToFit()
                        .padding(.leading, getRelativeWidth(48.0))
                        .onTapGesture {
                            bookmarkClick?()
                        }
                }
                .frame(width: getRelativeWidth(138.0), height: getRelativeHeight(24.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(9.0))
            }
            .frame(width: getRelativeWidth(176.0), alignment: .leading)
            .background(RoundedCorners(topLeft: 20.0, topRight: 20.0, bottomLeft: 20.0,
                                       bottomRight: 20.0)
                    .fill(ColorConstants.BlueGray900))
            .shadow(color: ColorConstants.Black9000c, radius: 60, x: 0, y: 4)
        }
        .hideNavigationBar()
    }
}

/* struct ColumnrectanglefiveCell_Previews: PreviewProvider {

 static var previews: some View {
 			ColumnrectanglefiveCell()
 }
 } */
