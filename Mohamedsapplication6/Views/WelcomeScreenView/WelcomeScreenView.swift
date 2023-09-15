import SwiftUI

struct WelcomeScreenView: View {
    @StateObject var welcomeScreenViewModel = WelcomeScreenViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    Text("group2503")
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(252.0), height: getRelativeHeight(540.0))
                    Text(StringConstants.kLblWelcomeTo)
                        .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(48.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.WhiteA700)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(252.0), height: getRelativeHeight(58.0),
                               alignment: .topLeading)
                    Text(StringConstants.kLblComfort)
                        .font(FontScheme.kUrbanistRomanBlack(size: getRelativeHeight(64.0)))
                        .fontWeight(.black)
                        .foregroundColor(ColorConstants.Cyan600)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(242.0), height: getRelativeHeight(77.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(23.0))
                    Text(StringConstants.kMsgTheBestHotel)
                        .font(FontScheme.kUrbanistSemiBold(size: getRelativeHeight(18.0)))
                        .fontWeight(.semibold)
                        .foregroundColor(ColorConstants.WhiteA700)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(51.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(41.0))
                        .padding(.trailing, getRelativeWidth(36.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.Gray900)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: OnboardingOneView(),
                                   tag: "OnboardingOneView",
                                   selection: $welcomeScreenViewModel.nextScreen,
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

struct WelcomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreenView()
    }
}
