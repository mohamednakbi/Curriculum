import SwiftUI

struct ForgotPasswordFilledTypeView: View {
    @StateObject var forgotPasswordFilledTypeViewModel = ForgotPasswordFilledTypeViewModel()
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
                        Text(StringConstants.kLblForgotPassword)
                            .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(24.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .padding(.leading, getRelativeWidth(16.0))
                    }
                    .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(52.0),
                           alignment: .leading)
                    VStack {
                        Text(StringConstants.kMsgCodeHasBeenS)
                            .font(FontScheme.kUrbanistRegular(size: getRelativeHeight(16.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(259.0), height: getRelativeHeight(20.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(19.0))
                        OTPView(text: $forgotPasswordFilledTypeViewModel.otpviewOTP1, width: 360.0,
                                height: 61.0,
                                fieldsCount: 4, displayType: .roundedCorner,
                                defaultBackgroundColor: ColorConstants.BlueGray900,
                                filledBackgroundColor: ColorConstants.BlueGray900,
                                defaultBorderColor: ColorConstants.Gray800,
                                filledBorderColor: ColorConstants.Gray800,
                                fieldFont: UIFont(name: "UrbanistRoman-Bold", size: 24) ?? UIFont
                                    .systemFont(ofSize: 24),
                                textColor: ColorConstants.WhiteA700)
                            .frame(width: 360.0, height: 61.0)
                        Text(StringConstants.kMsgResendCodeIn)
                            .font(FontScheme.kUrbanistRegular(size: getRelativeHeight(16.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(141.0), height: getRelativeHeight(20.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(61.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(726.0),
                           alignment: .center)
                    Button(action: {
                        forgotPasswordFilledTypeViewModel.nextScreen = "CreateNewPasswordView"
                    }, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblVerify)
                                .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.bold)
                                .padding(.horizontal, getRelativeWidth(16.0))
                                .padding(.vertical, getRelativeHeight(18.0))
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
                    NavigationLink(destination: CreateNewPasswordView(),
                                   tag: "CreateNewPasswordView",
                                   selection: $forgotPasswordFilledTypeViewModel.nextScreen,
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

struct ForgotPasswordFilledTypeView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordFilledTypeView()
    }
}
