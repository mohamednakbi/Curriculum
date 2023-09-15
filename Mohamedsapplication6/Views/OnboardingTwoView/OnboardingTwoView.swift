import SwiftUI

struct OnboardingTwoView: View {
    @StateObject var onboardingTwoViewModel = OnboardingTwoViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    Image("img_rectangle1_420x428_2")
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(420.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                    Text(StringConstants.kMsgFindTheBestH)
                        .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(32.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.WhiteA700)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(331.0), height: getRelativeHeight(82.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(44.0))
                        .padding(.horizontal, getRelativeWidth(48.0))
                    Text(StringConstants.kMsgLoremIpsumDol3)
                        .font(FontScheme.kUrbanistRegular(size: getRelativeHeight(16.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.Gray400)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(368.0), height: getRelativeHeight(68.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(11.0))
                        .padding(.horizontal, getRelativeWidth(29.0))
                    Text("group2557")
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(60.0), height: getRelativeHeight(114.0))
                    PageIndicator(numPages: 3, currentPage: .constant(1),
                                  selectedColor: ColorConstants.Cyan600,
                                  unSelectedColor: ColorConstants.Gray800, spacing: 6.0)
                    HStack {
                        Button(action: {
                            onboardingTwoViewModel.nextScreen = "LetsYouInView"
                        }, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kLblSkip)
                                    .font(FontScheme
                                        .kUrbanistRomanBold(size: getRelativeHeight(16.0)))
                                    .fontWeight(.bold)
                                    .padding(.trailing, getRelativeWidth(73.0))
                                    .padding(.leading, getRelativeWidth(30.0))
                                    .padding(.vertical, getRelativeHeight(16.0))
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(180.0),
                                           height: getRelativeHeight(55.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 27.0, topRight: 27.0,
                                                               bottomLeft: 27.0, bottomRight: 27.0)
                                            .fill(ColorConstants.Gray800))
                            }
                        })
                        .frame(width: getRelativeWidth(180.0), height: getRelativeHeight(55.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 27.0, topRight: 27.0, bottomLeft: 27.0,
                                                   bottomRight: 27.0)
                                .fill(ColorConstants.Gray800))
                        Spacer()
                        Button(action: {}, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kLblNext)
                                    .font(FontScheme
                                        .kUrbanistRomanBold(size: getRelativeHeight(16.0)))
                                    .fontWeight(.bold)
                                    .padding(.trailing, getRelativeWidth(72.0))
                                    .padding(.leading, getRelativeWidth(30.0))
                                    .padding(.vertical, getRelativeHeight(16.0))
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(180.0),
                                           height: getRelativeHeight(54.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 27.0, topRight: 27.0,
                                                               bottomLeft: 27.0, bottomRight: 27.0)
                                            .fill(ColorConstants.Cyan60001))
                                    .padding(.leading, getRelativeWidth(20.0))
                            }
                        })
                        .frame(width: getRelativeWidth(180.0), height: getRelativeHeight(54.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 27.0, topRight: 27.0, bottomLeft: 27.0,
                                                   bottomRight: 27.0)
                                .fill(ColorConstants.Cyan60001))
                        .padding(.leading, getRelativeWidth(20.0))
                    }
                    .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(55.0),
                           alignment: .center)
                    .padding(.vertical, getRelativeHeight(30.0))
                    .padding(.horizontal, getRelativeWidth(24.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.Gray900)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: OnboardingThreeView(),
                                   tag: "OnboardingThreeView",
                                   selection: $onboardingTwoViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: LetsYouInView(),
                                   tag: "LetsYouInView",
                                   selection: $onboardingTwoViewModel.nextScreen,
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

struct OnboardingTwoView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingTwoView()
    }
}
