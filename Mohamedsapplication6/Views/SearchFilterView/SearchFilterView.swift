import SwiftUI

struct SearchFilterView: View {
    @StateObject var searchFilterViewModel = SearchFilterViewModel(_isOpen: .constant(false))
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    Group {
                        Image("img_frame_gray_700")
                            .resizable()
                            .frame(width: getRelativeWidth(38.0), height: getRelativeHeight(3.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                        Text(StringConstants.kLblFilterHotel)
                            .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(24.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(115.0), height: getRelativeHeight(29.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(23.0))
                        HStack {
                            Text(StringConstants.kLblCountry)
                                .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(18.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(67.0),
                                       height: getRelativeHeight(22.0), alignment: .topLeading)
                            Spacer()
                            Text(StringConstants.kLblSeeAll)
                                .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Cyan60001)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(52.0),
                                       height: getRelativeHeight(20.0), alignment: .topLeading)
                        }
                        .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(22.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(49.0))
                        .padding(.horizontal, getRelativeWidth(24.0))
                        HStack(spacing: 0) {
                            ScrollView(.horizontal, showsIndicators: false) {
                                LazyHStack {
                                    ForEach(0 ... 3, id: \.self) { index in
                                        CountryCell()
                                    }
                                }
                            }
                        }
                        .frame(width: getRelativeWidth(404.0), alignment: .trailing)
                        .padding(.top, getRelativeHeight(18.0))
                        .padding(.leading, getRelativeWidth(24.0))
                        Text(StringConstants.kLblSortResults)
                            .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(18.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(95.0), height: getRelativeHeight(22.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(23.0))
                            .padding(.leading, getRelativeWidth(24.0))
                        HStack(spacing: 0) {
                            ScrollView(.horizontal, showsIndicators: false) {
                                LazyHStack {
                                    ForEach(0 ... 3, id: \.self) { index in
                                        Sizemediumtypef3Cell()
                                    }
                                }
                            }
                        }
                        .frame(width: getRelativeWidth(404.0), alignment: .trailing)
                        .padding(.top, getRelativeHeight(20.0))
                        .padding(.leading, getRelativeWidth(24.0))
                        Text(StringConstants.kMsgPriceRangePer)
                            .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(18.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(174.0), height: getRelativeHeight(22.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(25.0))
                            .padding(.leading, getRelativeWidth(24.0))
                        HStack {
                            ZStack(alignment: .topLeading) {
                                Image("img_mail")
                                    .resizable()
                                    .frame(width: getRelativeWidth(36.0),
                                           height: getRelativeHeight(24.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                Text(StringConstants.kLbl182)
                                    .font(FontScheme
                                        .kSourceSansProSemiBold(size: getRelativeHeight(14.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(22.0),
                                           height: getRelativeHeight(18.0), alignment: .topLeading)
                                    .padding(.bottom, getRelativeHeight(4.45))
                                    .padding(.trailing, getRelativeWidth(8.05))
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(36.0), height: getRelativeHeight(24.0),
                                   alignment: .center)
                            ZStack(alignment: .topLeading) {
                                Image("img_mail")
                                    .resizable()
                                    .frame(width: getRelativeWidth(36.0),
                                           height: getRelativeHeight(24.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                Text(StringConstants.kLbl50)
                                    .font(FontScheme
                                        .kSourceSansProSemiBold(size: getRelativeHeight(14.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(22.0),
                                           height: getRelativeHeight(18.0), alignment: .topLeading)
                                    .padding(.bottom, getRelativeHeight(4.45))
                                    .padding(.trailing, getRelativeWidth(8.05))
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(36.0), height: getRelativeHeight(24.0),
                                   alignment: .center)
                            .padding(.leading, getRelativeWidth(83.0))
                        }
                        .frame(width: getRelativeWidth(155.0), height: getRelativeHeight(24.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(18.0))
                        .padding(.leading, getRelativeWidth(78.0))
                    }
                    Group {
                        RangeSlider(range: $searchFilterViewModel.group2482RangeSlider,
                                    in: 1 ... 100)
                        Text(StringConstants.kLblStarRating)
                            .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(18.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(92.0), height: getRelativeHeight(22.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(25.0))
                            .padding(.leading, getRelativeWidth(24.0))
                        HStack(spacing: 0) {
                            ScrollView(.horizontal, showsIndicators: false) {
                                LazyHStack {
                                    ForEach(0 ... 4, id: \.self) { index in
                                        RowstarCell()
                                    }
                                }
                            }
                        }
                        .frame(width: getRelativeWidth(411.0), alignment: .trailing)
                        .padding(.top, getRelativeHeight(18.0))
                        .padding(.leading, getRelativeWidth(24.0))
                        HStack {
                            Text(StringConstants.kLblFacilities)
                                .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(18.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(69.0),
                                       height: getRelativeHeight(22.0), alignment: .topLeading)
                            Spacer()
                            Text(StringConstants.kLblSeeAll)
                                .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Cyan60001)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(52.0),
                                       height: getRelativeHeight(20.0), alignment: .topLeading)
                        }
                        .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(22.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(23.0))
                        .padding(.horizontal, getRelativeWidth(24.0))
                        HStack {
                            CheckboxField(idValue: StringConstants.kLblWifi,
                                          label: StringConstants.kLblWifi, color: Color.blue,
                                          isMarked: $searchFilterViewModel.checkedCheckbox)
                                .minimumScaleFactor(0.5)
                                .frame(width: getRelativeWidth(62.0),
                                       height: getRelativeHeight(24.0), alignment: .center)
                            CheckboxField(idValue: StringConstants.kLblSwimmingPool,
                                          label: StringConstants.kLblSwimmingPool,
                                          color: Color.blue,
                                          isMarked: $searchFilterViewModel.checkedOneCheckbox)
                                .minimumScaleFactor(0.5)
                                .frame(width: getRelativeWidth(135.0),
                                       height: getRelativeHeight(24.0), alignment: .center)
                                .padding(.leading, getRelativeWidth(12.0))
                            CheckboxField(idValue: StringConstants.kLblParking,
                                          label: StringConstants.kLblParking,
                                          color: Color.blue,
                                          isMarked: $searchFilterViewModel.uncheckedCheckbox)
                                .minimumScaleFactor(0.5)
                                .frame(width: getRelativeWidth(84.0),
                                       height: getRelativeHeight(24.0), alignment: .center)
                                .padding(.leading, getRelativeWidth(12.0))
                        }
                        .frame(width: getRelativeWidth(305.0), height: getRelativeHeight(24.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(20.0))
                        .padding(.leading, getRelativeWidth(24.0))
                        .padding(.trailing, getRelativeWidth(99.0))
                        HStack {
                            Text(StringConstants.kMsgAccommodationT)
                                .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(18.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(180.0),
                                       height: getRelativeHeight(22.0), alignment: .topLeading)
                            Spacer()
                            Text(StringConstants.kLblSeeAll)
                                .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Cyan60001)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(52.0),
                                       height: getRelativeHeight(20.0), alignment: .topLeading)
                        }
                        .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(22.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(25.0))
                        .padding(.horizontal, getRelativeWidth(24.0))
                        HStack {
                            CheckboxField(idValue: StringConstants.kLblHotels,
                                          label: StringConstants.kLblHotels,
                                          color: Color.blue,
                                          isMarked: $searchFilterViewModel.checkedTwoCheckbox)
                                .minimumScaleFactor(0.5)
                                .frame(width: getRelativeWidth(76.0),
                                       height: getRelativeHeight(24.0), alignment: .center)
                            CheckboxField(idValue: StringConstants.kLblResorts,
                                          label: StringConstants.kLblResorts,
                                          color: Color.blue,
                                          isMarked: $searchFilterViewModel.uncheckedOneCheckbox)
                                .minimumScaleFactor(0.5)
                                .frame(width: getRelativeWidth(83.0),
                                       height: getRelativeHeight(24.0), alignment: .center)
                                .padding(.leading, getRelativeWidth(12.0))
                            CheckboxField(idValue: StringConstants.kLblVillas,
                                          label: StringConstants.kLblVillas,
                                          color: Color.blue,
                                          isMarked: $searchFilterViewModel.checkedThreeCheckbox)
                                .minimumScaleFactor(0.5)
                                .frame(width: getRelativeWidth(71.0),
                                       height: getRelativeHeight(24.0), alignment: .center)
                                .padding(.leading, getRelativeWidth(12.0))
                        }
                        .frame(width: getRelativeWidth(254.0), height: getRelativeHeight(24.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(18.0))
                        .padding(.leading, getRelativeWidth(24.0))
                        HStack {
                            Button(action: {}, label: {
                                HStack(spacing: 0) {
                                    Text(StringConstants.kLblReset)
                                        .font(FontScheme
                                            .kUrbanistRomanBold(size: getRelativeHeight(16.0)))
                                        .fontWeight(.bold)
                                        .padding(.trailing, getRelativeWidth(72.0))
                                        .padding(.leading, getRelativeWidth(30.0))
                                        .padding(.vertical, getRelativeHeight(18.0))
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.center)
                                        .frame(width: getRelativeWidth(184.0),
                                               height: getRelativeHeight(58.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 29.0, topRight: 29.0,
                                                                   bottomLeft: 29.0,
                                                                   bottomRight: 29.0)
                                                .fill(ColorConstants.Gray800))
                                }
                            })
                            .frame(width: getRelativeWidth(184.0), height: getRelativeHeight(58.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 29.0, topRight: 29.0,
                                                       bottomLeft: 29.0, bottomRight: 29.0)
                                    .fill(ColorConstants.Gray800))
                            Spacer()
                            Button(action: {
                                searchFilterViewModel.nextScreen = "FilterResultView"
                            }, label: {
                                HStack(spacing: 0) {
                                    Text(StringConstants.kLblApplyFilter)
                                        .font(FontScheme
                                            .kUrbanistRomanBold(size: getRelativeHeight(16.0)))
                                        .fontWeight(.bold)
                                        .padding(.trailing, getRelativeWidth(49.0))
                                        .padding(.leading, getRelativeWidth(30.0))
                                        .padding(.vertical, getRelativeHeight(18.0))
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.center)
                                        .frame(width: getRelativeWidth(184.0),
                                               height: getRelativeHeight(58.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 29.0, topRight: 29.0,
                                                                   bottomLeft: 29.0,
                                                                   bottomRight: 29.0)
                                                .fill(ColorConstants.Cyan60001))
                                        .shadow(color: ColorConstants.GreenA7003f, radius: 24, x: 4,
                                                y: 8)
                                        .padding(.leading, getRelativeWidth(12.0))
                                }
                            })
                            .frame(width: getRelativeWidth(184.0), height: getRelativeHeight(58.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 29.0, topRight: 29.0,
                                                       bottomLeft: 29.0, bottomRight: 29.0)
                                    .fill(ColorConstants.Cyan60001))
                            .shadow(color: ColorConstants.GreenA7003f, radius: 24, x: 4, y: 8)
                            .padding(.leading, getRelativeWidth(12.0))
                        }
                        .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(58.0),
                               alignment: .center)
                        .padding(.vertical, getRelativeHeight(48.0))
                        .padding(.horizontal, getRelativeWidth(24.0))
                    }
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(847.0),
                       alignment: .center)
                .overlay(RoundedCorners(topLeft: 40.0, topRight: 40.0)
                    .stroke(ColorConstants.Gray800, lineWidth: 1))
                .background(RoundedCorners(topLeft: 40.0, topRight: 40.0)
                    .fill(ColorConstants.BlueGray90001))
                Group {
                    NavigationLink(destination: FilterResultView(),
                                   tag: "FilterResultView",
                                   selection: $searchFilterViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width)
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct SearchFilterView_Previews: PreviewProvider {
    static var previews: some View {
        SearchFilterView()
    }
}
