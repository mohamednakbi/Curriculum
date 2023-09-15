import SwiftUI

struct FillProfileView: View {
    @StateObject var fillProfileViewModel = FillProfileViewModel()
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
                        Text(StringConstants.kMsgFillYourProfi)
                            .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(24.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                    }
                    .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(48.0),
                           alignment: .leading)
                    VStack {
                        ZStack(alignment: .bottomTrailing) {
                            Image("img_ellipse_140x140")
                                .resizable()
                                .frame(width: getRelativeWidth(140.0),
                                       height: getRelativeWidth(140.0), alignment: .center)
                                .scaledToFit()
                                .clipShape(Circle())
                                .clipShape(Circle())
                            Image("img_edit")
                                .resizable()
                                .frame(width: getRelativeWidth(35.0),
                                       height: getRelativeWidth(35.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.top, getRelativeHeight(105.0))
                                .padding(.leading, getRelativeWidth(105.0))
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(140.0), height: getRelativeWidth(140.0),
                               alignment: .center)
                        HStack {
                            TextField(StringConstants.kLblFullName,
                                      text: $fillProfileViewModel.fullnameText)
                                .font(FontScheme.kUrbanistRegular(size: getRelativeHeight(14.0)))
                                .foregroundColor(ColorConstants.Gray500)
                                .padding()
                        }
                        .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(56.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                                   bottomRight: 12.0)
                                .fill(ColorConstants.BlueGray900))
                        .padding(.top, getRelativeHeight(24.0))
                        HStack {
                            TextField(StringConstants.kLblNickname,
                                      text: $fillProfileViewModel.nicknameText)
                                .font(FontScheme.kUrbanistRegular(size: getRelativeHeight(14.0)))
                                .foregroundColor(ColorConstants.Gray500)
                                .padding()
                        }
                        .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(56.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                                   bottomRight: 12.0)
                                .fill(ColorConstants.BlueGray900))
                        .padding(.top, getRelativeHeight(24.0))
                        HStack {
                            TextField(StringConstants.kLblDateOfBirth,
                                      text: $fillProfileViewModel.dateofbirthText)
                                .font(FontScheme.kUrbanistRegular(size: getRelativeHeight(14.0)))
                                .foregroundColor(ColorConstants.Gray500)
                                .padding()
                            Image("img_calendar")
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
                            TextField(StringConstants.kLblEmail,
                                      text: $fillProfileViewModel.emailText)
                                .font(FontScheme.kUrbanistRegular(size: getRelativeHeight(14.0)))
                                .foregroundColor(ColorConstants.Gray500)
                                .padding()
                            Image("img_checkmark_gray_500")
                                .resizable()
                                .frame(width: getRelativeWidth(15.0),
                                       height: getRelativeWidth(15.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .overlay(RoundedCorners()
                                    .stroke(ColorConstants.Gray500, lineWidth: 1))
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
                        Text("phonenumber")
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(56.0),
                                   alignment: .center)
                            .background(ColorConstants.BlueGray900)
                            .padding(.top, getRelativeHeight(24.0))
                        Picker(StringConstants.kLblGender,
                               selection: $fillProfileViewModel.genderPicker1) {
                            ForEach(fillProfileViewModel.genderPicker1Values, id: \.self) { value in
                                Text(value)
                            }
                        }
                        .foregroundColor(ColorConstants.Gray500)
                        .font(.system(size: getRelativeHeight(14)))
                        .pickerStyle(MenuPickerStyle())
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(727.0),
                           alignment: .center)
                    Button(action: {}, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblContinue)
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
                                .padding(.bottom, getRelativeHeight(51.0))
                                .padding(.horizontal, getRelativeWidth(24.0))
                        }
                    })
                    .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(55.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 27.0, topRight: 27.0, bottomLeft: 27.0,
                                               bottomRight: 27.0)
                            .fill(ColorConstants.Cyan600))
                    .padding(.bottom, getRelativeHeight(51.0))
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
            if fillProfileViewModel.isLoaderShow {
                GeometryReader { _ in
                    ActivityLoader(isLoaderShow: $fillProfileViewModel.isLoaderShow)
                }
            }
        }
        .hideNavigationBar()
    }
}

struct FillProfileView_Previews: PreviewProvider {
    static var previews: some View {
        FillProfileView()
    }
}
