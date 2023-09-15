import SwiftUI

struct SelectdateGuestView: View {
    @StateObject var selectdateGuestViewModel = SelectdateGuestViewModel()
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
                        Text(StringConstants.kLblSelectDate)
                            .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(24.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .padding(.leading, getRelativeWidth(16.0))
                    }
                    .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(48.0),
                           alignment: .leading)
                    VStack(alignment: .leading, spacing: 0) {
                        CalendarModuleView(firstDate: $selectdateGuestViewModel.dateStartDate,
                                           lastDate: $selectdateGuestViewModel.dateEndDate)
                            .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(396.0),
                                   alignment: .leading)
                            .background(RoundedCorners(topLeft: 16.0, topRight: 16.0,
                                                       bottomLeft: 16.0, bottomRight: 16.0)
                                    .fill(ColorConstants.BlueGray900))
                            .padding(.top, getRelativeHeight(11.0))
                        HStack {
                            VStack(alignment: .leading, spacing: 0) {
                                Text(StringConstants.kLblCheckIn)
                                    .font(FontScheme
                                        .kUrbanistRomanBold(size: getRelativeHeight(18.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(71.0),
                                           height: getRelativeHeight(22.0), alignment: .topLeading)
                                HStack {
                                    Text(StringConstants.kLblDec16)
                                        .font(FontScheme
                                            .kUrbanistSemiBold(size: getRelativeHeight(14.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(41.0),
                                               height: getRelativeHeight(17.0),
                                               alignment: .topLeading)
                                    Image("img_calendar_20x20")
                                        .resizable()
                                        .frame(width: getRelativeWidth(20.0),
                                               height: getRelativeWidth(20.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.leading, getRelativeWidth(59.0))
                                }
                                .frame(width: getRelativeWidth(160.0),
                                       height: getRelativeHeight(56.0), alignment: .leading)
                                .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                           bottomLeft: 12.0, bottomRight: 12.0)
                                        .fill(ColorConstants.BlueGray900))
                                .padding(.top, getRelativeHeight(12.0))
                            }
                            .frame(width: getRelativeWidth(160.0), height: getRelativeHeight(90.0),
                                   alignment: .center)
                            Spacer()
                            Image("img_menu_20x20")
                                .resizable()
                                .frame(width: getRelativeWidth(20.0),
                                       height: getRelativeWidth(20.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.vertical, getRelativeHeight(52.0))
                            Spacer()
                            VStack(alignment: .leading, spacing: 0) {
                                Text(StringConstants.kLblCheckOut)
                                    .font(FontScheme
                                        .kUrbanistRomanBold(size: getRelativeHeight(18.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(83.0),
                                           height: getRelativeHeight(22.0), alignment: .topLeading)
                                HStack {
                                    Text(StringConstants.kLblDec20)
                                        .font(FontScheme
                                            .kUrbanistSemiBold(size: getRelativeHeight(14.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(44.0),
                                               height: getRelativeHeight(17.0),
                                               alignment: .topLeading)
                                    Image("img_calendar_20x20")
                                        .resizable()
                                        .frame(width: getRelativeWidth(20.0),
                                               height: getRelativeWidth(20.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.leading, getRelativeWidth(55.0))
                                }
                                .frame(width: getRelativeWidth(160.0),
                                       height: getRelativeHeight(56.0), alignment: .leading)
                                .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                           bottomLeft: 12.0, bottomRight: 12.0)
                                        .fill(ColorConstants.BlueGray900))
                                .padding(.top, getRelativeHeight(12.0))
                            }
                            .frame(width: getRelativeWidth(160.0), height: getRelativeHeight(90.0),
                                   alignment: .center)
                        }
                        .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(90.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(19.0))
                        Text(StringConstants.kLblGuest)
                            .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(18.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(48.0), height: getRelativeHeight(22.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(29.0))
                        HStack {
                            ZStack {
                                Image("img_menu_2")
                                    .resizable()
                                    .frame(width: getRelativeWidth(20.0),
                                           height: getRelativeWidth(20.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.all, getRelativeWidth(16.0))
                                    .padding(.vertical, getRelativeHeight(16.0))
                                    .padding(.horizontal, getRelativeWidth(16.0))
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(52.0), height: getRelativeWidth(52.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 16.0, topRight: 16.0,
                                                       bottomLeft: 16.0, bottomRight: 16.0)
                                    .fill(ColorConstants.Teal900))
                            .shadow(color: ColorConstants.IndigoA20014, radius: 50, x: 0, y: 0)
                            Spacer()
                            Text(StringConstants.kLbl3)
                                .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(24.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(13.0),
                                       height: getRelativeHeight(29.0), alignment: .topLeading)
                                .padding(.vertical, getRelativeHeight(11.0))
                            Spacer()
                            ZStack {
                                Image("img_plus")
                                    .resizable()
                                    .frame(width: getRelativeWidth(20.0),
                                           height: getRelativeWidth(20.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.all, getRelativeWidth(16.0))
                                    .padding(.vertical, getRelativeHeight(16.0))
                                    .padding(.horizontal, getRelativeWidth(16.0))
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(52.0), height: getRelativeWidth(52.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 16.0, topRight: 16.0,
                                                       bottomLeft: 16.0, bottomRight: 16.0)
                                    .fill(ColorConstants.Teal900))
                            .shadow(color: ColorConstants.IndigoA20014, radius: 50, x: 0, y: 0)
                        }
                        .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(76.0),
                               alignment: .leading)
                        .overlay(RoundedCorners(topLeft: 20.0, topRight: 20.0, bottomLeft: 20.0,
                                                bottomRight: 20.0)
                                .stroke(ColorConstants.Gray800,
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 20.0, topRight: 20.0, bottomLeft: 20.0,
                                                   bottomRight: 20.0)
                                .fill(ColorConstants.BlueGray900))
                        .padding(.top, getRelativeHeight(16.0))
                        Text(StringConstants.kLblTotal435)
                            .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(20.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(101.0), height: getRelativeHeight(24.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(21.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(746.0),
                           alignment: .center)
                    Button(action: {
                        selectdateGuestViewModel.nextScreen = "BookingNameView"
                    }, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblContinue)
                                .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.bold)
                                .padding(.trailing, getRelativeWidth(156.0))
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
                                .padding(.bottom, getRelativeHeight(32.0))
                                .padding(.horizontal, getRelativeWidth(24.0))
                        }
                    })
                    .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(55.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 27.0, topRight: 27.0, bottomLeft: 27.0,
                                               bottomRight: 27.0)
                            .fill(ColorConstants.Cyan60001))
                    .shadow(color: ColorConstants.GreenA7003f, radius: 24, x: 4, y: 8)
                    .padding(.bottom, getRelativeHeight(32.0))
                    .padding(.horizontal, getRelativeWidth(24.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.Gray900)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: BookingNameView(),
                                   tag: "BookingNameView",
                                   selection: $selectdateGuestViewModel.nextScreen,
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

struct SelectdateGuestView_Previews: PreviewProvider {
    static var previews: some View {
        SelectdateGuestView()
    }
}
