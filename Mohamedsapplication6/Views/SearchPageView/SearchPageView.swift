import SwiftUI

struct SearchPageView: View {
    @StateObject var searchPageViewModel = SearchPageViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    VStack {
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
                                      text: $searchPageViewModel.searchbar)
                                .font(FontScheme.kUrbanistRegular(size: getRelativeHeight(14.0)))
                                .foregroundColor(ColorConstants.Gray600)
                                .padding()
                                .onTapGesture {
                                    searchPageViewModel.nextScreen = "SearchTypeView"
                                }
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
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                                   bottomRight: 12.0)
                                .fill(ColorConstants.BlueGray900))
                        .padding(.top, getRelativeHeight(24.0))
                        .padding(.horizontal, getRelativeWidth(24.0))
                        HStack(spacing: 0) {
                            ScrollView(.horizontal, showsIndicators: false) {
                                LazyHStack {
                                    ForEach(0 ... 4, id: \.self) { index in
                                        Sizemediumtypef1Cell()
                                    }
                                }
                            }
                        }
                        .frame(width: UIScreen.main.bounds.width, alignment: .trailing)
                        .padding(.top, getRelativeHeight(24.0))
                        HStack {
                            Text(StringConstants.kMsgRecommended58)
                                .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(18.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(204.0),
                                       height: getRelativeHeight(22.0), alignment: .topLeading)
                            Spacer()
                            Image("img_menu_28x68")
                                .resizable()
                                .frame(width: getRelativeWidth(68.0),
                                       height: getRelativeHeight(28.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                        }
                        .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(28.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(24.0))
                        .padding(.horizontal, getRelativeWidth(24.0))
                        VStack(spacing: 0) {
                            ScrollView(.vertical, showsIndicators: false) {
                                LazyVStack {
                                    ForEach(0 ... 3, id: \.self) { index in
                                        Rowrectanglefour1Cell()
                                    }
                                }
                            }
                        }
                        .frame(width: getRelativeWidth(380.0), alignment: .center)
                        .padding(.top, getRelativeHeight(22.0))
                        .padding(.horizontal, getRelativeWidth(24.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(792.0),
                           alignment: .center)
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.Gray900)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: SearchTypeView(),
                                   tag: "SearchTypeView",
                                   selection: $searchPageViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: HotelDetailsView(),
                                   tag: "HotelDetailsView",
                                   selection: $searchPageViewModel.nextScreen,
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

struct SearchPageView_Previews: PreviewProvider {
    static var previews: some View {
        SearchPageView()
    }
}
