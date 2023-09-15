import SwiftUI

struct AddNewCardView: View {
    @StateObject var addNewCardViewModel = AddNewCardViewModel()
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
                        Text(StringConstants.kLblAddNewCard)
                            .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(24.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .padding(.leading, getRelativeWidth(16.0))
                    }
                    .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(48.0),
                           alignment: .leading)
                    VStack {
                        Image("img_card1")
                            .resizable()
                            .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(240.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                        HStack {
                            TextField(StringConstants.kLblDanielAustin,
                                      text: $addNewCardViewModel.cardholdernameText)
                                .font(FontScheme.kUrbanistSemiBold(size: getRelativeHeight(14.0)))
                                .foregroundColor(ColorConstants.WhiteA700)
                                .padding()
                        }
                        .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(56.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                                   bottomRight: 12.0)
                                .fill(ColorConstants.BlueGray900))
                        .padding(.top, getRelativeHeight(28.0))
                        HStack {
                            TextField(StringConstants.kMsg637327284797,
                                      text: $addNewCardViewModel.cardnumberText)
                                .font(FontScheme.kUrbanistSemiBold(size: getRelativeHeight(14.0)))
                                .foregroundColor(ColorConstants.WhiteA700)
                                .padding()
                        }
                        .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(56.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                                   bottomRight: 12.0)
                                .fill(ColorConstants.BlueGray900))
                        .padding(.top, getRelativeHeight(28.0))
                        HStack {
                            HStack {
                                TextField(StringConstants.kLbl0230,
                                          text: $addNewCardViewModel.expirydateText)
                                    .font(FontScheme
                                        .kUrbanistSemiBold(size: getRelativeHeight(14.0)))
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .padding()
                            }
                            .frame(width: getRelativeWidth(182.0), height: getRelativeHeight(56.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                       bottomLeft: 12.0, bottomRight: 12.0)
                                    .fill(ColorConstants.BlueGray900))
                            .padding(.trailing, getRelativeWidth(8.0))
                            Spacer()
                            HStack {
                                TextField(StringConstants.kLbl190,
                                          text: $addNewCardViewModel.cvvText)
                                    .font(FontScheme
                                        .kUrbanistSemiBold(size: getRelativeHeight(14.0)))
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .padding()
                            }
                            .frame(width: getRelativeWidth(182.0), height: getRelativeHeight(56.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                       bottomLeft: 12.0, bottomRight: 12.0)
                                    .fill(ColorConstants.BlueGray900))
                            .padding(.leading, getRelativeWidth(8.0))
                        }
                        .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(56.0),
                               alignment: .center)
                        .padding(.vertical, getRelativeHeight(28.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(730.0),
                           alignment: .center)
                    Button(action: {
                        addNewCardViewModel.nextScreen = "CardAddedView"
                    }, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblAddNewCard)
                                .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.bold)
                                .padding(.trailing, getRelativeWidth(135.0))
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
                    NavigationLink(destination: CardAddedView(),
                                   tag: "CardAddedView",
                                   selection: $addNewCardViewModel.nextScreen,
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

struct AddNewCardView_Previews: PreviewProvider {
    static var previews: some View {
        AddNewCardView()
    }
}
