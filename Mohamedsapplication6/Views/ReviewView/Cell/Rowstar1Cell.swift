import SwiftUI

struct Rowstar1Cell: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            HStack {
                Image("img_star")
                    .resizable()
                    .frame(width: getRelativeWidth(14.0), height: getRelativeWidth(16.0),
                           alignment: .leading)
                    .scaledToFit()
                Text(StringConstants.kLblAll)
                    .font(FontScheme.kUrbanistSemiBold(size: getRelativeHeight(16.0)))
                    .fontWeight(.semibold)
                    .foregroundColor(ColorConstants.WhiteA700)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(17.0), height: getRelativeHeight(20.0),
                           alignment: .leading)
                    .padding(.leading, getRelativeWidth(8.0))
            }
            .frame(width: getRelativeWidth(81.0), alignment: .leading)
            .background(RoundedCorners(topLeft: 19.0, topRight: 19.0, bottomLeft: 19.0,
                                       bottomRight: 19.0)
                    .fill(ColorConstants.Cyan60001))
        }
        .hideNavigationBar()
    }
}

/* struct Rowstar1Cell_Previews: PreviewProvider {

 static var previews: some View {
 			Rowstar1Cell()
 }
 } */
