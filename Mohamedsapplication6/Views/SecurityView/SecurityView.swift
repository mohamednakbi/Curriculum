import SwiftUI

struct SecurityView: View {
    @StateObject var securityViewModel = SecurityViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
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
                    Text(StringConstants.kLblSecurity)
                        .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(24.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.WhiteA700)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .padding(.leading, getRelativeWidth(16.0))
                }
                .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(51.0),
                       alignment: .leading)
                VStack {
                    HStack {
                        Text(StringConstants.kLblFaceId)
                            .font(FontScheme.kUrbanistSemiBold(size: getRelativeHeight(18.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(60.0), height: getRelativeHeight(22.0),
                                   alignment: .topLeading)
                        Spacer()
                        Toggle("", isOn: $securityViewModel.isStatedisabled)
                            .toggleStyle(SwitchToggleStyle(tint: ColorConstants.WhiteA700))
                            .frame(width: getRelativeWidth(44.0), height: getRelativeHeight(24.0),
                                   alignment: .center)
                    }
                    .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(24.0),
                           alignment: .center)
                    HStack {
                        Text(StringConstants.kLblRememberMe)
                            .font(FontScheme.kUrbanistSemiBold(size: getRelativeHeight(18.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(120.0), height: getRelativeHeight(22.0),
                                   alignment: .topLeading)
                        Spacer()
                        Toggle("", isOn: $securityViewModel.isStateenabledthe)
                            .toggleStyle(SwitchToggleStyle(tint: ColorConstants.WhiteA700))
                            .frame(width: getRelativeWidth(44.0), height: getRelativeHeight(24.0),
                                   alignment: .center)
                    }
                    .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(24.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(31.0))
                    HStack {
                        Text(StringConstants.kLblTouchId)
                            .font(FontScheme.kUrbanistSemiBold(size: getRelativeHeight(18.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(72.0), height: getRelativeHeight(22.0),
                                   alignment: .topLeading)
                        Spacer()
                        Toggle("", isOn: $securityViewModel.isStateenabledtheOne)
                            .toggleStyle(SwitchToggleStyle(tint: ColorConstants.WhiteA700))
                            .frame(width: getRelativeWidth(44.0), height: getRelativeHeight(24.0),
                                   alignment: .center)
                    }
                    .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(24.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(31.0))
                    HStack {
                        Text(StringConstants.kMsgGoogleAuthenti)
                            .font(FontScheme.kUrbanistSemiBold(size: getRelativeHeight(18.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(179.0), height: getRelativeHeight(22.0),
                                   alignment: .topLeading)
                        Spacer()
                        Image("img_arrowdown_cyan_600_01")
                            .resizable()
                            .frame(width: getRelativeWidth(20.0), height: getRelativeWidth(20.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                    }
                    .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(23.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(33.0))
                    Button(action: {}, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblChangePassword)
                                .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.bold)
                                .padding(.trailing, getRelativeWidth(123.0))
                                .padding(.leading, getRelativeWidth(30.0))
                                .padding(.vertical, getRelativeHeight(17.0))
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(380.0),
                                       height: getRelativeHeight(55.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 27.0, topRight: 27.0,
                                                           bottomLeft: 27.0, bottomRight: 27.0)
                                        .fill(ColorConstants.Gray800))
                                .padding(.vertical, getRelativeHeight(49.0))
                        }
                    })
                    .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(55.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 27.0, topRight: 27.0, bottomLeft: 27.0,
                                               bottomRight: 27.0)
                            .fill(ColorConstants.Gray800))
                    .padding(.vertical, getRelativeHeight(49.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(830.0),
                       alignment: .center)
            }
            .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
            .background(ColorConstants.Gray900)
            .padding(.top, getRelativeHeight(30.0))
            .padding(.bottom, getRelativeHeight(10.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(ColorConstants.Gray900)
        .ignoresSafeArea()
        .hideNavigationBar()
    }
}

struct SecurityView_Previews: PreviewProvider {
    static var previews: some View {
        SecurityView()
    }
}
