import SwiftUI

struct RefundMethodView: View {
    @StateObject var refundMethodViewModel = RefundMethodViewModel()
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
                    Text(StringConstants.kMsgCancelHotelBo)
                        .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(24.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.WhiteA700)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .padding(.leading, getRelativeWidth(16.0))
                }
                .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(51.0),
                       alignment: .leading)
                VStack {
                    Text(StringConstants.kMsgPleaseSelectA)
                        .font(FontScheme.kUrbanistRegular(size: getRelativeHeight(18.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.WhiteA700)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(369.0), height: getRelativeHeight(48.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(8.0))
                        .padding(.trailing, getRelativeWidth(10.0))
                    VStack(spacing: 0) {
                        ScrollView(.vertical, showsIndicators: false) {
                            LazyVStack {
                                ForEach(0 ... 2, id: \.self) { index in
                                    Rowreply2Cell()
                                }
                            }
                        }
                    }
                    .frame(width: getRelativeWidth(380.0), alignment: .center)
                    .padding(.top, getRelativeHeight(28.0))
                    HStack {
                        Image("img_image_27x44_1")
                            .resizable()
                            .frame(width: getRelativeWidth(44.0), height: getRelativeHeight(27.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .background(RoundedCorners(topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0,
                                                       bottomRight: 4.0))
                        Text(StringConstants.kMsg)
                            .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(18.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(129.0), height: getRelativeHeight(22.0),
                                   alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(12.0))
                        Text("group2526")
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(119.0), height: getRelativeHeight(20.0))
                        VStack {
                            ZStack {}
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(11.0),
                                       height: getRelativeWidth(11.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 5.0, topRight: 5.0,
                                                           bottomLeft: 5.0, bottomRight: 5.0)
                                        .fill(ColorConstants.Cyan60001))
                        }
                        .frame(width: getRelativeWidth(20.0), height: getRelativeWidth(20.0),
                               alignment: .center)
                        .overlay(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                bottomRight: 10.0)
                                .stroke(ColorConstants.Cyan60001,
                                        lineWidth: 3))
                        .background(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                                   bottomRight: 10.0)
                                .fill(Color.clear.opacity(0.7)))
                        .padding(.trailing, getRelativeWidth(8.0))
                    }
                    .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(80.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 16.0, topRight: 16.0, bottomLeft: 16.0,
                                               bottomRight: 16.0)
                            .fill(ColorConstants.BlueGray900))
                    .shadow(color: ColorConstants.Black90014, radius: 60, x: 0, y: 4)
                    .padding(.top, getRelativeHeight(28.0))
                    Text("group2522")
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(231.0), height: getRelativeHeight(173.0))
                    HStack {
                        Text(StringConstants.kLblPaid4795)
                            .font(FontScheme.kUrbanistRegular(size: getRelativeHeight(18.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(96.0), height: getRelativeHeight(22.0),
                                   alignment: .topLeading)
                        Spacer()
                        Text(StringConstants.kLblRefund3838)
                            .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(18.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(119.0), height: getRelativeHeight(22.0),
                                   alignment: .topLeading)
                            .padding(.leading, getRelativeWidth(16.0))
                    }
                    .frame(width: getRelativeWidth(231.0), height: getRelativeHeight(22.0),
                           alignment: .center)
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(727.0),
                       alignment: .center)
                Button(action: {
                    refundMethodViewModel.isCancelationsuccessfulViewShow = true
                }, label: {
                    HStack(spacing: 0) {
                        Text(StringConstants.kMsgConfirmCancell)
                            .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(16.0)))
                            .fontWeight(.bold)
                            .padding(.trailing, getRelativeWidth(111.0))
                            .padding(.leading, getRelativeWidth(30.0))
                            .padding(.vertical, getRelativeHeight(17.0))
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(55.0),
                                   alignment: .topLeading)
                            .background(RoundedCorners(topLeft: 27.0, topRight: 27.0,
                                                       bottomLeft: 27.0, bottomRight: 27.0)
                                    .fill(ColorConstants.Cyan60001))
                            .shadow(color: ColorConstants.GreenA7003f, radius: 24, x: 4, y: 8)
                            .padding(.bottom, getRelativeHeight(48.0))
                            .padding(.horizontal, getRelativeWidth(24.0))
                    }
                })
                .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(55.0),
                       alignment: .topLeading)
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
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(ColorConstants.Gray900)
        .ignoresSafeArea()
        .customDialog(isShowing: $refundMethodViewModel.isCancelationsuccessfulViewShow) {
            CancelationsuccessfulView(cancelationsuccessfulViewModel: CancelationsuccessfulViewModel(_isOpen: $refundMethodViewModel
                    .isCancelationsuccessfulViewShow))
        } onTapOutside: { value in
            if value {
                refundMethodViewModel.isCancelationsuccessfulViewShow = false
            }
        }
        .hideNavigationBar()
    }
}

struct RefundMethodView_Previews: PreviewProvider {
    static var previews: some View {
        RefundMethodView()
    }
}
