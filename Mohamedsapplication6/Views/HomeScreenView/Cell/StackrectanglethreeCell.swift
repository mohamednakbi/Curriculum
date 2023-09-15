import SwiftUI

struct StackrectanglethreeCell: View {
    var body: some View {
        ZStack(alignment: .center) {
            Image("img_rectangle3_400x300_1")
                .resizable()
                .frame(width: getRelativeWidth(298.0), height: getRelativeHeight(400.0),
                       alignment: .leading)
                .scaledToFit()
                .background(RoundedCorners(topLeft: 36.0, topRight: 36.0, bottomLeft: 36.0,
                                           bottomRight: 36.0))
            VStack(alignment: .trailing, spacing: 0) {
                Button(action: {}, label: {
                    HStack(spacing: 0) {
                        Text(StringConstants.kLbl48)
                            .font(FontScheme.kUrbanistSemiBold(size: getRelativeHeight(14.0)))
                            .fontWeight(.semibold)
                            .padding(.trailing, getRelativeWidth(16.0))
                            .padding(.vertical, getRelativeHeight(7.0))
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(69.0), height: getRelativeHeight(32.0),
                                   alignment: .leading)
                            .background(RoundedCorners(topLeft: 16.0, topRight: 16.0,
                                                       bottomLeft: 16.0, bottomRight: 16.0)
                                    .fill(ColorConstants.Cyan60001))
                            .padding(.trailing, getRelativeWidth(23.0))
                    }
                })
                .frame(width: getRelativeWidth(69.0), height: getRelativeHeight(32.0),
                       alignment: .leading)
                .background(RoundedCorners(topLeft: 16.0, topRight: 16.0, bottomLeft: 16.0,
                                           bottomRight: 16.0)
                        .fill(ColorConstants.Cyan60001))
                .padding(.trailing, getRelativeWidth(23.0))
                VStack(alignment: .leading, spacing: 0) {
                    Text(StringConstants.kMsgEmeraldaDeHot)
                        .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(24.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.WhiteA700)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(199.0), height: getRelativeHeight(29.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(19.0))
                    Text(StringConstants.kLblParisFrance)
                        .font(FontScheme.kUrbanistRegular(size: getRelativeHeight(16.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.WhiteA700)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(87.0), height: getRelativeHeight(20.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(10.0))
                    HStack {
                        Text(StringConstants.kLbl292)
                            .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(24.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(40.0), height: getRelativeHeight(29.0),
                                   alignment: .leading)
                        Text(StringConstants.kLblPerNight)
                            .font(FontScheme.kUrbanistRegular(size: getRelativeHeight(14.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(63.0), height: getRelativeHeight(17.0),
                                   alignment: .leading)
                            .padding(.leading, getRelativeWidth(4.0))
                        Text("group2535")
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(94.0), height: getRelativeHeight(28.0),
                                   alignment: .leading)
                        Image("img_bookmark")
                            .resizable()
                            .frame(width: getRelativeWidth(26.0), height: getRelativeWidth(28.0),
                                   alignment: .leading)
                            .scaledToFit()
                    }
                    .frame(width: getRelativeWidth(234.0), height: getRelativeHeight(29.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(8.0))
                }
                .frame(width: getRelativeWidth(298.0), height: getRelativeHeight(164.0),
                       alignment: .leading)
                .background(RoundedCorners(bottomLeft: 36.0, bottomRight: 36.0)
                    .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants.Gray80000,
                                                                     ColorConstants.Gray90096]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing)))
                .padding(.top, getRelativeHeight(172.0))
            }
            .frame(width: getRelativeWidth(298.0), height: getRelativeHeight(368.0),
                   alignment: .leading)
            .padding(.top, getRelativeHeight(32.0))
        }
        .hideNavigationBar()
        .frame(width: getRelativeWidth(298.0), alignment: .leading)
    }
}

/* struct StackrectanglethreeCell_Previews: PreviewProvider {

 static var previews: some View {
 			StackrectanglethreeCell()
 }
 } */
