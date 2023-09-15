import SwiftUI

struct Rowclock1Cell: View {
    var body: some View {
        HStack {
            Image("img_clock_1")
                .resizable()
                .frame(width: getRelativeWidth(81.0), height: getRelativeHeight(80.0),
                       alignment: .leading)
                .scaledToFit()
            VStack(alignment: .leading, spacing: 0) {
                Text(StringConstants.kMsgHotelBookingC)
                    .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(18.0)))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.WhiteA700)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(192.0), height: getRelativeHeight(22.0),
                           alignment: .leading)
                Text(StringConstants.kMsgYouHaveCancel)
                    .font(FontScheme.kUrbanistRomanMedium(size: getRelativeHeight(14.0)))
                    .fontWeight(.medium)
                    .foregroundColor(ColorConstants.Gray400)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(241.0), height: getRelativeHeight(17.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(7.0))
            }
            .frame(width: getRelativeWidth(241.0), height: getRelativeHeight(46.0),
                   alignment: .leading)
            .padding(.top, getRelativeHeight(17.0))
            .padding(.bottom, getRelativeHeight(16.0))
            .padding(.leading, getRelativeWidth(20.0))
        }
        .frame(width: getRelativeWidth(378.0), alignment: .leading)
        .background(RoundedCorners(topLeft: 16.0, topRight: 16.0, bottomLeft: 16.0,
                                   bottomRight: 16.0)
                .fill(ColorConstants.BlueGray900))
        .shadow(color: ColorConstants.Black9000c, radius: 60, x: 0, y: 4)
        .hideNavigationBar()
    }
}

/* struct Rowclock1Cell_Previews: PreviewProvider {

 static var previews: some View {
 			Rowclock1Cell()
 }
 } */
