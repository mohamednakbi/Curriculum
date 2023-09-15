import SwiftUI

struct SplashScreenView: View {
    @StateObject var splashScreenViewModel = SplashScreenViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    Image("img_group158")
                        .resizable()
                        .frame(width: getRelativeWidth(177.0), height: getRelativeHeight(165.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.bottom, getRelativeHeight(5.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.Gray900)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: WelcomeScreenView(),
                                   tag: "WelcomeScreenView",
                                   selection: $splashScreenViewModel.nextScreen,
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

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
