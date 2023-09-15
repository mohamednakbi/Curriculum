import SwiftUI

struct FilterResultView: View {
    @StateObject var filterResultViewModel = FilterResultViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    HStack {
                        Spacer()
                        Image("img_search")
                            .resizable()
                            .frame(width: getRelativeWidth(20.0), height: getRelativeWidth(20.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.vertical, getRelativeHeight(18.0))
                            .padding(.leading, getRelativeWidth(20.0))
                            .padding(.trailing, getRelativeWidth(12.0))
                        TextField(StringConstants.kLblHotel, text: $filterResultViewModel.searchbar)
                            .font(FontScheme.kUrbanistSemiBold(size: getRelativeHeight(14.0)))
                            .foregroundColor(ColorConstants.WhiteA700)
                            .padding()
                        Image("img_calculator")
                            .resizable()
                            .frame(width: getRelativeWidth(20.0), height: getRelativeWidth(20.0),
                                   alignment: .center)
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
                    .padding(.horizontal, getRelativeWidth(24.0))
                    HStack(spacing: 0) {
                        ScrollView(.horizontal, showsIndicators: false) {
                            LazyHStack {
                                ForEach(0 ... 4, id: \.self) { index in
                                    Sizemediumtypef4Cell()
                                }
                            }
                        }
                    }
                    .frame(width: UIScreen.main.bounds.width, alignment: .trailing)
                    .padding(.top, getRelativeHeight(24.0))
                    ZStack(alignment: .center) {
                        VStack {
                            HStack {
                                Text(StringConstants.kMsgRecommended58)
                                    .font(FontScheme
                                        .kUrbanistRomanBold(size: getRelativeHeight(18.0)))
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
                            VStack(spacing: 0) {
                                ScrollView(.vertical, showsIndicators: false) {
                                    LazyVStack {
                                        ForEach(0 ... 3, id: \.self) { index in
                                            Rowrectanglefour3Cell()
                                        }
                                    }
                                }
                            }
                            .frame(width: getRelativeWidth(380.0), alignment: .center)
                            .padding(.top, getRelativeHeight(22.0))
                        }
                        .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(682.0),
                               alignment: .center)
                        .padding(.bottom, getRelativeHeight(34.0))
                        .padding(.horizontal, getRelativeWidth(24.0))
                        ZStack {}
                            .hideNavigationBar()
                            .frame(width: UIScreen.main.bounds.width,
                                   height: getRelativeHeight(90.0), alignment: .center)
                            .background(RoundedCorners(topLeft: 16.0, topRight: 16.0)
                                .fill(ColorConstants.Gray900D8))
                            .padding(.top, getRelativeHeight(626.0))
                    }
                    .hideNavigationBar()
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(716.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(24.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.Gray900)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: HotelDetailsView(),
                                   tag: "HotelDetailsView",
                                   selection: $filterResultViewModel.nextScreen,
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

struct FilterResultView_Previews: PreviewProvider {
    static var previews: some View {
        FilterResultView()
    }
}
