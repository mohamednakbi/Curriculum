import SwiftUI

struct SignUpBlankView: View {
    @StateObject var signUpBlankViewModel = SignUpBlankViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    Image("img_arrowleft")
                        .resizable()
                        .frame(width: getRelativeWidth(28.0), height: getRelativeWidth(28.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .onTapGesture {
                            self.presentationMode.wrappedValue.dismiss()
                        }
                    Text(StringConstants.kMsgCreateYourAcc)
                        .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(48.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.WhiteA700)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(263.0), height: getRelativeHeight(111.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(93.0))
                    HStack {
                        Spacer()
                        Image("img_checkmark")
                            .resizable()
                            .frame(width: getRelativeWidth(20.0), height: getRelativeWidth(20.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.vertical, getRelativeHeight(20.0))
                            .padding(.leading, getRelativeWidth(20.0))
                            .padding(.trailing, getRelativeWidth(12.0))
                        TextField(StringConstants.kLblEmail, text: $signUpBlankViewModel.emailText)
                            .font(FontScheme.kUrbanistRegular(size: getRelativeHeight(14.0)))
                            .foregroundColor(ColorConstants.Gray500)
                            .padding()
                    }
                    .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(60.0),
                           alignment: .leading)
                    .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                               bottomRight: 12.0)
                            .fill(ColorConstants.BlueGray900))
                    .padding(.top, getRelativeHeight(60.0))
                    HStack {
                        Spacer()
                        Image("img_lock")
                            .resizable()
                            .frame(width: getRelativeWidth(20.0), height: getRelativeWidth(20.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.vertical, getRelativeHeight(20.0))
                            .padding(.leading, getRelativeWidth(20.0))
                            .padding(.trailing, getRelativeWidth(12.0))
                        SecureField(StringConstants.kLblPassword,
                                    text: $signUpBlankViewModel.passwordText)
                            .font(FontScheme.kUrbanistRegular(size: getRelativeHeight(14.0)))
                            .foregroundColor(ColorConstants.Gray500)
                            .padding()
                        Image("img_dashboard")
                            .resizable()
                            .frame(width: getRelativeWidth(20.0), height: getRelativeWidth(20.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.vertical, getRelativeHeight(20.0))
                            .padding(.leading, getRelativeWidth(30.0))
                            .padding(.trailing, getRelativeWidth(20.0))
                        Spacer()
                    }
                    .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(60.0),
                           alignment: .leading)
                    .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                               bottomRight: 12.0)
                            .fill(ColorConstants.BlueGray900))
                    .padding(.top, getRelativeHeight(20.0))
                    CheckboxField(idValue: StringConstants.kLblRememberMe,
                                  label: StringConstants.kLblRememberMe,
                                  color: Color.blue,
                                  isMarked: $signUpBlankViewModel.uncheckedCheckbox)
                        .minimumScaleFactor(0.5)
                        .frame(width: getRelativeWidth(131.0), height: getRelativeHeight(24.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(20.0))
                    Button(action: {
                        signUpBlankViewModel.nextScreen = "FillProfileView"
                    }, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblSignUp)
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
                                        .fill(ColorConstants.Cyan600))
                                .padding(.top, getRelativeHeight(20.0))
                        }
                    })
                    .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(55.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 27.0, topRight: 27.0, bottomLeft: 27.0,
                                               bottomRight: 27.0)
                            .fill(ColorConstants.Cyan600))
                    .padding(.top, getRelativeHeight(20.0))
                    HStack {
                        Divider()
                            .frame(width: getRelativeWidth(96.0), height: getRelativeHeight(1.0),
                                   alignment: .bottom)
                            .background(ColorConstants.Gray800)
                            .padding(.top, getRelativeHeight(11.0))
                            .padding(.bottom, getRelativeHeight(9.0))
                        Spacer()
                        Text(StringConstants.kMsgOrContinueWit)
                            .font(FontScheme.kUrbanistSemiBold(size: getRelativeHeight(18.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.Gray100)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(136.0), height: getRelativeHeight(22.0),
                                   alignment: .topLeading)
                        Spacer()
                        Divider()
                            .frame(width: getRelativeWidth(96.0), height: getRelativeHeight(1.0),
                                   alignment: .bottom)
                            .background(ColorConstants.Gray800)
                            .padding(.top, getRelativeHeight(11.0))
                            .padding(.bottom, getRelativeHeight(9.0))
                    }
                    .frame(width: getRelativeWidth(360.0), height: getRelativeHeight(22.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(74.0))
                    .padding(.horizontal, getRelativeWidth(10.0))
                    HStack {
                        ZStack {
                            Image("img_facebook")
                                .resizable()
                                .frame(width: getRelativeWidth(24.0),
                                       height: getRelativeWidth(24.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(18.0))
                                .padding(.horizontal, getRelativeWidth(32.5))
                                .onTapGesture {
                                    signUpBlankViewModel.facebookSignIn()
                                }
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(88.0), height: getRelativeHeight(60.0),
                               alignment: .center)
                        .overlay(RoundedCorners(topLeft: 16.0, topRight: 16.0, bottomLeft: 16.0,
                                                bottomRight: 16.0)
                                .stroke(ColorConstants.Gray800,
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 16.0, topRight: 16.0, bottomLeft: 16.0,
                                                   bottomRight: 16.0)
                                .fill(ColorConstants.BlueGray900))
                        ZStack {
                            Image("img_google_24x24")
                                .resizable()
                                .frame(width: getRelativeWidth(24.0),
                                       height: getRelativeWidth(24.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(18.0))
                                .padding(.horizontal, getRelativeWidth(31.5))
                                .onTapGesture {
                                    signUpBlankViewModel.googleSignIn()
                                }
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(87.0), height: getRelativeHeight(60.0),
                               alignment: .center)
                        .overlay(RoundedCorners(topLeft: 16.0, topRight: 16.0, bottomLeft: 16.0,
                                                bottomRight: 16.0)
                                .stroke(ColorConstants.Gray800,
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 16.0, topRight: 16.0, bottomLeft: 16.0,
                                                   bottomRight: 16.0)
                                .fill(ColorConstants.BlueGray900))
                        .padding(.leading, getRelativeWidth(20.0))
                        ZStack {
                            Image("img_autolayouthorizontal")
                                .resizable()
                                .frame(width: getRelativeWidth(24.0),
                                       height: getRelativeWidth(24.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(18.0))
                                .padding(.horizontal, getRelativeWidth(32.0))
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(88.0), height: getRelativeHeight(60.0),
                               alignment: .center)
                        .overlay(RoundedCorners(topLeft: 16.0, topRight: 16.0, bottomLeft: 16.0,
                                                bottomRight: 16.0)
                                .stroke(ColorConstants.Gray800,
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 16.0, topRight: 16.0, bottomLeft: 16.0,
                                                   bottomRight: 16.0)
                                .fill(ColorConstants.BlueGray900))
                        .padding(.leading, getRelativeWidth(20.0))
                    }
                    .frame(width: getRelativeWidth(303.0), height: getRelativeHeight(60.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(31.0))
                    .padding(.horizontal, getRelativeWidth(38.0))
                    HStack {
                        Text(StringConstants.kMsgAlreadyHaveAn)
                            .font(FontScheme.kUrbanistRegular(size: getRelativeHeight(14.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Gray100)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(168.0), height: getRelativeHeight(17.0),
                                   alignment: .topLeading)
                        Spacer()
                        Text(StringConstants.kLblSignIn)
                            .font(FontScheme.kUrbanistSemiBold(size: getRelativeHeight(14.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.Cyan60001)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(45.0), height: getRelativeHeight(17.0),
                                   alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(8.0))
                    }
                    .frame(width: getRelativeWidth(221.0), height: getRelativeHeight(17.0),
                           alignment: .center)
                    .padding(.vertical, getRelativeHeight(66.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.Gray900)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: FillProfileView(),
                                   tag: "FillProfileView",
                                   selection: $signUpBlankViewModel.nextScreen,
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

struct SignUpBlankView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpBlankView()
    }
}
