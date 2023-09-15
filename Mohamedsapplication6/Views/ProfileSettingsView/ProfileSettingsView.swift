import SwiftUI

struct ProfileSettingsView: View {
    @StateObject var profileSettingsViewModel = ProfileSettingsViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        ZStack(alignment: .bottom) {
            NavigationView {
                VStack {
                    VStack {
                        HStack {
                            Image("img_google")
                                .resizable()
                                .frame(width: getRelativeWidth(32.0),
                                       height: getRelativeWidth(32.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.leading, getRelativeWidth(24.0))
                                .onTapGesture {}
                            Text(StringConstants.kLblProfile)
                                .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(24.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .padding(.leading, getRelativeWidth(16.0))
                            Image("img_clock")
                                .resizable()
                                .frame(width: getRelativeWidth(28.0),
                                       height: getRelativeWidth(28.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.horizontal, getRelativeWidth(24.0))
                        }
                        .frame(width: UIScreen.main.bounds.width - 20,
                               height: getRelativeHeight(50.0), alignment: .leading)
                        VStack(alignment: .leading, spacing: 0) {
                            Group {
                                ZStack(alignment: .bottomTrailing) {
                                    Image("img_ellipse_120x120_1")
                                        .resizable()
                                        .frame(width: getRelativeWidth(120.0),
                                               height: getRelativeWidth(120.0), alignment: .center)
                                        .scaledToFit()
                                        .clipShape(Circle())
                                        .clipShape(Circle())
                                    Image("img_edit")
                                        .resizable()
                                        .frame(width: getRelativeWidth(30.0),
                                               height: getRelativeWidth(30.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.top, getRelativeHeight(90.0))
                                        .padding(.leading, getRelativeWidth(90.0))
                                }
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(120.0),
                                       height: getRelativeWidth(120.0), alignment: .center)
                                Text(StringConstants.kLblDanielAustin)
                                    .font(FontScheme
                                        .kUrbanistRomanBold(size: getRelativeHeight(24.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(142.0),
                                           height: getRelativeHeight(29.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(11.0))
                                Text(StringConstants.kLblUderDomainCom)
                                    .font(FontScheme
                                        .kUrbanistSemiBold(size: getRelativeHeight(14.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(122.0),
                                           height: getRelativeHeight(17.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(10.0))
                                HStack {
                                    Image("img_user_28x28")
                                        .resizable()
                                        .frame(width: getRelativeWidth(28.0),
                                               height: getRelativeWidth(28.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                    Text(StringConstants.kLblEditProfile)
                                        .font(FontScheme
                                            .kUrbanistSemiBold(size: getRelativeHeight(18.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(88.0),
                                               height: getRelativeHeight(22.0),
                                               alignment: .topLeading)
                                        .padding(.leading, getRelativeWidth(20.0))
                                }
                                .onTapGesture {
                                    profileSettingsViewModel.nextScreen = "EditProfileView"
                                }
                                .frame(width: getRelativeWidth(136.0),
                                       height: getRelativeHeight(28.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(60.0))
                                HStack {
                                    Image("img_computer_28x28")
                                        .resizable()
                                        .frame(width: getRelativeWidth(28.0),
                                               height: getRelativeWidth(28.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                    Text(StringConstants.kLblPayment)
                                        .font(FontScheme
                                            .kUrbanistSemiBold(size: getRelativeHeight(18.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(73.0),
                                               height: getRelativeHeight(22.0),
                                               alignment: .topLeading)
                                        .padding(.leading, getRelativeWidth(20.0))
                                }
                                .frame(width: getRelativeWidth(121.0),
                                       height: getRelativeHeight(28.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(30.0))
                                HStack {
                                    Image("img_alarm")
                                        .resizable()
                                        .frame(width: getRelativeWidth(28.0),
                                               height: getRelativeWidth(28.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                    Text(StringConstants.kLblNotifications)
                                        .font(FontScheme
                                            .kUrbanistSemiBold(size: getRelativeHeight(18.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(102.0),
                                               height: getRelativeHeight(22.0),
                                               alignment: .topLeading)
                                        .padding(.leading, getRelativeWidth(20.0))
                                }
                                .onTapGesture {
                                    profileSettingsViewModel.nextScreen = "NotificationSettingsView"
                                }
                                .frame(width: getRelativeWidth(150.0),
                                       height: getRelativeHeight(28.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(30.0))
                                HStack {
                                    Image("img_checkmark_28x28")
                                        .resizable()
                                        .frame(width: getRelativeWidth(28.0),
                                               height: getRelativeWidth(28.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                    Text(StringConstants.kLblSecurity)
                                        .font(FontScheme
                                            .kUrbanistSemiBold(size: getRelativeHeight(18.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(68.0),
                                               height: getRelativeHeight(22.0),
                                               alignment: .topLeading)
                                        .padding(.leading, getRelativeWidth(20.0))
                                }
                                .onTapGesture {
                                    profileSettingsViewModel.nextScreen = "SecurityView"
                                }
                                .frame(width: getRelativeWidth(116.0),
                                       height: getRelativeHeight(28.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(30.0))
                                HStack {
                                    Image("img_info")
                                        .resizable()
                                        .frame(width: getRelativeWidth(28.0),
                                               height: getRelativeWidth(28.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                    Text(StringConstants.kLblHelp)
                                        .font(FontScheme
                                            .kUrbanistSemiBold(size: getRelativeHeight(18.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(37.0),
                                               height: getRelativeHeight(22.0),
                                               alignment: .topLeading)
                                        .padding(.leading, getRelativeWidth(20.0))
                                }
                                .frame(width: getRelativeWidth(85.0),
                                       height: getRelativeHeight(28.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(30.0))
                            }
                            Group {
                                HStack {
                                    Image("img_eye")
                                        .resizable()
                                        .frame(width: getRelativeWidth(28.0),
                                               height: getRelativeWidth(28.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                    Text(StringConstants.kLblDarkTheme)
                                        .font(FontScheme
                                            .kUrbanistSemiBold(size: getRelativeHeight(18.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(102.0),
                                               height: getRelativeHeight(22.0),
                                               alignment: .topLeading)
                                        .padding(.leading, getRelativeWidth(20.0))
                                    Text("group2597")
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(186.0),
                                               height: getRelativeHeight(24.0))
                                    Toggle("", isOn: $profileSettingsViewModel.isStateenabledthe)
                                        .toggleStyle(SwitchToggleStyle(tint: ColorConstants
                                                .WhiteA700))
                                        .frame(width: getRelativeWidth(44.0),
                                               height: getRelativeHeight(24.0), alignment: .center)
                                }
                                .frame(width: getRelativeWidth(380.0),
                                       height: getRelativeHeight(28.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(30.0))
                                HStack {
                                    Image("img_refresh")
                                        .resizable()
                                        .frame(width: getRelativeWidth(28.0),
                                               height: getRelativeWidth(28.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                    Text(StringConstants.kLblLogout)
                                        .font(FontScheme
                                            .kUrbanistSemiBold(size: getRelativeHeight(18.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.RedA200)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(56.0),
                                               height: getRelativeHeight(22.0),
                                               alignment: .topLeading)
                                        .padding(.leading, getRelativeWidth(20.0))
                                }
                                .onTapGesture {
                                    profileSettingsViewModel.isLogoutViewShow = true
                                }
                                .frame(width: getRelativeWidth(104.0),
                                       height: getRelativeHeight(28.0), alignment: .leading)
                                .padding(.vertical, getRelativeHeight(30.0))
                            }
                        }
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(742.0),
                               alignment: .center)
                    }
                    .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                    .background(ColorConstants.Gray900)
                    .padding(.top, getRelativeHeight(30.0))
                    .padding(.bottom, getRelativeHeight(10.0))
                    Group {
                        NavigationLink(destination: EditProfileView(),
                                       tag: "EditProfileView",
                                       selection: $profileSettingsViewModel.nextScreen,
                                       label: {
                                           EmptyView()
                                       })
                        NavigationLink(destination: NotificationSettingsView(),
                                       tag: "NotificationSettingsView",
                                       selection: $profileSettingsViewModel.nextScreen,
                                       label: {
                                           EmptyView()
                                       })
                        NavigationLink(destination: SecurityView(),
                                       tag: "SecurityView",
                                       selection: $profileSettingsViewModel.nextScreen,
                                       label: {
                                           EmptyView()
                                       })
                    }
                }
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                .background(ColorConstants.Gray900)
                .ignoresSafeArea()
            }
            .hideNavigationBar()
            if profileSettingsViewModel.isLogoutViewShow {
                BottomSheetView(isOpen: $profileSettingsViewModel.isLogoutViewShow, content: {
                    LogoutView(logoutViewModel: LogoutViewModel(_isOpen: $profileSettingsViewModel
                            .isLogoutViewShow))
                }).frame(width: UIScreen.main.bounds.width)
            }
        }
        .hideNavigationBar()
    }
}

struct ProfileSettingsView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSettingsView()
    }
}
