import SwiftUI

struct HomeScreenView: View {
    @StateObject var homeScreenViewModel = HomeScreenViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
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
                        Text(StringConstants.kLblComfort)
                            .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(24.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .padding(.leading, getRelativeWidth(16.0))
                        HStack {
                            Image("img_alarm")
                                .resizable()
                                .frame(width: getRelativeWidth(28.0),
                                       height: getRelativeWidth(28.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .onTapGesture {
                                    homeScreenViewModel.nextScreen = "NotificationsView"
                                }
                            Image("img_bag")
                                .resizable()
                                .frame(width: getRelativeWidth(28.0),
                                       height: getRelativeWidth(28.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.leading, getRelativeWidth(20.0))
                                .onTapGesture {
                                    homeScreenViewModel.nextScreen = "MyBookmarksView"
                                }
                        }
                        .frame(width: getRelativeWidth(76.0), height: getRelativeHeight(28.0),
                               alignment: .leading)
                        .padding(.horizontal, getRelativeWidth(24.0))
                    }
                    .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(32.0),
                           alignment: .leading)
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kMsgHelloDaniel)
                                .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(32.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(217.0),
                                       height: getRelativeHeight(39.0), alignment: .topLeading)
                            HStack {
                                Spacer()
                                Image("img_search")
                                    .resizable()
                                    .frame(width: getRelativeWidth(20.0),
                                           height: getRelativeWidth(20.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.vertical, getRelativeHeight(18.0))
                                    .padding(.leading, getRelativeWidth(20.0))
                                    .padding(.trailing, getRelativeWidth(12.0))
                                TextField(StringConstants.kLblSearch,
                                          text: $homeScreenViewModel.searchbar)
                                    .font(FontScheme
                                        .kUrbanistRegular(size: getRelativeHeight(14.0)))
                                    .foregroundColor(ColorConstants.Gray600)
                                    .padding()
                                Image("img_menu_cyan_600_01")
                                    .resizable()
                                    .frame(width: getRelativeWidth(13.0),
                                           height: getRelativeHeight(12.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .overlay(RoundedCorners()
                                        .stroke(ColorConstants.Cyan60001, lineWidth: 1))
                                    .background(RoundedCorners().fill(Color.clear.opacity(0.7)))
                                    .padding(.vertical, getRelativeHeight(21.0))
                                    .padding(.leading, getRelativeWidth(30.0))
                                    .padding(.trailing, getRelativeWidth(23.0))
                                Spacer()
                            }
                            .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(56.0),
                                   alignment: .leading)
                            .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                       bottomLeft: 12.0, bottomRight: 12.0)
                                    .fill(ColorConstants.BlueGray900))
                            .padding(.top, getRelativeHeight(24.0))
                            .padding(.trailing, getRelativeWidth(24.0))
                            HStack(spacing: 0) {
                                ScrollView(.horizontal, showsIndicators: false) {
                                    LazyHStack {
                                        ForEach(0 ... 3, id: \.self) { index in
                                            SizemediumtypefCell()
                                        }
                                    }
                                }
                            }
                            .frame(width: UIScreen.main.bounds.width, alignment: .trailing)
                            .padding(.top, getRelativeHeight(30.0))
                            HStack(spacing: 0) {
                                ScrollView(.horizontal, showsIndicators: false) {
                                    LazyHStack {
                                        ForEach(0 ... 1, id: \.self) { index in
                                            StackrectanglethreeCell()
                                        }
                                    }
                                }
                            }
                            .frame(width: UIScreen.main.bounds.width, alignment: .trailing)
                            .padding(.top, getRelativeHeight(30.0))
                            HStack {
                                Text(StringConstants.kLblRecentlyBooked)
                                    .font(FontScheme
                                        .kUrbanistRomanBold(size: getRelativeHeight(18.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(134.0),
                                           height: getRelativeHeight(22.0), alignment: .topLeading)
                                Spacer()
                                Text(StringConstants.kLblSeeAll)
                                    .font(FontScheme
                                        .kUrbanistRomanBold(size: getRelativeHeight(16.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.Cyan60001)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(52.0),
                                           height: getRelativeHeight(20.0), alignment: .topLeading)
                                    .onTapGesture {
                                        homeScreenViewModel.nextScreen = "RecentlyBookedView"
                                    }
                            }
                            .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(22.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(31.0))
                            .padding(.trailing, getRelativeWidth(24.0))
                            VStack(spacing: 0) {
                                ScrollView(.vertical, showsIndicators: false) {
                                    LazyVStack {
                                        ForEach(0 ... 4, id: \.self) { index in
                                            RowrectanglefourCell()
                                        }
                                    }
                                }
                            }
                            .frame(width: getRelativeWidth(380.0), alignment: .leading)
                            .padding(.top, getRelativeHeight(22.0))
                            .padding(.trailing, getRelativeWidth(24.0))
                        }
                        .frame(width: getRelativeWidth(404.0), alignment: .topLeading)
                        .padding(.leading, getRelativeWidth(24.0))
                    }
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.Gray900)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: NotificationsView(),
                                   tag: "NotificationsView",
                                   selection: $homeScreenViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: RecentlyBookedView(),
                                   tag: "RecentlyBookedView",
                                   selection: $homeScreenViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: MyBookmarksView(),
                                   tag: "MyBookmarksView",
                                   selection: $homeScreenViewModel.nextScreen,
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

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}
