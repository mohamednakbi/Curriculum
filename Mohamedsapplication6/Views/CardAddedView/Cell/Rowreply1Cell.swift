import SwiftUI

struct Rowreply1Cell: View {
    var body: some View {
        HStack {
            Image("img_reply")
                .resizable()
                .frame(width: getRelativeWidth(30.0), height: getRelativeWidth(32.0),
                       alignment: .leading)
                .scaledToFit()
            Text(StringConstants.kLblPaypal)
                .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(18.0)))
                .fontWeight(.bold)
                .foregroundColor(ColorConstants.WhiteA700)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(53.0), height: getRelativeHeight(22.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(12.0))
            Text("group2583")
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(202.0), height: getRelativeHeight(20.0),
                       alignment: .leading)
            Image("img_contrast")
                .resizable()
                .frame(width: getRelativeWidth(18.0), height: getRelativeWidth(20.0),
                       alignment: .leading)
                .scaledToFit()
                .padding(.trailing, getRelativeWidth(8.0))
        }
        .frame(width: getRelativeWidth(378.0), alignment: .leading)
        .background(RoundedCorners(topLeft: 16.0, topRight: 16.0, bottomLeft: 16.0,
                                   bottomRight: 16.0)
                .fill(ColorConstants.BlueGray900))
        .shadow(color: ColorConstants.Black90014, radius: 60, x: 0, y: 4)
        .hideNavigationBar()
    }
}

/* struct Rowreply1Cell_Previews: PreviewProvider {

 static var previews: some View {
 			Rowreply1Cell()
 }
 } */
