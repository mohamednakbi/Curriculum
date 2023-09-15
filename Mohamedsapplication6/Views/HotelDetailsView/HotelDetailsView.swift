import SwiftUI

struct HotelDetailsView: View {
    @StateObject var hotelDetailsViewModel = HotelDetailsViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    ZStack(alignment: .center) {
                        Image("img_rectangle6_256x428")
                            .resizable()
                            .frame(width: UIScreen.main.bounds.width,
                                   height: getRelativeHeight(256.0), alignment: .center)
                            .scaledToFit()
                            .clipped()
                        VStack {
                            HStack {
                                Image("img_arrowdown_white_a700")
                                    .resizable()
                                    .frame(width: getRelativeWidth(28.0),
                                           height: getRelativeWidth(28.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.leading, getRelativeWidth(24.0))
                                    .onTapGesture {
                                        self.presentationMode.wrappedValue.dismiss()
                                    }
                                HStack {
                                    Image("img_bookmark")
                                        .resizable()
                                        .frame(width: getRelativeWidth(28.0),
                                               height: getRelativeWidth(28.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                    Image("img_clock")
                                        .resizable()
                                        .frame(width: getRelativeWidth(28.0),
                                               height: getRelativeWidth(28.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.leading, getRelativeWidth(20.0))
                                }
                                .frame(width: getRelativeWidth(76.0),
                                       height: getRelativeHeight(28.0), alignment: .leading)
                                .padding(.horizontal, getRelativeWidth(24.0))
                            }
                            .frame(width: UIScreen.main.bounds.width - 20,
                                   height: getRelativeHeight(50.0), alignment: .leading)
                            PageIndicator(numPages: 5, currentPage: .constant(1),
                                          selectedColor: ColorConstants.Cyan600,
                                          unSelectedColor: ColorConstants.BlueGray400,
                                          spacing: 11.0)
                        }
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(256.0),
                               alignment: .center)
                        .background(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                    .Gray80000,
                                ColorConstants
                                    .Gray90096]),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing))
                    }
                    .hideNavigationBar()
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(256.0),
                           alignment: .center)
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(alignment: .leading, spacing: 0) {
                            Group {
                                Text(StringConstants.kMsgRoyalePresiden)
                                    .font(FontScheme
                                        .kUrbanistRomanBold(size: getRelativeHeight(32.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(319.0),
                                           height: getRelativeHeight(39.0), alignment: .topLeading)
                                HStack {
                                    Image("img_location")
                                        .resizable()
                                        .frame(width: getRelativeWidth(20.0),
                                               height: getRelativeWidth(20.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                    Text(StringConstants.kMsg79PlaceDeLa)
                                        .font(FontScheme
                                            .kUrbanistRegular(size: getRelativeHeight(14.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Gray100)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(289.0),
                                               height: getRelativeHeight(17.0),
                                               alignment: .topLeading)
                                        .padding(.leading, getRelativeWidth(8.0))
                                }
                                .frame(width: getRelativeWidth(317.0),
                                       height: getRelativeHeight(20.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(14.0))
                                .padding(.trailing, getRelativeWidth(87.0))
                                HStack {
                                    Text(StringConstants.kLblGalleryPhotos)
                                        .font(FontScheme
                                            .kUrbanistRomanBold(size: getRelativeHeight(20.0)))
                                        .fontWeight(.bold)
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(131.0),
                                               height: getRelativeHeight(24.0),
                                               alignment: .topLeading)
                                    Spacer()
                                    Text(StringConstants.kLblSeeAll)
                                        .font(FontScheme
                                            .kUrbanistRomanBold(size: getRelativeHeight(16.0)))
                                        .fontWeight(.bold)
                                        .foregroundColor(ColorConstants.Cyan60001)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(52.0),
                                               height: getRelativeHeight(20.0),
                                               alignment: .topLeading)
                                        .padding(.bottom, getRelativeHeight(4.0))
                                        .onTapGesture {
                                            hotelDetailsViewModel.nextScreen = "GalleryView"
                                        }
                                }
                                .frame(width: getRelativeWidth(380.0),
                                       height: getRelativeHeight(24.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(41.0))
                                .padding(.trailing, getRelativeWidth(24.0))
                                ScrollView(.horizontal, showsIndicators: false) {
                                    HStack {
                                        Image("img_rectangle7_100x140")
                                            .resizable()
                                            .frame(width: getRelativeWidth(140.0),
                                                   height: getRelativeHeight(100.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .background(RoundedCorners(topLeft: 16.0,
                                                                       topRight: 16.0,
                                                                       bottomLeft: 16.0,
                                                                       bottomRight: 16.0))
                                        Image("img_rectangle8_100x140")
                                            .resizable()
                                            .frame(width: getRelativeWidth(140.0),
                                                   height: getRelativeHeight(100.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .background(RoundedCorners(topLeft: 16.0,
                                                                       topRight: 16.0,
                                                                       bottomLeft: 16.0,
                                                                       bottomRight: 16.0))
                                            .padding(.leading, getRelativeWidth(12.0))
                                        Image("img_rectangle9_100x140")
                                            .resizable()
                                            .frame(width: getRelativeWidth(140.0),
                                                   height: getRelativeHeight(100.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .background(RoundedCorners(topLeft: 16.0,
                                                                       topRight: 16.0,
                                                                       bottomLeft: 16.0,
                                                                       bottomRight: 16.0))
                                            .padding(.leading, getRelativeWidth(12.0))
                                    }
                                    .frame(width: UIScreen.main.bounds.width,
                                           height: getRelativeHeight(100.0), alignment: .trailing)
                                }
                                .padding(.top, getRelativeHeight(14.0))
                                Text(StringConstants.kLblDetails)
                                    .font(FontScheme
                                        .kUrbanistRomanBold(size: getRelativeHeight(20.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(62.0),
                                           height: getRelativeHeight(24.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(29.0))
                                HStack {
                                    VStack {
                                        Image("img_frame_32x32")
                                            .resizable()
                                            .frame(width: getRelativeWidth(32.0),
                                                   height: getRelativeWidth(32.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                        Text(StringConstants.kLblHotels)
                                            .font(FontScheme
                                                .kUrbanistRomanMedium(size: getRelativeHeight(12.0)))
                                            .fontWeight(.medium)
                                            .foregroundColor(ColorConstants.Gray100)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(34.0),
                                                   height: getRelativeHeight(15.0),
                                                   alignment: .topLeading)
                                            .padding(.top, getRelativeHeight(7.0))
                                    }
                                    .frame(width: getRelativeWidth(34.0),
                                           height: getRelativeHeight(54.0), alignment: .center)
                                    VStack {
                                        Image("img_ticket")
                                            .resizable()
                                            .frame(width: getRelativeWidth(32.0),
                                                   height: getRelativeWidth(32.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                        Text(StringConstants.kLbl4Bedrooms)
                                            .font(FontScheme
                                                .kUrbanistRomanMedium(size: getRelativeHeight(12.0)))
                                            .fontWeight(.medium)
                                            .foregroundColor(ColorConstants.Gray100)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(65.0),
                                                   height: getRelativeHeight(15.0),
                                                   alignment: .topLeading)
                                            .padding(.top, getRelativeHeight(7.0))
                                    }
                                    .frame(width: getRelativeWidth(65.0),
                                           height: getRelativeHeight(54.0), alignment: .center)
                                    .padding(.leading, getRelativeWidth(47.0))
                                    VStack {
                                        Image("img_lock_32x32")
                                            .resizable()
                                            .frame(width: getRelativeWidth(32.0),
                                                   height: getRelativeWidth(32.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                        Text(StringConstants.kLbl2Bathrooms)
                                            .font(FontScheme
                                                .kUrbanistRomanMedium(size: getRelativeHeight(12.0)))
                                            .fontWeight(.medium)
                                            .foregroundColor(ColorConstants.Gray100)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(69.0),
                                                   height: getRelativeHeight(15.0),
                                                   alignment: .topLeading)
                                            .padding(.top, getRelativeHeight(7.0))
                                    }
                                    .frame(width: getRelativeWidth(69.0),
                                           height: getRelativeHeight(54.0), alignment: .center)
                                    .padding(.leading, getRelativeWidth(29.0))
                                    VStack {
                                        Image("img_facebook_32x32")
                                            .resizable()
                                            .frame(width: getRelativeWidth(32.0),
                                                   height: getRelativeWidth(32.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .onTapGesture {}
                                        Text(StringConstants.kLbl4000Sqft)
                                            .font(FontScheme
                                                .kUrbanistRomanMedium(size: getRelativeHeight(12.0)))
                                            .fontWeight(.medium)
                                            .foregroundColor(ColorConstants.Gray100)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(53.0),
                                                   height: getRelativeHeight(15.0),
                                                   alignment: .topLeading)
                                            .padding(.top, getRelativeHeight(8.0))
                                    }
                                    .frame(width: getRelativeWidth(53.0),
                                           height: getRelativeHeight(55.0), alignment: .center)
                                    .padding(.leading, getRelativeWidth(35.0))
                                }
                                .frame(width: getRelativeWidth(334.0),
                                       height: getRelativeHeight(55.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(16.0))
                                .padding(.leading, getRelativeWidth(27.0))
                                .padding(.trailing, getRelativeWidth(41.0))
                                Text(StringConstants.kLblDescription)
                                    .font(FontScheme
                                        .kUrbanistRomanBold(size: getRelativeHeight(20.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(101.0),
                                           height: getRelativeHeight(24.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(31.0))
                                Text(StringConstants.kMsgLoremIpsumDol)
                                    .font(FontScheme
                                        .kUrbanistRegular(size: getRelativeHeight(14.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Gray100)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(370.0),
                                           height: getRelativeHeight(100.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(14.0))
                                    .padding(.trailing, getRelativeWidth(33.0))
                            }
                            Group {
                                Text(StringConstants.kLblFacilites)
                                    .font(FontScheme
                                        .kUrbanistRomanBold(size: getRelativeHeight(20.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(72.0),
                                           height: getRelativeHeight(24.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(27.0))
                                HStack {
                                    VStack {
                                        Image("img_cut_cyan_600")
                                            .resizable()
                                            .frame(width: getRelativeWidth(26.0),
                                                   height: getRelativeHeight(24.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                        Text(StringConstants.kLblSwimmingPool)
                                            .font(FontScheme
                                                .kUrbanistRomanMedium(size: getRelativeHeight(12.0)))
                                            .fontWeight(.medium)
                                            .foregroundColor(ColorConstants.Gray100)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(83.0),
                                                   height: getRelativeHeight(15.0),
                                                   alignment: .topLeading)
                                            .padding(.top, getRelativeHeight(12.0))
                                    }
                                    .frame(width: getRelativeWidth(83.0),
                                           height: getRelativeHeight(51.0), alignment: .center)
                                    VStack {
                                        Image("img_signal_cyan_600")
                                            .resizable()
                                            .frame(width: getRelativeWidth(26.0),
                                                   height: getRelativeHeight(18.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                        Text(StringConstants.kLblWifi)
                                            .font(FontScheme
                                                .kUrbanistRomanMedium(size: getRelativeHeight(12.0)))
                                            .fontWeight(.medium)
                                            .foregroundColor(ColorConstants.Gray100)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(22.0),
                                                   height: getRelativeHeight(15.0),
                                                   alignment: .topLeading)
                                            .padding(.top, getRelativeHeight(13.0))
                                    }
                                    .frame(width: getRelativeWidth(26.0),
                                           height: getRelativeHeight(47.0), alignment: .center)
                                    .padding(.leading, getRelativeWidth(41.0))
                                    Text("group2617")
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(53.0),
                                               height: getRelativeHeight(50.0))
                                    VStack {
                                        Image("img_cut_cyan_600_23x25")
                                            .resizable()
                                            .frame(width: getRelativeWidth(25.0),
                                                   height: getRelativeHeight(23.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                        Text(StringConstants.kLblRestaurant)
                                            .font(FontScheme
                                                .kUrbanistRomanMedium(size: getRelativeHeight(12.0)))
                                            .fontWeight(.medium)
                                            .foregroundColor(ColorConstants.Gray100)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(61.0),
                                                   height: getRelativeHeight(15.0),
                                                   alignment: .topLeading)
                                            .padding(.top, getRelativeHeight(11.0))
                                    }
                                    .frame(width: getRelativeWidth(61.0),
                                           height: getRelativeHeight(50.0), alignment: .center)
                                    VStack {
                                        Image("img_twitter")
                                            .resizable()
                                            .frame(width: getRelativeWidth(32.0),
                                                   height: getRelativeHeight(24.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                            .onTapGesture {}
                                        Text(StringConstants.kLblParking)
                                            .font(FontScheme
                                                .kUrbanistRomanMedium(size: getRelativeHeight(12.0)))
                                            .fontWeight(.medium)
                                            .foregroundColor(ColorConstants.Gray100)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(41.0),
                                                   height: getRelativeHeight(15.0),
                                                   alignment: .topLeading)
                                            .padding(.top, getRelativeHeight(12.0))
                                    }
                                    .frame(width: getRelativeWidth(41.0),
                                           height: getRelativeHeight(51.0), alignment: .center)
                                    .padding(.leading, getRelativeWidth(45.0))
                                }
                                .frame(width: getRelativeWidth(353.0),
                                       height: getRelativeHeight(51.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(20.0))
                                .padding(.trailing, getRelativeWidth(47.0))
                                HStack {
                                    VStack {
                                        Image("img_offer")
                                            .resizable()
                                            .frame(width: getRelativeWidth(21.0),
                                                   height: getRelativeHeight(26.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                        Text(StringConstants.kLblMeetingRoom)
                                            .font(FontScheme
                                                .kUrbanistRomanMedium(size: getRelativeHeight(12.0)))
                                            .fontWeight(.medium)
                                            .foregroundColor(ColorConstants.Gray100)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(79.0),
                                                   height: getRelativeHeight(15.0),
                                                   alignment: .topLeading)
                                            .padding(.top, getRelativeHeight(11.0))
                                    }
                                    .frame(width: getRelativeWidth(79.0),
                                           height: getRelativeHeight(53.0), alignment: .center)
                                    VStack {
                                        Image("img_frame_cyan_600")
                                            .resizable()
                                            .frame(width: getRelativeWidth(24.0),
                                                   height: getRelativeWidth(24.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                        Text(StringConstants.kLblElevator)
                                            .font(FontScheme
                                                .kUrbanistRomanMedium(size: getRelativeHeight(12.0)))
                                            .fontWeight(.medium)
                                            .foregroundColor(ColorConstants.Gray100)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(46.0),
                                                   height: getRelativeHeight(15.0),
                                                   alignment: .topLeading)
                                            .padding(.top, getRelativeHeight(11.0))
                                    }
                                    .frame(width: getRelativeWidth(46.0),
                                           height: getRelativeHeight(50.0), alignment: .center)
                                    .padding(.leading, getRelativeWidth(34.0))
                                    VStack {
                                        Image("img_frame_1")
                                            .resizable()
                                            .frame(width: getRelativeWidth(26.0),
                                                   height: getRelativeWidth(26.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                        Text(StringConstants.kLblFitnessCenter)
                                            .font(FontScheme
                                                .kUrbanistRomanMedium(size: getRelativeHeight(12.0)))
                                            .fontWeight(.medium)
                                            .foregroundColor(ColorConstants.Gray100)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(78.0),
                                                   height: getRelativeHeight(15.0),
                                                   alignment: .topLeading)
                                            .padding(.top, getRelativeHeight(9.0))
                                    }
                                    .frame(width: getRelativeWidth(78.0),
                                           height: getRelativeHeight(51.0), alignment: .center)
                                    .padding(.leading, getRelativeWidth(34.0))
                                    VStack {
                                        Image("img_vector")
                                            .resizable()
                                            .frame(width: getRelativeWidth(26.0),
                                                   height: getRelativeWidth(26.0),
                                                   alignment: .center)
                                            .scaledToFit()
                                            .clipped()
                                        Text(StringConstants.kLbl24HoursOpen)
                                            .font(FontScheme
                                                .kUrbanistRomanMedium(size: getRelativeHeight(12.0)))
                                            .fontWeight(.medium)
                                            .foregroundColor(ColorConstants.Gray100)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.leading)
                                            .frame(width: getRelativeWidth(83.0),
                                                   height: getRelativeHeight(15.0),
                                                   alignment: .topLeading)
                                            .padding(.top, getRelativeHeight(11.0))
                                    }
                                    .frame(width: getRelativeWidth(83.0),
                                           height: getRelativeHeight(52.0), alignment: .center)
                                    .padding(.leading, getRelativeWidth(15.0))
                                }
                                .frame(width: getRelativeWidth(372.0),
                                       height: getRelativeHeight(53.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(21.0))
                                .padding(.leading, getRelativeWidth(4.0))
                                .padding(.trailing, getRelativeWidth(26.0))
                                Text(StringConstants.kLblLocation)
                                    .font(FontScheme
                                        .kUrbanistRomanBold(size: getRelativeHeight(20.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(77.0),
                                           height: getRelativeHeight(24.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(28.0))
                                ZStack(alignment: .center) {
                                    GoogleMapView(zoomEnable: .constant(true),
                                                  defaultZoomLevel: .constant(5.0),
                                                  locationEnable: .constant(true))
                                        .frame(width: getRelativeWidth(380.0),
                                               height: getRelativeHeight(180.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 16.0, topRight: 16.0,
                                                                   bottomLeft: 16.0,
                                                                   bottomRight: 16.0))
                                    Image("img_location")
                                        .resizable()
                                        .frame(width: getRelativeWidth(40.0),
                                               height: getRelativeWidth(40.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.vertical, getRelativeHeight(70.0))
                                        .padding(.horizontal, getRelativeWidth(170.0))
                                }
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(380.0),
                                       height: getRelativeHeight(180.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(15.0))
                                HStack {
                                    Text(StringConstants.kLblReview)
                                        .font(FontScheme
                                            .kUrbanistRomanBold(size: getRelativeHeight(20.0)))
                                        .fontWeight(.bold)
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(68.0),
                                               height: getRelativeHeight(24.0),
                                               alignment: .topLeading)
                                    Image("img_star_12x12")
                                        .resizable()
                                        .frame(width: getRelativeWidth(16.0),
                                               height: getRelativeWidth(16.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.leading, getRelativeWidth(12.0))
                                    Text(StringConstants.kLbl48)
                                        .font(FontScheme
                                            .kUrbanistSemiBold(size: getRelativeHeight(16.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Cyan60001)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(22.0),
                                               height: getRelativeHeight(20.0),
                                               alignment: .topLeading)
                                        .padding(.leading, getRelativeWidth(4.0))
                                    Text(StringConstants.kLbl4981Reviews)
                                        .font(FontScheme
                                            .kUrbanistRegular(size: getRelativeHeight(12.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Gray300)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(78.0),
                                               height: getRelativeHeight(15.0),
                                               alignment: .topLeading)
                                        .padding(.leading, getRelativeWidth(8.0))
                                    Text("group2618")
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(120.0),
                                               height: getRelativeHeight(20.0))
                                    Text(StringConstants.kLblSeeAll)
                                        .font(FontScheme
                                            .kUrbanistRomanBold(size: getRelativeHeight(16.0)))
                                        .fontWeight(.bold)
                                        .foregroundColor(ColorConstants.Cyan60001)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(52.0),
                                               height: getRelativeHeight(20.0),
                                               alignment: .topLeading)
                                        .onTapGesture {
                                            hotelDetailsViewModel.nextScreen = "ReviewView"
                                        }
                                }
                                .frame(width: getRelativeWidth(380.0),
                                       height: getRelativeHeight(24.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(30.0))
                                .padding(.trailing, getRelativeWidth(24.0))
                                VStack(spacing: 0) {
                                    ScrollView(.vertical, showsIndicators: false) {
                                        LazyVStack {
                                            ForEach(0 ... 2, id: \.self) { index in
                                                ColumnellipseoneCell()
                                            }
                                        }
                                    }
                                }
                                .frame(width: getRelativeWidth(380.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(19.0))
                                .padding(.trailing, getRelativeWidth(24.0))
                                Picker(StringConstants.kLblMore,
                                       selection: $hotelDetailsViewModel.typebuttontypePicker1) {
                                    ForEach(hotelDetailsViewModel.typebuttontypePicker1Values,
                                            id: \.self) { value in
                                        Text(value)
                                    }
                                }
                                .foregroundColor(ColorConstants.WhiteA700)
                                .font(.system(size: getRelativeHeight(16)))
                                .pickerStyle(MenuPickerStyle())
                            }
                            Group {
                                HStack {
                                    Text(StringConstants.kLbl292)
                                        .font(FontScheme
                                            .kUrbanistRomanBold(size: getRelativeHeight(32.0)))
                                        .fontWeight(.bold)
                                        .foregroundColor(ColorConstants.Cyan60001)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(56.0),
                                               height: getRelativeHeight(39.0),
                                               alignment: .topLeading)
                                    Text(StringConstants.kLblNight)
                                        .font(FontScheme
                                            .kUrbanistRegular(size: getRelativeHeight(14.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Gray200)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(41.0),
                                               height: getRelativeHeight(17.0),
                                               alignment: .topLeading)
                                        .padding(.leading, getRelativeWidth(4.0))
                                    Button(action: {
                                        hotelDetailsViewModel.nextScreen = "SelectdateGuestView"
                                    }, label: {
                                        HStack(spacing: 0) {
                                            Text(StringConstants.kLblBookNow)
                                                .font(FontScheme
                                                    .kUrbanistRomanBold(size: getRelativeHeight(16.0)))
                                                .fontWeight(.bold)
                                                .padding(.horizontal, getRelativeWidth(16.0))
                                                .padding(.vertical, getRelativeHeight(18.0))
                                                .foregroundColor(ColorConstants.WhiteA700)
                                                .minimumScaleFactor(0.5)
                                                .multilineTextAlignment(.center)
                                                .frame(width: getRelativeWidth(263.0),
                                                       height: getRelativeHeight(58.0),
                                                       alignment: .center)
                                                .background(RoundedCorners(topLeft: 29.0,
                                                                           topRight: 29.0,
                                                                           bottomLeft: 29.0,
                                                                           bottomRight: 29.0)
                                                        .fill(ColorConstants.Cyan60001))
                                                .shadow(color: ColorConstants.GreenA7003f,
                                                        radius: 24, x: 4, y: 8)
                                                .padding(.leading, getRelativeWidth(16.0))
                                        }
                                    })
                                    .frame(width: getRelativeWidth(263.0),
                                           height: getRelativeHeight(58.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 29.0, topRight: 29.0,
                                                               bottomLeft: 29.0, bottomRight: 29.0)
                                            .fill(ColorConstants.Cyan60001))
                                    .shadow(color: ColorConstants.GreenA7003f, radius: 24, x: 4,
                                            y: 8)
                                    .padding(.leading, getRelativeWidth(16.0))
                                }
                                .frame(width: getRelativeWidth(380.0),
                                       height: getRelativeHeight(58.0), alignment: .leading)
                                .padding(.top, getRelativeHeight(53.0))
                                .padding(.trailing, getRelativeWidth(24.0))
                            }
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
                    NavigationLink(destination: ReviewView(),
                                   tag: "ReviewView",
                                   selection: $hotelDetailsViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: GalleryView(),
                                   tag: "GalleryView",
                                   selection: $hotelDetailsViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: SelectdateGuestView(),
                                   tag: "SelectdateGuestView",
                                   selection: $hotelDetailsViewModel.nextScreen,
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

struct HotelDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        HotelDetailsView()
    }
}
