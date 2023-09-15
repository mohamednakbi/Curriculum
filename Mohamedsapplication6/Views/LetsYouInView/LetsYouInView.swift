import SwiftUI

struct LetsYouInView: View {
    @StateObject var letsYouInViewModel = LetsYouInViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    Image("img_arrowleft")
                        .resizable()
                        .frame(width: getRelativeWidth(28.0), height: getRelativeWidth(28.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .onTapGesture {
                            self.presentationMode.wrappedValue.dismiss()
                        }
                    Text("group2558")
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(243.0), height: getRelativeHeight(135.0))
                    Text(StringConstants.kLblLetSYouIn)
                        .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(48.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.WhiteA700)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(243.0), height: getRelativeHeight(58.0),
                               alignment: .topLeading)
                    Button(action: {
                        letsYouInViewModel.facebookSignIn()
                    }, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kMsgContinueWithF)
                                .font(FontScheme.kUrbanistSemiBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.semibold)
                                .padding(.trailing, getRelativeWidth(84.0))
                                .padding(.vertical, getRelativeHeight(20.0))
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(380.0),
                                       height: getRelativeHeight(60.0), alignment: .leading)
                                .overlay(RoundedCorners(topLeft: 16.0, topRight: 16.0,
                                                        bottomLeft: 16.0, bottomRight: 16.0)
                                        .stroke(ColorConstants.Gray800,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 16.0, topRight: 16.0,
                                                           bottomLeft: 16.0, bottomRight: 16.0)
                                        .fill(ColorConstants.BlueGray900))
                                .padding(.top, getRelativeHeight(90.0))
                        }
                    })
                    .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(60.0),
                           alignment: .leading)
                    .overlay(RoundedCorners(topLeft: 16.0, topRight: 16.0, bottomLeft: 16.0,
                                            bottomRight: 16.0)
                            .stroke(ColorConstants.Gray800,
                                    lineWidth: 1))
                    .background(RoundedCorners(topLeft: 16.0, topRight: 16.0, bottomLeft: 16.0,
                                               bottomRight: 16.0)
                            .fill(ColorConstants.BlueGray900))
                    .padding(.top, getRelativeHeight(90.0))
                    Button(action: {
                        letsYouInViewModel.googleSignIn()
                    }, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kMsgContinueWithG)
                                .font(FontScheme.kUrbanistSemiBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.semibold)
                                .padding(.trailing, getRelativeWidth(93.0))
                                .padding(.vertical, getRelativeHeight(20.0))
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(380.0),
                                       height: getRelativeHeight(60.0), alignment: .leading)
                                .overlay(RoundedCorners(topLeft: 16.0, topRight: 16.0,
                                                        bottomLeft: 16.0, bottomRight: 16.0)
                                        .stroke(ColorConstants.Gray800,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 16.0, topRight: 16.0,
                                                           bottomLeft: 16.0, bottomRight: 16.0)
                                        .fill(ColorConstants.BlueGray900))
                                .padding(.top, getRelativeHeight(16.0))
                        }
                    })
                    .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(60.0),
                           alignment: .leading)
                    .overlay(RoundedCorners(topLeft: 16.0, topRight: 16.0, bottomLeft: 16.0,
                                            bottomRight: 16.0)
                            .stroke(ColorConstants.Gray800,
                                    lineWidth: 1))
                    .background(RoundedCorners(topLeft: 16.0, topRight: 16.0, bottomLeft: 16.0,
                                               bottomRight: 16.0)
                            .fill(ColorConstants.BlueGray900))
                    .padding(.top, getRelativeHeight(16.0))
                    Button(action: {}, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kMsgContinueWithA)
                                .font(FontScheme.kUrbanistSemiBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.semibold)
                                .padding(.trailing, getRelativeWidth(97.0))
                                .padding(.vertical, getRelativeHeight(20.0))
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(380.0),
                                       height: getRelativeHeight(60.0), alignment: .leading)
                                .overlay(RoundedCorners(topLeft: 16.0, topRight: 16.0,
                                                        bottomLeft: 16.0, bottomRight: 16.0)
                                        .stroke(ColorConstants.Gray800,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 16.0, topRight: 16.0,
                                                           bottomLeft: 16.0, bottomRight: 16.0)
                                        .fill(ColorConstants.BlueGray900))
                                .padding(.top, getRelativeHeight(16.0))
                        }
                    })
                    .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(60.0),
                           alignment: .leading)
                    .overlay(RoundedCorners(topLeft: 16.0, topRight: 16.0, bottomLeft: 16.0,
                                            bottomRight: 16.0)
                            .stroke(ColorConstants.Gray800,
                                    lineWidth: 1))
                    .background(RoundedCorners(topLeft: 16.0, topRight: 16.0, bottomLeft: 16.0,
                                               bottomRight: 16.0)
                            .fill(ColorConstants.BlueGray900))
                    .padding(.top, getRelativeHeight(16.0))
                    Image("img_group16")
                        .resizable()
                        .frame(width: getRelativeWidth(360.0), height: getRelativeHeight(9.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.top, getRelativeHeight(58.0))
                    Button(action: {
                        letsYouInViewModel.nextScreen = "SignInView"
                    }, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kMsgSignInWithPa)
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
                                .padding(.top, getRelativeHeight(57.0))
                        }
                    })
                    .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(55.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 27.0, topRight: 27.0, bottomLeft: 27.0,
                                               bottomRight: 27.0)
                            .fill(ColorConstants.Cyan60001))
                    .shadow(color: ColorConstants.GreenA7003f, radius: 24, x: 4, y: 8)
                    .padding(.top, getRelativeHeight(57.0))
                    HStack {
                        Text(StringConstants.kMsgDonTHaveAnA)
                            .font(FontScheme.kUrbanistRegular(size: getRelativeHeight(14.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Gray100)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(151.0), height: getRelativeHeight(17.0),
                                   alignment: .topLeading)
                        Spacer()
                        Text(StringConstants.kLblSignUp)
                            .font(FontScheme.kUrbanistSemiBold(size: getRelativeHeight(14.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.Cyan60001)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(51.0), height: getRelativeHeight(17.0),
                                   alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(8.0))
                            .onTapGesture {
                                letsYouInViewModel.nextScreen = "SignUpBlankView"
                            }
                    }
                    .frame(width: getRelativeWidth(210.0), height: getRelativeHeight(18.0),
                           alignment: .center)
                    .padding(.vertical, getRelativeHeight(100.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.Gray900)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: SignInView(),
                                   tag: "SignInView",
                                   selection: $letsYouInViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: SignUpBlankView(),
                                   tag: "SignUpBlankView",
                                   selection: $letsYouInViewModel.nextScreen,
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

struct LetsYouInView_Previews: PreviewProvider {
    static var previews: some View {
        LetsYouInView()
    }
}
