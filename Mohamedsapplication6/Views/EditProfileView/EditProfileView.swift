import SwiftUI

struct EditProfileView: View {
    @StateObject var editProfileViewModel = EditProfileViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        ZStack {
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
                        Text(StringConstants.kLblEditProfile)
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
                            TextField(StringConstants.kLblDanielAustin,
                                      text: editProfileViewModel.fetchMeResponse?.data.name ?? "")
                                .font(FontScheme.kUrbanistSemiBold(size: getRelativeHeight(14.0)))
                                .foregroundColor(ColorConstants.WhiteA700)
                                .padding()
                        }
                        .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(56.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                                   bottomRight: 12.0)
                                .fill(ColorConstants.BlueGray900))
                        HStack {
                            TextField(StringConstants.kLblDaniel,
                                      text: editProfileViewModel.fetchMeResponse?.data
                                          .username ?? "")
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
                                      text: $editProfileViewModel.dobText)
                                .font(FontScheme.kUrbanistSemiBold(size: getRelativeHeight(14.0)))
                                .foregroundColor(ColorConstants.WhiteA700)
                                .padding()
                            Image("img_calendar_20x20")
                                .resizable()
                                .frame(width: getRelativeWidth(20.0),
                                       height: getRelativeWidth(20.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(18.0))
                                .padding(.leading, getRelativeWidth(30.0))
                                .padding(.trailing, getRelativeWidth(20.0))
                            Spacer()
                        }
                        .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(56.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                                   bottomRight: 12.0)
                                .fill(ColorConstants.BlueGray900))
                        .padding(.top, getRelativeHeight(24.0))
                        HStack {
                            TextField(StringConstants.kLblUderDomainCom,
                                      text: editProfileViewModel.fetchMeResponse?.data.email ?? "")
                                .font(FontScheme.kUrbanistSemiBold(size: getRelativeHeight(14.0)))
                                .foregroundColor(ColorConstants.WhiteA700)
                                .padding()
                            Image("img_clock_20x20")
                                .resizable()
                                .frame(width: getRelativeWidth(20.0),
                                       height: getRelativeWidth(20.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(18.0))
                                .padding(.leading, getRelativeWidth(30.0))
                                .padding(.trailing, getRelativeWidth(20.0))
                            Spacer()
                        }
                        .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(56.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                                   bottomRight: 12.0)
                                .fill(ColorConstants.BlueGray900))
                        .padding(.top, getRelativeHeight(24.0))
                        Picker(StringConstants.kLblUnitedStates,
                               selection: $editProfileViewModel.countryPicker1) {
                            ForEach(editProfileViewModel.countryPicker1Values,
                                    id: \.self) { value in
                                Text(value)
                            }
                        }
                        .foregroundColor(ColorConstants.WhiteA700)
                        .font(.system(size: getRelativeHeight(14)))
                        .pickerStyle(MenuPickerStyle())
                        Text("phone")
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(56.0),
                                   alignment: .center)
                            .background(ColorConstants.BlueGray900)
                            .padding(.top, getRelativeHeight(24.0))
                        Picker(StringConstants.kLblMale,
                               selection: $editProfileViewModel.genderPicker1) {
                            ForEach(editProfileViewModel.genderPicker1Values, id: \.self) { value in
                                Text(value)
                            }
                        }
                        .foregroundColor(ColorConstants.WhiteA700)
                        .font(.system(size: getRelativeHeight(14)))
                        .pickerStyle(MenuPickerStyle())
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(730.0),
                           alignment: .center)
                    Button(action: {}, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblUpdate)
                                .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.bold)
                                .padding(.trailing, getRelativeWidth(161.0))
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
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.Gray900)
            .ignoresSafeArea()
            if editProfileViewModel.isLoaderShow {
                GeometryReader { _ in
                    ActivityLoader(isLoaderShow: $editProfileViewModel.isLoaderShow)
                }
            }
        }
        .hideNavigationBar()
    }
}

struct EditProfileView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileView()
    }
}
