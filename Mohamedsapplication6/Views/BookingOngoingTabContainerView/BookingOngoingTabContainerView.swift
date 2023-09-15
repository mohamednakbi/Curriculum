import SwiftUI

struct BookingOngoingTabContainerView: View {
    @StateObject var bookingOngoingTabContainerViewModel = BookingOngoingTabContainerViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                HStack {
                    Image("img_google")
                        .resizable()
                        .frame(width: getRelativeWidth(32.0), height: getRelativeWidth(32.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.leading, getRelativeWidth(24.0))
                        .onTapGesture {}
                    Text(StringConstants.kLblMyBookings)
                        .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(24.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.WhiteA700)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .padding(.leading, getRelativeWidth(16.0))
                    Image("img_search_white_a700")
                        .resizable()
                        .frame(width: getRelativeWidth(28.0), height: getRelativeWidth(28.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.horizontal, getRelativeWidth(24.0))
                }
                .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(50.0),
                       alignment: .leading)
                VStack {
                    TabsView(tabs: $bookingOngoingTabContainerViewModel.tabGroup137List,
                             selectedTabIndex: $bookingOngoingTabContainerViewModel
                                 .selectedGroup137Index,
                             selectedTab: bookingOngoingTabContainerViewModel.tabGroup137List[0],
                             fontSize: 18.0,
                             fontName: FontScheme.kUrbanistRomanBold(size: getRelativeHeight(18.0)),
                             selectedFontColor: ColorConstants.WhiteA700,
                             unSelectedFontColor: ColorConstants.WhiteA700,
                             selectedBackColor: ColorConstants.Cyan60001, cornerRadius: 22.0,
                             type: .customBackground)
                        .frame(height: getRelativeHeight(45.0))
                    PagerView(content: {
                        BookingOngoing1View()
                        BookingCompletedView()
                        BookingCancelledView()
                    }, tabIndex: $bookingOngoingTabContainerViewModel.selectedGroup137Index,
                    pagers: $bookingOngoingTabContainerViewModel.tabGroup137List)
                        .frame(height: getRelativeHeight(667.0), alignment: .center)
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(712.0),
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

struct BookingOngoingTabContainerView_Previews: PreviewProvider {
    static var previews: some View {
        BookingOngoingTabContainerView()
    }
}
