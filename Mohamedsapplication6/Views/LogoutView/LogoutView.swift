import SwiftUI

struct LogoutView: View {
    @StateObject var logoutViewModel = LogoutViewModel(_isOpen: .constant(false))
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                Image("img_frame_gray_700")
                    .resizable()
                    .frame(width: getRelativeWidth(38.0), height: getRelativeHeight(3.0),
                           alignment: .center)
                    .scaledToFit()
                    .clipped()
                Text(StringConstants.kLblLogout)
                    .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(24.0)))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.RedA200)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(74.0), height: getRelativeHeight(29.0),
                           alignment: .topLeading)
                    .padding(.top, getRelativeHeight(27.0))
                Text(StringConstants.kMsgAreYouSureYo)
                    .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(20.0)))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.WhiteA700)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(300.0), height: getRelativeHeight(24.0),
                           alignment: .topLeading)
                    .padding(.top, getRelativeHeight(38.0))
                Button(action: {}, label: {
                    HStack(spacing: 0) {
                        Text(StringConstants.kLblLogout)
                            .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(16.0)))
                            .fontWeight(.bold)
                            .padding(.trailing, getRelativeWidth(164.0))
                            .padding(.leading, getRelativeWidth(30.0))
                            .padding(.vertical, getRelativeHeight(16.0))
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.center)
                            .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(55.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 27.0, topRight: 27.0,
                                                       bottomLeft: 27.0, bottomRight: 27.0)
                                    .fill(ColorConstants.Cyan60001))
                            .padding(.top, getRelativeHeight(22.0))
                    }
                })
                .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(55.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 27.0, topRight: 27.0, bottomLeft: 27.0,
                                           bottomRight: 27.0)
                        .fill(ColorConstants.Cyan60001))
                .padding(.top, getRelativeHeight(22.0))
                Button(action: {}, label: {
                    HStack(spacing: 0) {
                        Text(StringConstants.kLblCancel)
                            .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(16.0)))
                            .fontWeight(.bold)
                            .padding(.horizontal, getRelativeWidth(16.0))
                            .padding(.vertical, getRelativeHeight(18.0))
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.center)
                            .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(55.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 27.0, topRight: 27.0,
                                                       bottomLeft: 27.0, bottomRight: 27.0)
                                    .fill(ColorConstants.Gray800))
                            .padding(.vertical, getRelativeHeight(12.0))
                    }
                })
                .frame(width: getRelativeWidth(380.0), height: getRelativeHeight(55.0),
                       alignment: .center)
                .background(RoundedCorners(topLeft: 27.0, topRight: 27.0, bottomLeft: 27.0,
                                           bottomRight: 27.0)
                        .fill(ColorConstants.Gray800))
                .padding(.vertical, getRelativeHeight(12.0))
            }
            .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(330.0),
                   alignment: .center)
            .overlay(RoundedCorners(topLeft: 40.0, topRight: 40.0)
                .stroke(ColorConstants.Gray800, lineWidth: 1))
            .background(RoundedCorners(topLeft: 40.0, topRight: 40.0)
                .fill(ColorConstants.BlueGray90001))
        }
        .frame(width: UIScreen.main.bounds.width)
        .hideNavigationBar()
    }
}

struct LogoutView_Previews: PreviewProvider {
    static var previews: some View {
        LogoutView()
    }
}
