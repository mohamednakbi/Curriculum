import SwiftUI

struct ViewTicketView: View {
    @StateObject var viewTicketViewModel = ViewTicketViewModel()
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
                    Text(StringConstants.kLblTicket)
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
                    Text(StringConstants.kMsgRoyalePresiden)
                        .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(20.0)))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.WhiteA700)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(203.0), height: getRelativeHeight(24.0),
                               alignment: .topLeading)
                    ZStack {
                        Image("img_vector_white_a700")
                            .resizable()
                            .frame(width: getRelativeWidth(224.0), height: getRelativeWidth(224.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.all, getRelativeWidth(16.0))
                            .padding(.vertical, getRelativeHeight(16.0))
                            .padding(.horizontal, getRelativeWidth(16.0))
                    }
                    .hideNavigationBar()
                    .frame(width: getRelativeWidth(256.0), height: getRelativeWidth(256.0),
                           alignment: .center)
                    .background(ColorConstants.BlueGray900)
                    .padding(.top, getRelativeHeight(11.0))
                    Divider()
                        .frame(width: getRelativeWidth(335.0), height: getRelativeHeight(2.0),
                               alignment: .center)
                        .background(ColorConstants.Gray800)
                        .padding(.top, getRelativeHeight(18.0))
                    VStack(spacing: 0) {
                        ScrollView(.vertical, showsIndicators: false) {
                            LazyVStack {
                                ForEach(0 ... 2, id: \.self) { index in
                                    RownameCell()
                                }
                            }
                        }
                    }
                    .frame(width: getRelativeWidth(313.0), alignment: .center)
                    .padding(.vertical, getRelativeHeight(53.0))
                    .padding(.leading, getRelativeWidth(17.0))
                    .padding(.trailing, getRelativeWidth(6.0))
                }
                .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(641.0),
                       alignment: .center)
                .background(Image("img_group_blue_gray_900")
                    .resizable()
                    .scaledToFit())
                .padding(.top, getRelativeHeight(56.0))
                .padding(.horizontal, getRelativeWidth(24.0))
                Button(action: {}, label: {
                    HStack(spacing: 0) {
                        Text(StringConstants.kLblDownloadTicket)
                            .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(16.0)))
                            .fontWeight(.bold)
                            .padding(.trailing, getRelativeWidth(127.0))
                            .padding(.leading, getRelativeWidth(30.0))
                            .padding(.vertical, getRelativeHeight(17.0))
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.center)
                            .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(55.0),
                                   alignment: .center)
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
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(ColorConstants.Gray900)
        .ignoresSafeArea()
        .hideNavigationBar()
    }
}

struct ViewTicketView_Previews: PreviewProvider {
    static var previews: some View {
        ViewTicketView()
    }
}
