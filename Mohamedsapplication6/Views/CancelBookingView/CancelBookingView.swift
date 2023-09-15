import SwiftUI

struct CancelBookingView: View {
    @StateObject var cancelBookingViewModel = CancelBookingViewModel(_isOpen: .constant(false))
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    Image("img_frame_gray_700")
                        .resizable()
                        .frame(width: getRelativeWidth(38.0), height: getRelativeHeight(3.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                    Text(StringConstants.kLblCancelBooking)
                        .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(24.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.RedA200)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(166.0), height: getRelativeHeight(29.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(26.0))
                    Text(StringConstants.kMsgAreYouSureYo2)
                        .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(20.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.WhiteA700)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(340.0), height: getRelativeHeight(53.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(26.0))
                        .padding(.horizontal, getRelativeWidth(19.0))
                    Text(StringConstants.kMsgOnly80OfThe)
                        .font(FontScheme.kUrbanistRegular(size: getRelativeHeight(14.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.WhiteA700)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(372.0), height: getRelativeHeight(40.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(8.0))
                        .padding(.horizontal, getRelativeWidth(3.0))
                    HStack {
                        Button(action: {}, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kLblCancel)
                                    .font(FontScheme
                                        .kUrbanistRomanBold(size: getRelativeHeight(16.0)))
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
                        Button(action: {
                            cancelBookingViewModel.nextScreen = "RefundMethodView"
                        }, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kLblContinue)
                                    .font(FontScheme
                                        .kUrbanistRomanBold(size: getRelativeHeight(16.0)))
                                    .fontWeight(.bold)
                                    .padding(.trailing, getRelativeWidth(59.0))
                                    .padding(.leading, getRelativeWidth(30.0))
                                    .padding(.vertical, getRelativeHeight(18.0))
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(184.0),
                                           height: getRelativeHeight(58.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 29.0, topRight: 29.0,
                                                               bottomLeft: 29.0, bottomRight: 29.0)
                                            .fill(ColorConstants.Cyan60001))
                                    .shadow(color: ColorConstants.GreenA7003f, radius: 24, x: 4,
                                            y: 8)
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
                    .padding(.vertical, getRelativeHeight(22.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(342.0),
                       alignment: .center)
                .overlay(RoundedCorners(topLeft: 40.0, topRight: 40.0)
                    .stroke(ColorConstants.Gray800, lineWidth: 1))
                .background(RoundedCorners(topLeft: 40.0, topRight: 40.0)
                    .fill(ColorConstants.BlueGray90001))
                Group {
                    NavigationLink(destination: RefundMethodView(),
                                   tag: "RefundMethodView",
                                   selection: $cancelBookingViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width)
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct CancelBookingView_Previews: PreviewProvider {
    static var previews: some View {
        CancelBookingView()
    }
}
