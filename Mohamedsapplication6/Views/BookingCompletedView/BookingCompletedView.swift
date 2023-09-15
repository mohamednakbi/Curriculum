import SwiftUI

struct BookingCompletedView: View {
    @StateObject var bookingCompletedViewModel = BookingCompletedViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                VStack {
                    VStack(alignment: .leading, spacing: 0) {
                        HStack {
                            Image("img_rectangle4_100x100_1")
                                .resizable()
                                .frame(width: getRelativeWidth(100.0),
                                       height: getRelativeWidth(100.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .background(RoundedCorners(topLeft: 16.0, topRight: 16.0,
                                                           bottomLeft: 16.0, bottomRight: 16.0))
                            VStack(alignment: .leading, spacing: 0) {
                                Text(StringConstants.kLblBulgariResort)
                                    .font(FontScheme
                                        .kUrbanistRomanBold(size: getRelativeHeight(20.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(125.0),
                                           height: getRelativeHeight(24.0), alignment: .topLeading)
                                Text(StringConstants.kLblParisFrance)
                                    .font(FontScheme
                                        .kUrbanistRegular(size: getRelativeHeight(14.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Gray300)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(78.0),
                                           height: getRelativeHeight(17.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(9.0))
                                Button(action: {}, label: {
                                    HStack(spacing: 0) {
                                        Text(StringConstants.kLblCompleted)
                                            .font(FontScheme
                                                .kUrbanistSemiBold(size: getRelativeHeight(10.0)))
                                            .fontWeight(.semibold)
                                            .padding(.horizontal, getRelativeWidth(10.0))
                                            .padding(.vertical, getRelativeHeight(6.0))
                                            .foregroundColor(ColorConstants.Cyan60001)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.center)
                                            .frame(width: getRelativeWidth(72.0),
                                                   height: getRelativeHeight(24.0),
                                                   alignment: .center)
                                            .background(RoundedCorners(topLeft: 6.0, topRight: 6.0,
                                                                       bottomLeft: 6.0,
                                                                       bottomRight: 6.0)
                                                    .fill(ColorConstants.GreenA7001e))
                                            .padding(.top, getRelativeHeight(11.0))
                                    }
                                })
                                .frame(width: getRelativeWidth(72.0),
                                       height: getRelativeHeight(24.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 6.0, topRight: 6.0,
                                                           bottomLeft: 6.0, bottomRight: 6.0)
                                        .fill(ColorConstants.GreenA7001e))
                                .padding(.top, getRelativeHeight(11.0))
                            }
                            .frame(width: getRelativeWidth(125.0), height: getRelativeHeight(86.0),
                                   alignment: .center)
                            .padding(.leading, getRelativeWidth(16.0))
                        }
                        .frame(width: getRelativeWidth(241.0), height: getRelativeHeight(100.0),
                               alignment: .leading)
                        .padding(.trailing)
                        Divider()
                            .frame(width: getRelativeWidth(340.0), height: getRelativeHeight(1.0),
                                   alignment: .leading)
                            .background(ColorConstants.BlueGray700)
                            .padding(.top, getRelativeHeight(20.0))
                        HStack {
                            Spacer()
                            Image("img_checkmark_18x18")
                                .resizable()
                                .frame(width: getRelativeWidth(18.0),
                                       height: getRelativeWidth(18.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(8.0))
                                .padding(.leading, getRelativeWidth(12.0))
                                .padding(.trailing, getRelativeWidth(7.0))
                            TextField(StringConstants.kMsgYeayYouHave,
                                      text: $bookingCompletedViewModel.statussuccessText)
                                .font(FontScheme.kUrbanistRegular(size: getRelativeHeight(10.0)))
                                .foregroundColor(ColorConstants.Green500)
                                .padding()
                        }
                        .frame(width: getRelativeWidth(340.0), height: getRelativeHeight(34.0),
                               alignment: .leading)
                        .background(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                   bottomRight: 10.0)
                                .fill(ColorConstants.Green40033))
                        .padding(.top, getRelativeHeight(19.0))
                    }
                    .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(214.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 16.0, topRight: 16.0, bottomLeft: 16.0,
                                               bottomRight: 16.0)
                            .fill(ColorConstants.BlueGray900))
                    .shadow(color: ColorConstants.Black9000c, radius: 60, x: 0, y: 4)
                    VStack(alignment: .leading, spacing: 0) {
                        HStack {
                            Image("img_rectangle_100x100_1")
                                .resizable()
                                .frame(width: getRelativeWidth(100.0),
                                       height: getRelativeWidth(100.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .background(RoundedCorners(topLeft: 16.0, topRight: 16.0,
                                                           bottomLeft: 16.0, bottomRight: 16.0))
                            VStack(alignment: .leading, spacing: 0) {
                                Text(StringConstants.kMsgHotelMartinez)
                                    .font(FontScheme
                                        .kUrbanistRomanBold(size: getRelativeHeight(20.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(205.0),
                                           height: getRelativeHeight(24.0), alignment: .topLeading)
                                Text(StringConstants.kMsgAmsterdamNeth)
                                    .font(FontScheme
                                        .kUrbanistRegular(size: getRelativeHeight(14.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Gray300)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(158.0),
                                           height: getRelativeHeight(17.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(12.0))
                                Button(action: {}, label: {
                                    HStack(spacing: 0) {
                                        Text(StringConstants.kLblCompleted)
                                            .font(FontScheme
                                                .kUrbanistSemiBold(size: getRelativeHeight(10.0)))
                                            .fontWeight(.semibold)
                                            .padding(.horizontal, getRelativeWidth(10.0))
                                            .padding(.vertical, getRelativeHeight(6.0))
                                            .foregroundColor(ColorConstants.Cyan60001)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.center)
                                            .frame(width: getRelativeWidth(72.0),
                                                   height: getRelativeHeight(24.0),
                                                   alignment: .center)
                                            .background(RoundedCorners(topLeft: 6.0, topRight: 6.0,
                                                                       bottomLeft: 6.0,
                                                                       bottomRight: 6.0)
                                                    .fill(ColorConstants.GreenA7001e))
                                            .padding(.top, getRelativeHeight(11.0))
                                    }
                                })
                                .frame(width: getRelativeWidth(72.0),
                                       height: getRelativeHeight(24.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 6.0, topRight: 6.0,
                                                           bottomLeft: 6.0, bottomRight: 6.0)
                                        .fill(ColorConstants.GreenA7001e))
                                .padding(.top, getRelativeHeight(11.0))
                            }
                            .frame(width: getRelativeWidth(205.0), height: getRelativeHeight(88.0),
                                   alignment: .center)
                            .padding(.leading, getRelativeWidth(16.0))
                        }
                        .frame(width: getRelativeWidth(321.0), height: getRelativeHeight(100.0),
                               alignment: .leading)
                        .padding(.trailing)
                        Divider()
                            .frame(width: getRelativeWidth(340.0), height: getRelativeHeight(1.0),
                                   alignment: .leading)
                            .background(ColorConstants.BlueGray700)
                            .padding(.top, getRelativeHeight(20.0))
                        HStack {
                            Spacer()
                            Image("img_checkmark_18x18")
                                .resizable()
                                .frame(width: getRelativeWidth(18.0),
                                       height: getRelativeWidth(18.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(8.0))
                                .padding(.leading, getRelativeWidth(12.0))
                                .padding(.trailing, getRelativeWidth(7.0))
                            TextField(StringConstants.kMsgYeayYouHave,
                                      text: $bookingCompletedViewModel.statussuccessoneText)
                                .font(FontScheme.kUrbanistRegular(size: getRelativeHeight(10.0)))
                                .foregroundColor(ColorConstants.Green500)
                                .padding()
                        }
                        .frame(width: getRelativeWidth(340.0), height: getRelativeHeight(34.0),
                               alignment: .leading)
                        .background(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                   bottomRight: 10.0)
                                .fill(ColorConstants.Green40033))
                        .padding(.top, getRelativeHeight(19.0))
                    }
                    .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(214.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 16.0, topRight: 16.0, bottomLeft: 16.0,
                                               bottomRight: 16.0)
                            .fill(ColorConstants.BlueGray900))
                    .shadow(color: ColorConstants.Black9000c, radius: 60, x: 0, y: 4)
                    .padding(.top, getRelativeHeight(20.0))
                }
                .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(448.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.horizontal, getRelativeWidth(24.0))
            }
            .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
        }
        .hideNavigationBar()
    }
}

struct BookingCompletedView_Previews: PreviewProvider {
    static var previews: some View {
        BookingCompletedView()
    }
}
