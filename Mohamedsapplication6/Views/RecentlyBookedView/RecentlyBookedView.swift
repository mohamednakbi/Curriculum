import SwiftUI

struct RecentlyBookedView: View {
    @StateObject var recentlyBookedViewModel = RecentlyBookedViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
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
                    Text(StringConstants.kLblRecentlyBooked)
                        .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(24.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.WhiteA700)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .padding(.leading, getRelativeWidth(16.0))
                    HStack {
                        Image("img_menu_28x28")
                            .resizable()
                            .frame(width: getRelativeWidth(28.0), height: getRelativeWidth(28.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                        Image("img_videocamera")
                            .resizable()
                            .frame(width: getRelativeWidth(28.0), height: getRelativeWidth(28.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.leading, getRelativeWidth(20.0))
                    }
                    .frame(width: getRelativeWidth(76.0), height: getRelativeHeight(28.0),
                           alignment: .leading)
                    .padding(.horizontal, getRelativeWidth(24.0))
                }
                .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(51.0),
                       alignment: .leading)
                VStack(spacing: 0) {
                    ScrollView(.vertical, showsIndicators: false) {
                        LazyVStack {
                            ForEach(0 ... 4, id: \.self) { index in
                                Rowrectanglefour2Cell()
                            }
                        }
                    }
                }
                .frame(width: getRelativeWidth(380.0), alignment: .center)
                .padding(.top, getRelativeHeight(22.0))
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

struct RecentlyBookedView_Previews: PreviewProvider {
    static var previews: some View {
        RecentlyBookedView()
    }
}
