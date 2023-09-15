import SwiftUI

struct BookmarkremovalView: View {
    @StateObject var bookmarkremovalViewModel = BookmarkremovalViewModel(_isOpen: .constant(false))
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                Image("img_frame_gray_700")
                    .resizable()
                    .frame(width: getRelativeWidth(38.0), height: getRelativeHeight(3.0),
                           alignment: .center)
                    .scaledToFit()
                    .clipped()
                Text(StringConstants.kMsgRemoveFromBoo)
                    .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(24.0)))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.WhiteA700)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(274.0), height: getRelativeHeight(29.0),
                           alignment: .topLeading)
                    .padding(.top, getRelativeHeight(23.0))
                HStack {
                    Image("img_rectangle4_100x100_1")
                        .resizable()
                        .frame(width: getRelativeWidth(100.0), height: getRelativeWidth(100.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .background(RoundedCorners(topLeft: 16.0, topRight: 16.0, bottomLeft: 16.0,
                                                   bottomRight: 16.0))
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kLblPresidentHotel)
                            .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(20.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(134.0), height: getRelativeHeight(24.0),
                                   alignment: .topLeading)
                        Text(StringConstants.kLblParisFrance)
                            .font(FontScheme.kUrbanistRegular(size: getRelativeHeight(14.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Gray300)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(78.0), height: getRelativeHeight(17.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(12.0))
                        HStack {
                            Image("img_star_12x12")
                                .resizable()
                                .frame(width: getRelativeWidth(12.0),
                                       height: getRelativeWidth(12.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                            Text(StringConstants.kLbl48)
                                .font(FontScheme.kUrbanistSemiBold(size: getRelativeHeight(14.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Cyan60001)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(19.0),
                                       height: getRelativeHeight(17.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(4.0))
                            Text(StringConstants.kLbl4378Reviews)
                                .font(FontScheme.kUrbanistRegular(size: getRelativeHeight(12.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Gray300)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(80.0),
                                       height: getRelativeHeight(15.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(8.0))
                        }
                        .frame(width: getRelativeWidth(123.0), height: getRelativeHeight(17.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(12.0))
                    }
                    .frame(width: getRelativeWidth(134.0), height: getRelativeHeight(82.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(7.0))
                    .padding(.bottom, getRelativeHeight(9.0))
                    .padding(.leading, getRelativeWidth(12.0))
                    Text("group2568")
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(52.0), height: getRelativeHeight(85.0))
                    VStack(alignment: .trailing, spacing: 0) {
                        Text(StringConstants.kLbl35)
                            .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(24.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.Cyan60001)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(41.0), height: getRelativeHeight(29.0),
                                   alignment: .topLeading)
                        Text(StringConstants.kLblNight)
                            .font(FontScheme.kUrbanistRegular(size: getRelativeHeight(10.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Gray300)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(29.0), height: getRelativeHeight(12.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(5.0))
                        Image("img_bookmark_24x24")
                            .resizable()
                            .frame(width: getRelativeWidth(16.0), height: getRelativeHeight(20.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.top, getRelativeHeight(19.0))
                            .padding(.trailing, getRelativeWidth(4.0))
                    }
                    .frame(width: getRelativeWidth(41.0), height: getRelativeHeight(85.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(6.0))
                    .padding(.bottom, getRelativeHeight(8.0))
                }
                .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(140.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 16.0, topRight: 16.0, bottomLeft: 16.0,
                                           bottomRight: 16.0)
                        .fill(ColorConstants.BlueGray900))
                .shadow(color: ColorConstants.Black9000c, radius: 60, x: 0, y: 4)
                .padding(.top, getRelativeHeight(24.0))
                HStack {
                    Button(action: {}, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblCancel)
                                .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.bold)
                                .padding(.horizontal, getRelativeWidth(16.0))
                                .padding(.vertical, getRelativeHeight(18.0))
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(184.0),
                                       height: getRelativeHeight(58.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 29.0, topRight: 29.0,
                                                           bottomLeft: 29.0, bottomRight: 29.0)
                                        .fill(ColorConstants.Gray800))
                                .padding(.trailing, getRelativeWidth(6.0))
                        }
                    })
                    .frame(width: getRelativeWidth(184.0), height: getRelativeHeight(58.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 29.0, topRight: 29.0, bottomLeft: 29.0,
                                               bottomRight: 29.0)
                            .fill(ColorConstants.Gray800))
                    .padding(.trailing, getRelativeWidth(6.0))
                    Spacer()
                    Button(action: {}, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblRemove)
                                .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.bold)
                                .padding(.horizontal, getRelativeWidth(16.0))
                                .padding(.vertical, getRelativeHeight(18.0))
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(184.0),
                                       height: getRelativeHeight(58.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 29.0, topRight: 29.0,
                                                           bottomLeft: 29.0, bottomRight: 29.0)
                                        .fill(ColorConstants.Cyan60001))
                                .shadow(color: ColorConstants.GreenA7003f, radius: 24, x: 4, y: 8)
                                .padding(.leading, getRelativeWidth(6.0))
                        }
                    })
                    .frame(width: getRelativeWidth(184.0), height: getRelativeHeight(58.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 29.0, topRight: 29.0, bottomLeft: 29.0,
                                               bottomRight: 29.0)
                            .fill(ColorConstants.Cyan60001))
                    .shadow(color: ColorConstants.GreenA7003f, radius: 24, x: 4, y: 8)
                    .padding(.leading, getRelativeWidth(6.0))
                }
                .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(58.0),
                       alignment: .center)
                .padding(.vertical, getRelativeHeight(48.0))
            }
            .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(382.0),
                   alignment: .center)
            .overlay(RoundedCorners(topLeft: 40.0, topRight: 40.0)
                .stroke(ColorConstants.Gray800, lineWidth: 1))
            .background(RoundedCorners(topLeft: 40.0, topRight: 40.0)
                .fill(ColorConstants.Gray90001))
        }
        .frame(width: UIScreen.main.bounds.width)
        .hideNavigationBar()
    }
}

struct BookmarkremovalView_Previews: PreviewProvider {
    static var previews: some View {
        BookmarkremovalView()
    }
}
