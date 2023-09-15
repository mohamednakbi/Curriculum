import SwiftUI

struct NotificationSettingsView: View {
    @StateObject var notificationSettingsViewModel = NotificationSettingsViewModel()
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
                    Text(StringConstants.kLblNotifications)
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
                        Text(StringConstants.kMsgGeneralNotific)
                            .font(FontScheme.kUrbanistSemiBold(size: getRelativeHeight(18.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(167.0), height: getRelativeHeight(22.0),
                                   alignment: .topLeading)
                        Spacer()
                        Toggle("", isOn: $notificationSettingsViewModel.isStateenabledthe)
                            .toggleStyle(SwitchToggleStyle(tint: ColorConstants.WhiteA700))
                            .frame(width: getRelativeWidth(44.0), height: getRelativeHeight(24.0),
                                   alignment: .center)
                    }
                    .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(24.0),
                           alignment: .center)
                    HStack {
                        Text(StringConstants.kLblSound)
                            .font(FontScheme.kUrbanistSemiBold(size: getRelativeHeight(18.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(53.0), height: getRelativeHeight(22.0),
                                   alignment: .topLeading)
                        Spacer()
                        Toggle("", isOn: $notificationSettingsViewModel.isStatedisabled)
                            .toggleStyle(SwitchToggleStyle(tint: ColorConstants.WhiteA700))
                            .frame(width: getRelativeWidth(44.0), height: getRelativeHeight(24.0),
                                   alignment: .center)
                    }
                    .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(24.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(31.0))
                    HStack {
                        Text(StringConstants.kLblVibrate)
                            .font(FontScheme.kUrbanistSemiBold(size: getRelativeHeight(18.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(62.0), height: getRelativeHeight(22.0),
                                   alignment: .topLeading)
                        Spacer()
                        Toggle("", isOn: $notificationSettingsViewModel.isStatedisabledOne)
                            .toggleStyle(SwitchToggleStyle(tint: ColorConstants.WhiteA700))
                            .frame(width: getRelativeWidth(44.0), height: getRelativeHeight(24.0),
                                   alignment: .center)
                    }
                    .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(24.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(31.0))
                    HStack {
                        Text(StringConstants.kLblAppUpdates)
                            .font(FontScheme.kUrbanistSemiBold(size: getRelativeHeight(18.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(111.0), height: getRelativeHeight(22.0),
                                   alignment: .topLeading)
                        Spacer()
                        Toggle("", isOn: $notificationSettingsViewModel.isStateenabledtheOne)
                            .toggleStyle(SwitchToggleStyle(tint: ColorConstants.WhiteA700))
                            .frame(width: getRelativeWidth(44.0), height: getRelativeHeight(24.0),
                                   alignment: .top)
                    }
                    .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(25.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(31.0))
                    HStack {
                        Text(StringConstants.kMsgNewServiceAva)
                            .font(FontScheme.kUrbanistSemiBold(size: getRelativeHeight(18.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(188.0), height: getRelativeHeight(22.0),
                                   alignment: .topLeading)
                        Spacer()
                        Toggle("", isOn: $notificationSettingsViewModel.isStatedisabledTwo)
                            .toggleStyle(SwitchToggleStyle(tint: ColorConstants.WhiteA700))
                            .frame(width: getRelativeWidth(44.0), height: getRelativeHeight(24.0),
                                   alignment: .center)
                    }
                    .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(24.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(30.0))
                    HStack {
                        Text(StringConstants.kMsgNewTipsAvaila)
                            .font(FontScheme.kUrbanistSemiBold(size: getRelativeHeight(18.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(155.0), height: getRelativeHeight(22.0),
                                   alignment: .topLeading)
                        Spacer()
                        Toggle("", isOn: $notificationSettingsViewModel.isStatedisabledThree)
                            .toggleStyle(SwitchToggleStyle(tint: ColorConstants.WhiteA700))
                            .frame(width: getRelativeWidth(44.0), height: getRelativeHeight(24.0),
                                   alignment: .top)
                    }
                    .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(25.0),
                           alignment: .center)
                    .padding(.vertical, getRelativeHeight(31.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(833.0),
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

struct NotificationSettingsView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationSettingsView()
    }
}
