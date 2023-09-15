import SwiftUI

struct BookingCancelledView: View {
    @StateObject var bookingCancelledViewModel = BookingCancelledViewModel()
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
                                Text(StringConstants.kMsgPalmsCasinoRe)
                                    .font(FontScheme
                                        .kUrbanistRomanBold(size: getRelativeHeight(20.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(181.0),
                                           height: getRelativeHeight(24.0), alignment: .topLeading)
                                Text(StringConstants.kMsgLondonUnited)
                                    .font(FontScheme
                                        .kUrbanistRegular(size: getRelativeHeight(14.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Gray300)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(153.0),
                                           height: getRelativeHeight(17.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(13.0))
                                Button(action: {}, label: {
                                    HStack(spacing: 0) {
                                        Text(StringConstants.kLblPaid)
                                            .font(FontScheme
                                                .kUrbanistSemiBold(size: getRelativeHeight(10.0)))
                                            .fontWeight(.semibold)
                                            .padding(.horizontal, getRelativeWidth(20.0))
                                            .padding(.vertical, getRelativeHeight(6.0))
                                            .foregroundColor(ColorConstants.RedA200)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.center)
                                            .frame(width: getRelativeWidth(60.0),
                                                   height: getRelativeHeight(24.0),
                                                   alignment: .center)
                                            .background(RoundedCorners(topLeft: 6.0, topRight: 6.0,
                                                                       bottomLeft: 6.0,
                                                                       bottomRight: 6.0)
                                                    .fill(ColorConstants.RedA2001e))
                                            .padding(.top, getRelativeHeight(10.0))
                                    }
                                })
                                .frame(width: getRelativeWidth(60.0),
                                       height: getRelativeHeight(24.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 6.0, topRight: 6.0,
                                                           bottomLeft: 6.0, bottomRight: 6.0)
                                        .fill(ColorConstants.RedA2001e))
                                .padding(.top, getRelativeHeight(10.0))
                            }
                            .frame(width: getRelativeWidth(181.0), height: getRelativeHeight(88.0),
                                   alignment: .center)
                            .padding(.leading, getRelativeWidth(16.0))
                        }
                        .frame(width: getRelativeWidth(297.0), height: getRelativeHeight(100.0),
                               alignment: .leading)
                        .padding(.trailing)
                        Divider()
                            .frame(width: getRelativeWidth(340.0), height: getRelativeHeight(1.0),
                                   alignment: .leading)
                            .background(ColorConstants.BlueGray70001)
                            .padding(.top, getRelativeHeight(20.0))
                        HStack {
                            Spacer()
                            Image("img_warning")
                                .resizable()
                                .frame(width: getRelativeWidth(18.0),
                                       height: getRelativeWidth(18.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(8.0))
                                .padding(.leading, getRelativeWidth(12.0))
                                .padding(.trailing, getRelativeWidth(7.0))
                            TextField(StringConstants.kMsgYouCanceledTh,
                                      text: $bookingCancelledViewModel.statuserrorcompText)
                                .font(FontScheme.kUrbanistRegular(size: getRelativeHeight(10.0)))
                                .foregroundColor(ColorConstants.RedA200)
                                .padding()
                        }
                        .frame(width: getRelativeWidth(340.0), height: getRelativeHeight(34.0),
                               alignment: .leading)
                        .background(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                   bottomRight: 10.0)
                                .fill(ColorConstants.RedA20033))
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
                                Text(StringConstants.kLblTheMarkHotel)
                                    .font(FontScheme
                                        .kUrbanistRomanBold(size: getRelativeHeight(20.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(138.0),
                                           height: getRelativeHeight(24.0), alignment: .topLeading)
                                Text(StringConstants.kMsgLuxemburgGerm)
                                    .font(FontScheme
                                        .kUrbanistRegular(size: getRelativeHeight(14.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Gray300)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(137.0),
                                           height: getRelativeHeight(17.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(13.0))
                                Button(action: {}, label: {
                                    HStack(spacing: 0) {
                                        Text(StringConstants.kLblPaid)
                                            .font(FontScheme
                                                .kUrbanistSemiBold(size: getRelativeHeight(10.0)))
                                            .fontWeight(.semibold)
                                            .padding(.horizontal, getRelativeWidth(20.0))
                                            .padding(.vertical, getRelativeHeight(6.0))
                                            .foregroundColor(ColorConstants.RedA200)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.center)
                                            .frame(width: getRelativeWidth(60.0),
                                                   height: getRelativeHeight(24.0),
                                                   alignment: .center)
                                            .background(RoundedCorners(topLeft: 6.0, topRight: 6.0,
                                                                       bottomLeft: 6.0,
                                                                       bottomRight: 6.0)
                                                    .fill(ColorConstants.RedA2001e))
                                            .padding(.top, getRelativeHeight(10.0))
                                    }
                                })
                                .frame(width: getRelativeWidth(60.0),
                                       height: getRelativeHeight(24.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 6.0, topRight: 6.0,
                                                           bottomLeft: 6.0, bottomRight: 6.0)
                                        .fill(ColorConstants.RedA2001e))
                                .padding(.top, getRelativeHeight(10.0))
                            }
                            .frame(width: getRelativeWidth(138.0), height: getRelativeHeight(88.0),
                                   alignment: .center)
                            .padding(.leading, getRelativeWidth(16.0))
                        }
                        .frame(width: getRelativeWidth(254.0), height: getRelativeHeight(100.0),
                               alignment: .leading)
                        .padding(.trailing)
                        Divider()
                            .frame(width: getRelativeWidth(340.0), height: getRelativeHeight(1.0),
                                   alignment: .leading)
                            .background(ColorConstants.BlueGray70001)
                            .padding(.top, getRelativeHeight(20.0))
                        HStack {
                            Spacer()
                            Image("img_warning")
                                .resizable()
                                .frame(width: getRelativeWidth(18.0),
                                       height: getRelativeWidth(18.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(8.0))
                                .padding(.leading, getRelativeWidth(12.0))
                                .padding(.trailing, getRelativeWidth(7.0))
                            TextField(StringConstants.kMsgYouCanceledTh,
                                      text: $bookingCancelledViewModel.statuserrorcomponeText)
                                .font(FontScheme.kUrbanistRegular(size: getRelativeHeight(10.0)))
                                .foregroundColor(ColorConstants.RedA200)
                                .padding()
                        }
                        .frame(width: getRelativeWidth(340.0), height: getRelativeHeight(34.0),
                               alignment: .leading)
                        .background(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                   bottomRight: 10.0)
                                .fill(ColorConstants.RedA20033))
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

struct BookingCancelledView_Previews: PreviewProvider {
    static var previews: some View {
        BookingCancelledView()
    }
}
