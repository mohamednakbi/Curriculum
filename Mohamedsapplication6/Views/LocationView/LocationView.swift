import SwiftUI

struct LocationView: View {
    @StateObject var locationViewModel = LocationViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                ZStack(alignment: .center) {
                    GoogleMapView(zoomEnable: .constant(true), defaultZoomLevel: .constant(5.0),
                                  locationEnable: .constant(true))
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(882.0),
                               alignment: .center)
                    Image("img_location")
                        .resizable()
                        .frame(width: getRelativeWidth(42.0), height: getRelativeHeight(50.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.bottom, getRelativeHeight(438.0))
                        .padding(.horizontal, getRelativeWidth(192.75))
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
                            Text(StringConstants.kLblHotelLocation)
                                .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(24.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .padding(.leading, getRelativeWidth(16.0))
                        }
                        .frame(width: UIScreen.main.bounds.width - 20,
                               height: getRelativeHeight(29.0), alignment: .leading)
                        .padding(.bottom, getRelativeHeight(65.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(114.0),
                           alignment: .center)
                    .background(LinearGradient(gradient: Gradient(colors: [ColorConstants.Gray80000,
                                                                           ColorConstants
                                                                               .Gray90002]),
                        startPoint: .topLeading, endPoint: .bottomTrailing))
                    .padding(.bottom, getRelativeHeight(768.0))
                }
                .hideNavigationBar()
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(882.0),
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

struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView()
    }
}
