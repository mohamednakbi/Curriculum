import SwiftUI

struct Review1Cell: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack(alignment: .leading, spacing: 0) {
                HStack {
                    Image("img_ellipse1_48x48")
                        .resizable()
                        .frame(width: getRelativeWidth(46.0), height: getRelativeWidth(48.0),
                               alignment: .leading)
                        .scaledToFit()
                        .clipShape(Circle())
                        .clipShape(Circle())
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kLblJennyWilson)
                            .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(16.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(94.0), height: getRelativeHeight(20.0),
                                   alignment: .leading)
                        Text(StringConstants.kLblDec102024)
                            .font(FontScheme.kUrbanistRomanMedium(size: getRelativeHeight(12.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Gray400)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(66.0), height: getRelativeHeight(15.0),
                                   alignment: .leading)
                    }
                    .frame(width: getRelativeWidth(94.0), height: getRelativeHeight(37.0),
                           alignment: .leading)
                    .padding(.leading, getRelativeWidth(16.0))
                    Text("group2604")
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(110.0), height: getRelativeHeight(32.0),
                               alignment: .leading)
                    Button(action: {}, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLbl5)
                                .font(FontScheme.kUrbanistSemiBold(size: getRelativeHeight(14.0)))
                                .fontWeight(.semibold)
                                .padding(.trailing, getRelativeWidth(16.0))
                                .padding(.vertical, getRelativeHeight(7.0))
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(58.0),
                                       height: getRelativeHeight(32.0), alignment: .leading)
                                .background(RoundedCorners(topLeft: 16.0, topRight: 16.0,
                                                           bottomLeft: 16.0, bottomRight: 16.0)
                                        .fill(ColorConstants.Cyan60001))
                        }
                    })
                    .frame(width: getRelativeWidth(58.0), height: getRelativeHeight(32.0),
                           alignment: .leading)
                    .background(RoundedCorners(topLeft: 16.0, topRight: 16.0, bottomLeft: 16.0,
                                               bottomRight: 16.0)
                            .fill(ColorConstants.Cyan60001))
                }
                .frame(width: getRelativeWidth(330.0), height: getRelativeHeight(48.0),
                       alignment: .leading)
                Text(StringConstants.kMsgVeryNiceAndC)
                    .font(FontScheme.kUrbanistRegular(size: getRelativeHeight(14.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.WhiteA700)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(291.0), height: getRelativeHeight(40.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(12.0))
                    .padding(.trailing, getRelativeWidth(38.0))
            }
            .frame(width: getRelativeWidth(378.0), alignment: .leading)
            .background(RoundedCorners(topLeft: 16.0, topRight: 16.0, bottomLeft: 16.0,
                                       bottomRight: 16.0)
                    .fill(ColorConstants.BlueGray900))
            .shadow(color: ColorConstants.Black9000c, radius: 60, x: 0, y: 4)
        }
        .hideNavigationBar()
    }
}

/* struct Review1Cell_Previews: PreviewProvider {

 static var previews: some View {
 			Review1Cell()
 }
 } */
