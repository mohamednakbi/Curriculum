import SwiftUI

struct SearchTypeView: View {
    @StateObject var searchTypeViewModel = SearchTypeViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                HStack {
                    Spacer()
                    Image("img_search_cyan_600_01_20x20")
                        .resizable()
                        .frame(width: getRelativeWidth(20.0), height: getRelativeWidth(20.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.vertical, getRelativeHeight(18.0))
                        .padding(.leading, getRelativeWidth(20.0))
                        .padding(.trailing, getRelativeWidth(12.0))
                    TextField(StringConstants.kLblHotel, text: $searchTypeViewModel.searchbar)
                        .font(FontScheme.kUrbanistSemiBold(size: getRelativeHeight(14.0)))
                        .foregroundColor(ColorConstants.WhiteA700)
                        .padding()
                    Image("img_menu_cyan_600_01")
                        .resizable()
                        .frame(width: getRelativeWidth(13.0), height: getRelativeHeight(12.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .overlay(RoundedCorners().stroke(ColorConstants.Cyan60001, lineWidth: 1))
                        .background(RoundedCorners().fill(Color.clear.opacity(0.7)))
                        .padding(.vertical, getRelativeHeight(21.0))
                        .padding(.leading, getRelativeWidth(30.0))
                        .padding(.trailing, getRelativeWidth(23.0))
                    Spacer()
                }
                .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(56.0),
                       alignment: .center)
                .overlay(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                        bottomRight: 12.0)
                        .stroke(ColorConstants.Cyan60001,
                                lineWidth: 1))
                .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                           bottomRight: 12.0)
                        .fill(ColorConstants.Cyan60014))
                .padding(.horizontal, getRelativeWidth(24.0))
                HStack(spacing: 0) {
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            ForEach(0 ... 4, id: \.self) { index in
                                Sizemediumtypef2Cell()
                            }
                        }
                    }
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .trailing)
                .padding(.top, getRelativeHeight(24.0))
                Text(StringConstants.kLblRecent)
                    .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(18.0)))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.WhiteA700)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(56.0), height: getRelativeHeight(22.0),
                           alignment: .topLeading)
                    .padding(.top, getRelativeHeight(29.0))
                    .padding(.leading, getRelativeWidth(24.0))
                HStack {
                    Text(StringConstants.kLblPalazzoHotel)
                        .font(FontScheme.kUrbanistRomanMedium(size: getRelativeHeight(18.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.Gray400)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(110.0), height: getRelativeHeight(22.0),
                               alignment: .topLeading)
                    Spacer()
                    Image("img_close")
                        .resizable()
                        .frame(width: getRelativeWidth(28.0), height: getRelativeWidth(28.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                }
                .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(28.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(24.0))
                .padding(.horizontal, getRelativeWidth(24.0))
                HStack {
                    Text(StringConstants.kLblBulgariHotel)
                        .font(FontScheme.kUrbanistRomanMedium(size: getRelativeHeight(18.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.Gray400)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(102.0), height: getRelativeHeight(22.0),
                               alignment: .topLeading)
                        .padding(.vertical, getRelativeHeight(5.0))
                    Spacer()
                    Image("img_close")
                        .resizable()
                        .frame(width: getRelativeWidth(28.0), height: getRelativeWidth(28.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                }
                .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(28.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(24.0))
                .padding(.horizontal, getRelativeWidth(24.0))
                HStack {
                    Text(StringConstants.kMsgAmsterdamNeth)
                        .font(FontScheme.kUrbanistRomanMedium(size: getRelativeHeight(18.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.Gray400)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(204.0), height: getRelativeHeight(22.0),
                               alignment: .topLeading)
                    Spacer()
                    Image("img_close")
                        .resizable()
                        .frame(width: getRelativeWidth(28.0), height: getRelativeWidth(28.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                }
                .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(28.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(24.0))
                .padding(.horizontal, getRelativeWidth(24.0))
                HStack {
                    Text(StringConstants.kMsgMartinezCannes)
                        .font(FontScheme.kUrbanistRomanMedium(size: getRelativeHeight(18.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.Gray400)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(184.0), height: getRelativeHeight(22.0),
                               alignment: .topLeading)
                    Spacer()
                    Image("img_close")
                        .resizable()
                        .frame(width: getRelativeWidth(28.0), height: getRelativeWidth(28.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                }
                .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(28.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(24.0))
                .padding(.horizontal, getRelativeWidth(24.0))
                HStack {
                    Text(StringConstants.kMsgLondonUnited)
                        .font(FontScheme.kUrbanistRomanMedium(size: getRelativeHeight(18.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.Gray400)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(198.0), height: getRelativeHeight(22.0),
                               alignment: .topLeading)
                        .padding(.vertical, getRelativeHeight(5.0))
                    Spacer()
                    Image("img_close")
                        .resizable()
                        .frame(width: getRelativeWidth(28.0), height: getRelativeWidth(28.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                }
                .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(28.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(24.0))
                .padding(.horizontal, getRelativeWidth(24.0))
                HStack {
                    Text(StringConstants.kMsgPalmsCasinoHo)
                        .font(FontScheme.kUrbanistRomanMedium(size: getRelativeHeight(18.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.Gray400)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(154.0), height: getRelativeHeight(22.0),
                               alignment: .topLeading)
                    Spacer()
                    Image("img_close")
                        .resizable()
                        .frame(width: getRelativeWidth(28.0), height: getRelativeWidth(28.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                }
                .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(28.0),
                       alignment: .center)
                .padding(.vertical, getRelativeHeight(24.0))
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
        .hideNavigationBar()
    }
}

struct SearchTypeView_Previews: PreviewProvider {
    static var previews: some View {
        SearchTypeView()
    }
}
