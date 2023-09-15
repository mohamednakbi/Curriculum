import SwiftUI

struct ChoosePaymentMethodView: View {
    @StateObject var choosePaymentMethodViewModel = ChoosePaymentMethodViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
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
                        Text(StringConstants.kLblPayment)
                            .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(24.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .padding(.leading, getRelativeWidth(16.0))
                        Image("img_qrcode")
                            .resizable()
                            .frame(width: getRelativeWidth(28.0), height: getRelativeWidth(28.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.horizontal, getRelativeWidth(24.0))
                    }
                    .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(52.0),
                           alignment: .leading)
                    VStack {
                        HStack {
                            Text(StringConstants.kLblPaymentMethods)
                                .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(18.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(147.0),
                                       height: getRelativeHeight(22.0), alignment: .topLeading)
                            Spacer()
                            Text(StringConstants.kLblAddNewCard)
                                .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Cyan60001)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(109.0),
                                       height: getRelativeHeight(20.0), alignment: .topLeading)
                                .onTapGesture {
                                    choosePaymentMethodViewModel.nextScreen = "AddNewCardView"
                                }
                        }
                        .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(22.0),
                               alignment: .center)
                        VStack(spacing: 0) {
                            ScrollView(.vertical, showsIndicators: false) {
                                LazyVStack {
                                    ForEach(0 ... 2, id: \.self) { index in
                                        RowreplyCell()
                                    }
                                }
                            }
                        }
                        .frame(width: getRelativeWidth(380.0), alignment: .center)
                        .padding(.top, getRelativeHeight(28.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(726.0),
                           alignment: .center)
                    Button(action: {
                        choosePaymentMethodViewModel.nextScreen = "AddNewCardView"
                    }, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblContinue)
                                .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.bold)
                                .padding(.trailing, getRelativeWidth(156.0))
                                .padding(.leading, getRelativeWidth(30.0))
                                .padding(.vertical, getRelativeHeight(17.0))
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(380.0),
                                       height: getRelativeHeight(55.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 27.0, topRight: 27.0,
                                                           bottomLeft: 27.0, bottomRight: 27.0)
                                        .fill(ColorConstants.Cyan60001))
                                .shadow(color: ColorConstants.GreenA7003f, radius: 24, x: 4, y: 8)
                                .padding(.bottom, getRelativeHeight(48.0))
                                .padding(.horizontal, getRelativeWidth(24.0))
                        }
                    })
                    .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(55.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 27.0, topRight: 27.0, bottomLeft: 27.0,
                                               bottomRight: 27.0)
                            .fill(ColorConstants.Cyan60001))
                    .shadow(color: ColorConstants.GreenA7003f, radius: 24, x: 4, y: 8)
                    .padding(.bottom, getRelativeHeight(48.0))
                    .padding(.horizontal, getRelativeWidth(24.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.Gray900)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: AddNewCardView(),
                                   tag: "AddNewCardView",
                                   selection: $choosePaymentMethodViewModel.nextScreen,
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

struct ChoosePaymentMethodView_Previews: PreviewProvider {
    static var previews: some View {
        ChoosePaymentMethodView()
    }
}
