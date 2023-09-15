import SwiftUI

struct BookingNameView: View {
    @StateObject var bookingNameViewModel = BookingNameViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    HStack {
                        Image("img_arrowleft")
                            .resizable()
                            .frame(width: getRelativeWidth(28.0), height: getRelativeWidth(28.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.leading, getRelativeWidth(24.0))
                            .onTapGesture {
                                self.presentationMode.wrappedValue.dismiss()
                            }
                        Text(StringConstants.kMsgNameOfReserva)
                            .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(24.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .padding(.leading, getRelativeWidth(16.0))
                    }
                    .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(48.0),
                           alignment: .leading)
                    VStack {
                        HStack {
                            Text(StringConstants.kLblMr)
                                .font(FontScheme.kUrbanistSemiBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.semibold)
                                .padding(.trailing, getRelativeWidth(48.0))
                                .padding(.leading, getRelativeWidth(30.0))
                                .padding(.vertical, getRelativeHeight(8.0))
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(121.0),
                                       height: getRelativeHeight(38.0), alignment: .center)
                                .background(ColorConstants.Cyan60001)
                            Spacer()
                            Text(StringConstants.kLblMrs)
                                .font(FontScheme.kUrbanistSemiBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.semibold)
                                .padding(.trailing, getRelativeWidth(45.0))
                                .padding(.leading, getRelativeWidth(30.0))
                                .padding(.vertical, getRelativeHeight(8.0))
                                .foregroundColor(ColorConstants.Cyan60001)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(122.0),
                                       height: getRelativeHeight(38.0), alignment: .center)
                                .overlay(RoundedCorners(topLeft: 19.0, topRight: 19.0,
                                                        bottomLeft: 19.0, bottomRight: 19.0)
                                        .stroke(ColorConstants.Cyan60001,
                                                lineWidth: 2))
                                .background(RoundedCorners(topLeft: 19.0, topRight: 19.0,
                                                           bottomLeft: 19.0, bottomRight: 19.0)
                                        .fill(Color.clear.opacity(0.7)))
                            Spacer()
                            Text(StringConstants.kLblMs)
                                .font(FontScheme.kUrbanistSemiBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.semibold)
                                .padding(.trailing, getRelativeWidth(47.0))
                                .padding(.leading, getRelativeWidth(30.0))
                                .padding(.vertical, getRelativeHeight(8.0))
                                .foregroundColor(ColorConstants.Cyan60001)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(121.0),
                                       height: getRelativeHeight(38.0), alignment: .center)
                                .overlay(RoundedCorners(topLeft: 19.0, topRight: 19.0,
                                                        bottomLeft: 19.0, bottomRight: 19.0)
                                        .stroke(ColorConstants.Cyan60001,
                                                lineWidth: 2))
                                .background(RoundedCorners(topLeft: 19.0, topRight: 19.0,
                                                           bottomLeft: 19.0, bottomRight: 19.0)
                                        .fill(Color.clear.opacity(0.7)))
                        }
                        .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(38.0),
                               alignment: .center)
                        HStack {
                            TextField(StringConstants.kLblDanielAustin,
                                      text: $bookingNameViewModel.statusfilltypedText)
                                .font(FontScheme.kUrbanistSemiBold(size: getRelativeHeight(14.0)))
                                .foregroundColor(ColorConstants.WhiteA700)
                                .padding()
                        }
                        .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(56.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                                   bottomRight: 12.0)
                                .fill(ColorConstants.BlueGray900))
                        .padding(.top, getRelativeHeight(30.0))
                        HStack {
                            TextField(StringConstants.kLblDaniel,
                                      text: $bookingNameViewModel.firstnameText)
                                .font(FontScheme.kUrbanistSemiBold(size: getRelativeHeight(14.0)))
                                .foregroundColor(ColorConstants.WhiteA700)
                                .padding()
                        }
                        .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(56.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                                   bottomRight: 12.0)
                                .fill(ColorConstants.BlueGray900))
                        .padding(.top, getRelativeHeight(24.0))
                        HStack {
                            TextField(StringConstants.kLbl12271995,
                                      text: $bookingNameViewModel.dobText)
                                .font(FontScheme.kUrbanistSemiBold(size: getRelativeHeight(14.0)))
                                .foregroundColor(ColorConstants.WhiteA700)
                                .padding()
                            Image("img_calendar_cyan_600")
                                .resizable()
                                .frame(width: getRelativeWidth(15.0),
                                       height: getRelativeHeight(16.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .overlay(RoundedCorners()
                                    .stroke(ColorConstants.Cyan600, lineWidth: 1))
                                .background(RoundedCorners().fill(Color.clear.opacity(0.7)))
                                .padding(.vertical, getRelativeHeight(19.0))
                                .padding(.leading, getRelativeWidth(30.0))
                                .padding(.trailing, getRelativeWidth(22.0))
                            Spacer()
                        }
                        .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(56.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                                   bottomRight: 12.0)
                                .fill(ColorConstants.BlueGray900))
                        .padding(.top, getRelativeHeight(24.0))
                        HStack {
                            TextField(StringConstants.kLblUserDomainCom,
                                      text: $bookingNameViewModel.emailText)
                                .font(FontScheme.kUrbanistSemiBold(size: getRelativeHeight(14.0)))
                                .foregroundColor(ColorConstants.WhiteA700)
                                .padding()
                            Image("img_clock_cyan_600")
                                .resizable()
                                .frame(width: getRelativeWidth(15.0),
                                       height: getRelativeWidth(15.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .overlay(RoundedCorners()
                                    .stroke(ColorConstants.Cyan600, lineWidth: 1))
                                .background(RoundedCorners().fill(Color.clear.opacity(0.7)))
                                .padding(.vertical, getRelativeHeight(20.0))
                                .padding(.leading, getRelativeWidth(30.0))
                                .padding(.trailing, getRelativeWidth(22.0))
                            Spacer()
                        }
                        .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(56.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                                   bottomRight: 12.0)
                                .fill(ColorConstants.BlueGray900))
                        .padding(.top, getRelativeHeight(24.0))
                        HStack {
                            Spacer()
                            Image("img_television_gray_50")
                                .resizable()
                                .frame(width: getRelativeWidth(48.0),
                                       height: getRelativeHeight(18.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(19.0))
                                .padding(.leading, getRelativeWidth(20.0))
                                .padding(.trailing, getRelativeWidth(12.0))
                            TextField(StringConstants.kMsg1123456789000,
                                      text: $bookingNameViewModel.phoneText)
                                .font(FontScheme.kUrbanistSemiBold(size: getRelativeHeight(14.0)))
                                .foregroundColor(ColorConstants.WhiteA700)
                                .padding()
                        }
                        .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(56.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                                   bottomRight: 12.0)
                                .fill(ColorConstants.BlueGray900))
                        .padding(.vertical, getRelativeHeight(24.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(730.0),
                           alignment: .center)
                    Button(action: {
                        bookingNameViewModel.nextScreen = "ChoosePaymentMethodView"
                    }, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblContinue)
                                .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.bold)
                                .padding(.trailing, getRelativeWidth(156.0))
                                .padding(.leading, getRelativeWidth(30.0))
                                .padding(.vertical, getRelativeHeight(17.0))
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(380.0),
                                       height: getRelativeHeight(55.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 27.0, topRight: 27.0,
                                                           bottomLeft: 27.0, bottomRight: 27.0)
                                        .fill(ColorConstants.Cyan60001))
                                .shadow(color: ColorConstants.GreenA7003f, radius: 24, x: 4, y: 8)
                                .padding(.bottom, getRelativeHeight(48.0))
                                .padding(.horizontal, getRelativeWidth(24.0))
                        }
                    })
                    .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(55.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 27.0, topRight: 27.0, bottomLeft: 27.0,
                                               bottomRight: 27.0)
                            .fill(ColorConstants.Cyan60001))
                    .shadow(color: ColorConstants.GreenA7003f, radius: 24, x: 4, y: 8)
                    .padding(.bottom, getRelativeHeight(48.0))
                    .padding(.horizontal, getRelativeWidth(24.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.Gray900)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: ChoosePaymentMethodView(),
                                   tag: "ChoosePaymentMethodView",
                                   selection: $bookingNameViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.Gray900)
            .ignoresSafeArea()
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct BookingNameView_Previews: PreviewProvider {
    static var previews: some View {
        BookingNameView()
    }
}
