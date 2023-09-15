import SwiftUI

struct PaymentSuccessfulView: View {
    @StateObject var paymentSuccessfulViewModel =
        PaymentSuccessfulViewModel(_isOpen: .constant(false))
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    Image("img_group_cyan_600")
                        .resizable()
                        .frame(width: getRelativeWidth(185.0), height: getRelativeHeight(180.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.top, getRelativeHeight(8.0))
                    Text(StringConstants.kMsgPaymentSuccess)
                        .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(24.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.Cyan60001)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(225.0), height: getRelativeHeight(29.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(34.0))
                    Text(StringConstants.kMsgSuccessfullyMa)
                        .font(FontScheme.kUrbanistRegular(size: getRelativeHeight(18.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.WhiteA700)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(263.0), height: getRelativeHeight(52.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(14.0))
                        .padding(.horizontal, getRelativeWidth(6.0))
                    Button(action: {
                        paymentSuccessfulViewModel.nextScreen = "ViewTicketView"
                    }, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblViewTicket)
                                .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.bold)
                                .padding(.horizontal, getRelativeWidth(16.0))
                                .padding(.vertical, getRelativeHeight(18.0))
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(276.0),
                                       height: getRelativeHeight(58.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 29.0, topRight: 29.0,
                                                           bottomLeft: 29.0, bottomRight: 29.0)
                                        .fill(ColorConstants.Cyan60001))
                                .padding(.top, getRelativeHeight(29.0))
                        }
                    })
                    .frame(width: getRelativeWidth(276.0), height: getRelativeHeight(58.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 29.0, topRight: 29.0, bottomLeft: 29.0,
                                               bottomRight: 29.0)
                            .fill(ColorConstants.Cyan60001))
                    .padding(.top, getRelativeHeight(29.0))
                }
                .frame(width: getRelativeWidth(340.0), height: getRelativeHeight(469.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 24.0, topRight: 24.0, bottomLeft: 24.0,
                                           bottomRight: 24.0)
                        .fill(ColorConstants.BlueGray900))
                .padding(.horizontal, getRelativeWidth(44.0))
                Group {
                    NavigationLink(destination: ViewTicketView(),
                                   tag: "ViewTicketView",
                                   selection: $paymentSuccessfulViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(height: getRelativeHeight(882.0))
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct PaymentSuccessfulView_Previews: PreviewProvider {
    static var previews: some View {
        PaymentSuccessfulView()
    }
}
