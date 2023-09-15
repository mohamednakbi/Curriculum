import SwiftUI

struct ReviewView: View {
    @StateObject var reviewViewModel = ReviewViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        ZStack(alignment: .bottom) {
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
                        Text(StringConstants.kLblReview)
                            .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(24.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .padding(.leading, getRelativeWidth(16.0))
                        Image("img_clock")
                            .resizable()
                            .frame(width: getRelativeWidth(28.0), height: getRelativeWidth(28.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.horizontal, getRelativeWidth(24.0))
                    }
                    .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(49.0),
                           alignment: .leading)
                    VStack {
                        HStack(spacing: 0) {
                            ScrollView(.horizontal, showsIndicators: false) {
                                LazyHStack {
                                    ForEach(0 ... 5, id: \.self) { index in
                                        Rowstar1Cell()
                                    }
                                }
                            }
                        }
                        .frame(width: UIScreen.main.bounds.width, alignment: .trailing)
                        .padding(.top, getRelativeHeight(30.0))
                        HStack {
                            Text(StringConstants.kLblRating)
                                .font(FontScheme.kUrbanistSemiBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(47.0),
                                       height: getRelativeHeight(20.0), alignment: .topLeading)
                            Text("group2603")
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(187.0),
                                       height: getRelativeHeight(16.0))
                            Image("img_star_12x12")
                                .resizable()
                                .frame(width: getRelativeWidth(16.0),
                                       height: getRelativeWidth(16.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.bottom, getRelativeHeight(4.0))
                            Text(StringConstants.kLbl48)
                                .font(FontScheme.kUrbanistSemiBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Cyan60001)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(22.0),
                                       height: getRelativeHeight(20.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(8.0))
                            Text(StringConstants.kLbl4981Reviews)
                                .font(FontScheme.kUrbanistRegular(size: getRelativeHeight(14.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(92.0),
                                       height: getRelativeHeight(17.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(8.0))
                        }
                        .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(22.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(37.0))
                        .padding(.horizontal, getRelativeWidth(24.0))
                        VStack(spacing: 0) {
                            ScrollView(.vertical, showsIndicators: false) {
                                LazyVStack {
                                    ForEach(0 ... 4, id: \.self) { index in
                                        Review1Cell()
                                    }
                                }
                            }
                        }
                        .frame(width: getRelativeWidth(380.0), alignment: .center)
                        .padding(.top, getRelativeHeight(18.0))
                        .padding(.horizontal, getRelativeWidth(24.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(832.0),
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
            if reviewViewModel.isRateHotelViewShow {
                BottomSheetView(isOpen: $reviewViewModel.isRateHotelViewShow, content: {
                    RateHotelView(rateHotelViewModel: RateHotelViewModel(_isOpen: $reviewViewModel
                            .isRateHotelViewShow))
                }).frame(width: UIScreen.main.bounds.width)
            }
        }
        .hideNavigationBar()
    }
}

struct ReviewView_Previews: PreviewProvider {
    static var previews: some View {
        ReviewView()
    }
}
