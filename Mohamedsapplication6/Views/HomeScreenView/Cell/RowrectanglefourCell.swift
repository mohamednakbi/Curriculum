import SwiftUI

struct RowrectanglefourCell: View {
    var body: some View {
        HStack {
            Image("img_rectangle4_100x100_1")
                .resizable()
                .frame(width: getRelativeWidth(98.0), height: getRelativeWidth(100.0),
                       alignment: .leading)
                .scaledToFit()
                .background(RoundedCorners(topLeft: 16.0, topRight: 16.0, bottomLeft: 16.0,
                                           bottomRight: 16.0))
            VStack(alignment: .leading, spacing: 0) {
                Text(StringConstants.kLblPresidentHotel)
                    .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(20.0)))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.WhiteA700)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(132.0), height: getRelativeHeight(24.0),
                           alignment: .leading)
                Text(StringConstants.kLblParisFrance)
                    .font(FontScheme.kUrbanistRegular(size: getRelativeHeight(14.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.Gray300)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(76.0), height: getRelativeHeight(17.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(12.0))
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
                    Text(StringConstants.kLbl4378Reviews)
                        .font(FontScheme.kUrbanistRegular(size: getRelativeHeight(12.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.Gray300)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(78.0), height: getRelativeHeight(15.0),
                               alignment: .leading)
                        .padding(.leading, getRelativeWidth(8.0))
                }
                .frame(width: getRelativeWidth(121.0), height: getRelativeHeight(17.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(12.0))
            }
            .frame(width: getRelativeWidth(132.0), height: getRelativeHeight(82.0),
                   alignment: .leading)
            .padding(.top, getRelativeHeight(7.0))
            .padding(.bottom, getRelativeHeight(9.0))
            .padding(.leading, getRelativeWidth(16.0))
            VStack(alignment: .trailing, spacing: 0) {
                Text(StringConstants.kLbl35)
                    .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(24.0)))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.Cyan60001)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(39.0), height: getRelativeHeight(29.0),
                           alignment: .leading)
                Text(StringConstants.kLblNight)
                    .font(FontScheme.kUrbanistRegular(size: getRelativeHeight(10.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.Gray300)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(27.0), height: getRelativeHeight(12.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(5.0))
                Image("img_bookmark_24x24")
                    .resizable()
                    .frame(width: getRelativeWidth(22.0), height: getRelativeWidth(24.0),
                           alignment: .leading)
                    .scaledToFit()
                    .padding(.top, getRelativeHeight(17.0))
            }
            .frame(width: getRelativeWidth(39.0), height: getRelativeHeight(87.0),
                   alignment: .leading)
            .padding(.vertical, getRelativeHeight(6.0))
            .padding(.leading, getRelativeWidth(48.0))
        }
        .frame(width: getRelativeWidth(378.0), alignment: .leading)
        .background(RoundedCorners(topLeft: 16.0, topRight: 16.0, bottomLeft: 16.0,
                                   bottomRight: 16.0)
                .fill(ColorConstants.BlueGray900))
        .shadow(color: ColorConstants.Black9000c, radius: 60, x: 0, y: 4)
        .hideNavigationBar()
    }
}

/* struct RowrectanglefourCell_Previews: PreviewProvider {

 static var previews: some View {
 			RowrectanglefourCell()
 }
 } */
