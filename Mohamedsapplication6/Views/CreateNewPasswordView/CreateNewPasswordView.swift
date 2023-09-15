import SwiftUI

struct CreateNewPasswordView: View {
    @StateObject var createNewPasswordViewModel = CreateNewPasswordViewModel()
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
                VStack(alignment: .leading, spacing: 0) {
                    Image("img_image_300x300")
                        .resizable()
                        .frame(width: getRelativeWidth(300.0), height: getRelativeWidth(300.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.top, getRelativeHeight(19.0))
                    Text(StringConstants.kMsgCreateYourNew)
                        .font(FontScheme.kUrbanistRegular(size: getRelativeHeight(16.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.WhiteA700)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(197.0), height: getRelativeHeight(20.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(57.0))
                    HStack {
                        Spacer()
                        Image("img_lock_20x20")
                            .resizable()
                            .frame(width: getRelativeWidth(20.0), height: getRelativeWidth(20.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.vertical, getRelativeHeight(20.0))
                            .padding(.leading, getRelativeWidth(20.0))
                            .padding(.trailing, getRelativeWidth(12.0))
                        TextField(StringConstants.kLbl3,
                                  text: $createNewPasswordViewModel.confirmpasswordinputText)
                            .font(FontScheme.kUrbanistSemiBold(size: getRelativeHeight(14.0)))
                            .foregroundColor(ColorConstants.WhiteA700)
                            .padding()
                        Image("img_dashboard_20x20")
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
                    .padding(.top, getRelativeHeight(24.0))
                    HStack {
                        Spacer()
                        Image("img_lock_20x20")
                            .resizable()
                            .frame(width: getRelativeWidth(20.0), height: getRelativeWidth(20.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.vertical, getRelativeHeight(20.0))
                            .padding(.leading, getRelativeWidth(20.0))
                            .padding(.trailing, getRelativeWidth(12.0))
                        TextField(StringConstants.kLbl3,
                                  text: $createNewPasswordViewModel.confirmpasswordinputoneText)
                            .font(FontScheme.kUrbanistSemiBold(size: getRelativeHeight(14.0)))
                            .foregroundColor(ColorConstants.WhiteA700)
                            .padding()
                        Image("img_dashboard_20x20")
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
                    .padding(.top, getRelativeHeight(24.0))
                    CheckboxField(idValue: StringConstants.kLblRememberMe,
                                  label: StringConstants.kLblRememberMe,
                                  color: Color.blue,
                                  isMarked: $createNewPasswordViewModel.checkedCheckbox)
                        .minimumScaleFactor(0.5)
                        .frame(width: getRelativeWidth(131.0), height: getRelativeHeight(24.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(24.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(726.0),
                       alignment: .center)
                Button(action: {
                    createNewPasswordViewModel.isResetPasswordSuccessfulViewShow = true
                }, label: {
                    HStack(spacing: 0) {
                        Text(StringConstants.kLblContinue)
                            .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(16.0)))
                            .fontWeight(.bold)
                            .padding(.horizontal, getRelativeWidth(16.0))
                            .padding(.vertical, getRelativeHeight(18.0))
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.center)
                            .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(55.0),
                                   alignment: .center)
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
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(ColorConstants.Gray900)
        .ignoresSafeArea()
        .customDialog(isShowing: $createNewPasswordViewModel.isResetPasswordSuccessfulViewShow) {
            ResetPasswordSuccessfulView(resetPasswordSuccessfulViewModel: ResetPasswordSuccessfulViewModel(_isOpen: $createNewPasswordViewModel
                    .isResetPasswordSuccessfulViewShow))
        } onTapOutside: { value in
            if value {
                createNewPasswordViewModel.isResetPasswordSuccessfulViewShow = false
            }
        }
        .hideNavigationBar()
    }
}

struct CreateNewPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        CreateNewPasswordView()
    }
}
