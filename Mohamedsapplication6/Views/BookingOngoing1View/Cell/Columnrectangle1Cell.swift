import SwiftUI

struct Columnrectangle1Cell: View {
    var cancelbookingClick: (() -> Void)?
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack(alignment: .leading, spacing: 0) {
                HStack {
                    Image("img_rectangle4_100x100_1")
                        .resizable()
                        .frame(width: getRelativeWidth(98.0), height: getRelativeWidth(100.0),
                               alignment: .leading)
                        .scaledToFit()
                        .background(RoundedCorners(topLeft: 16.0, topRight: 16.0, bottomLeft: 16.0,
                                                   bottomRight: 16.0))
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kMsgRoyalePresiden)
                            .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(20.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(197.0), height: getRelativeHeight(24.0),
                                   alignment: .leading)
                        Text(StringConstants.kLblParisFrance)
                            .font(FontScheme.kUrbanistRegular(size: getRelativeHeight(14.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Gray300)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(76.0), height: getRelativeHeight(17.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(9.0))
                        Button(action: {}, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kLblPaid)
                                    .font(FontScheme
                                        .kUrbanistSemiBold(size: getRelativeHeight(10.0)))
                                    .fontWeight(.semibold)
                                    .padding(.horizontal, getRelativeWidth(20.0))
                                    .padding(.vertical, getRelativeHeight(6.0))
                                    .foregroundColor(ColorConstants.Cyan60001)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(58.0),
                                           height: getRelativeHeight(24.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 6.0, topRight: 6.0,
                                                               bottomLeft: 6.0, bottomRight: 6.0)
                                            .fill(ColorConstants.GreenA7001e))
                                    .padding(.top, getRelativeHeight(11.0))
                            }
                        })
                        .frame(width: getRelativeWidth(58.0), height: getRelativeHeight(24.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                                   bottomRight: 6.0)
                                .fill(ColorConstants.GreenA7001e))
                        .padding(.top, getRelativeHeight(11.0))
                    }
                    .frame(width: getRelativeWidth(197.0), height: getRelativeHeight(86.0),
                           alignment: .leading)
                    .padding(.leading, getRelativeWidth(16.0))
                }
                .frame(width: getRelativeWidth(313.0), height: getRelativeHeight(100.0),
                       alignment: .leading)
                .padding(.trailing)
                Divider()
                    .frame(width: getRelativeWidth(338.0), height: getRelativeHeight(1.0),
                           alignment: .leading)
                    .background(ColorConstants.BlueGray700)
                    .padding(.top, getRelativeHeight(20.0))
                HStack {
                    Button(action: {
                        cancelbookingClick?()
                    }, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblCancelBooking)
                                .font(FontScheme.kUrbanistSemiBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.semibold)
                                .padding(.horizontal, getRelativeWidth(26.0))
                                .padding(.vertical, getRelativeHeight(9.0))
                                .foregroundColor(ColorConstants.Cyan60001)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(162.0),
                                       height: getRelativeHeight(38.0), alignment: .center)
                                .overlay(RoundedCorners(topLeft: 19.0, topRight: 19.0,
                                                        bottomLeft: 19.0, bottomRight: 19.0)
                                        .stroke(ColorConstants.Cyan60001,
                                                lineWidth: 2))
                                .background(RoundedCorners(topLeft: 19.0, topRight: 19.0,
                                                           bottomLeft: 19.0, bottomRight: 19.0)
                                        .fill(Color.clear.opacity(0.7)))
                                .padding(.trailing, getRelativeWidth(6.0))
                        }
                    })
                    .frame(width: getRelativeWidth(162.0), height: getRelativeHeight(38.0),
                           alignment: .center)
                    .overlay(RoundedCorners(topLeft: 19.0, topRight: 19.0, bottomLeft: 19.0,
                                            bottomRight: 19.0)
                            .stroke(ColorConstants.Cyan60001,
                                    lineWidth: 2))
                    .background(RoundedCorners(topLeft: 19.0, topRight: 19.0, bottomLeft: 19.0,
                                               bottomRight: 19.0)
                            .fill(Color.clear.opacity(0.7)))
                    .padding(.trailing, getRelativeWidth(6.0))
                    Spacer()
                    Button(action: {}, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblViewTicket)
                                .font(FontScheme.kUrbanistSemiBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.semibold)
                                .padding(.trailing, getRelativeWidth(39.0))
                                .padding(.leading, getRelativeWidth(30.0))
                                .padding(.vertical, getRelativeHeight(9.0))
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(162.0),
                                       height: getRelativeHeight(38.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 19.0, topRight: 19.0,
                                                           bottomLeft: 19.0, bottomRight: 19.0)
                                        .fill(ColorConstants.Cyan60001))
                                .padding(.leading, getRelativeWidth(6.0))
                        }
                    })
                    .frame(width: getRelativeWidth(162.0), height: getRelativeHeight(38.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 19.0, topRight: 19.0, bottomLeft: 19.0,
                                               bottomRight: 19.0)
                            .fill(ColorConstants.Cyan60001))
                    .padding(.leading, getRelativeWidth(6.0))
                }
                .frame(width: getRelativeWidth(338.0), height: getRelativeHeight(38.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(19.0))
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

/* struct Columnrectangle1Cell_Previews: PreviewProvider {

 static var previews: some View {
 			Columnrectangle1Cell()
 }
 } */
