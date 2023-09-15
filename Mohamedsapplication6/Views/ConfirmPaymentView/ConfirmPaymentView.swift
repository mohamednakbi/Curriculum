import SwiftUI

struct ConfirmPaymentView: View {
    @StateObject var confirmPaymentViewModel = ConfirmPaymentViewModel()
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
                        Text(StringConstants.kLblPayment)
                            .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(24.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .padding(.leading, getRelativeWidth(16.0))
                        Image("img_qrcode")
                            .resizable()
                            .frame(width: getRelativeWidth(28.0), height: getRelativeWidth(28.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.horizontal, getRelativeWidth(24.0))
                    }
                    .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(52.0),
                           alignment: .leading)
                    VStack {
                        HStack {
                            Image("img_rectangle4_100x100_4")
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
                                HStack {
                                    Image("img_star_12x12")
                                        .resizable()
                                        .frame(width: getRelativeWidth(12.0),
                                               height: getRelativeWidth(12.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                    Text(StringConstants.kLbl48)
                                        .font(FontScheme
                                            .kUrbanistSemiBold(size: getRelativeHeight(14.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Cyan60001)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(19.0),
                                               height: getRelativeHeight(17.0),
                                               alignment: .topLeading)
                                        .padding(.leading, getRelativeWidth(4.0))
                                    Text(StringConstants.kLbl4378Reviews)
                                        .font(FontScheme
                                            .kUrbanistRegular(size: getRelativeHeight(12.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Gray300)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(80.0),
                                               height: getRelativeHeight(15.0),
                                               alignment: .topLeading)
                                        .padding(.leading, getRelativeWidth(8.0))
                                }
                                .frame(width: getRelativeWidth(123.0),
                                       height: getRelativeHeight(17.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(12.0))
                            }
                            .frame(width: getRelativeWidth(125.0), height: getRelativeHeight(80.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(10.0))
                            .padding(.bottom, getRelativeHeight(9.0))
                            .padding(.leading, getRelativeWidth(16.0))
                            Text("group2541")
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(56.0),
                                       height: getRelativeHeight(87.0))
                            VStack(alignment: .trailing, spacing: 0) {
                                Text(StringConstants.kLbl27)
                                    .font(FontScheme
                                        .kUrbanistRomanBold(size: getRelativeHeight(24.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.Cyan60001)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(42.0),
                                           height: getRelativeHeight(29.0), alignment: .topLeading)
                                Text(StringConstants.kLblNight)
                                    .font(FontScheme
                                        .kUrbanistRegular(size: getRelativeHeight(10.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Gray300)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(29.0),
                                           height: getRelativeHeight(12.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(5.0))
                                Image("img_bookmark_24x24")
                                    .resizable()
                                    .frame(width: getRelativeWidth(24.0),
                                           height: getRelativeWidth(24.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.top, getRelativeHeight(17.0))
                            }
                            .frame(width: getRelativeWidth(42.0), height: getRelativeHeight(87.0),
                                   alignment: .center)
                            .padding(.vertical, getRelativeHeight(6.0))
                        }
                        .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(140.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 16.0, topRight: 16.0, bottomLeft: 16.0,
                                                   bottomRight: 16.0)
                                .fill(ColorConstants.BlueGray900))
                        .shadow(color: ColorConstants.Black9000c, radius: 60, x: 0, y: 4)
                        VStack(spacing: 0) {
                            ScrollView(.vertical, showsIndicators: false) {
                                LazyVStack {
                                    ForEach(0 ... 1, id: \.self) { index in
                                        ColumncheckinCell()
                                    }
                                }
                            }
                        }
                        .frame(width: getRelativeWidth(380.0), alignment: .center)
                        .padding(.top, getRelativeHeight(28.0))
                        HStack {
                            Image("img_image_27x44_1")
                                .resizable()
                                .frame(width: getRelativeWidth(44.0),
                                       height: getRelativeHeight(27.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .background(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                                           bottomLeft: 4.0, bottomRight: 4.0))
                            Text(StringConstants.kMsg)
                                .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(18.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(129.0),
                                       height: getRelativeHeight(22.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(12.0))
                            Text("group2542")
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(80.0),
                                       height: getRelativeHeight(20.0))
                            Text(StringConstants.kLblChange)
                                .font(FontScheme.kUrbanistSemiBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Cyan60001)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(58.0),
                                       height: getRelativeHeight(20.0), alignment: .topLeading)
                                .padding(.trailing, getRelativeWidth(8.0))
                                .onTapGesture {
                                    confirmPaymentViewModel.nextScreen = "CardAddedView"
                                }
                        }
                        .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(80.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 16.0, topRight: 16.0, bottomLeft: 16.0,
                                                   bottomRight: 16.0)
                                .fill(ColorConstants.BlueGray900))
                        .shadow(color: ColorConstants.Black90014, radius: 60, x: 0, y: 4)
                        .padding(.vertical, getRelativeHeight(28.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(726.0),
                           alignment: .center)
                    Button(action: {
                        confirmPaymentViewModel.isPaymentSuccessfulViewShow = true
                    }, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblConfirmPayment)
                                .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.bold)
                                .padding(.trailing, getRelativeWidth(125.0))
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
                    NavigationLink(destination: CardAddedView(),
                                   tag: "CardAddedView",
                                   selection: $confirmPaymentViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.Gray900)
            .ignoresSafeArea()
            .customDialog(isShowing: $confirmPaymentViewModel.isPaymentSuccessfulViewShow) {
                PaymentSuccessfulView(paymentSuccessfulViewModel: PaymentSuccessfulViewModel(_isOpen: $confirmPaymentViewModel
                        .isPaymentSuccessfulViewShow))
            } onTapOutside: { value in
                if value {
                    confirmPaymentViewModel.isPaymentSuccessfulViewShow = false
                }
            }
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct ConfirmPaymentView_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmPaymentView()
    }
}
