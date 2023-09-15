import SwiftUI

struct RowstarCell: View {
    var body: some View {
        HStack {
            Image("img_star")
                .resizable()
                .frame(width: getRelativeWidth(14.0), height: getRelativeWidth(16.0),
                       alignment: .leading)
                .scaledToFit()
            Text(StringConstants.kLbl5)
                .font(FontScheme.kUrbanistSemiBold(size: getRelativeHeight(16.0)))
                .fontWeight(.semibold)
                .foregroundColor(ColorConstants.WhiteA700)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(8.0), height: getRelativeHeight(20.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(8.0))
        }
        .frame(width: getRelativeWidth(72.0), alignment: .leading)
        .background(RoundedCorners(topLeft: 19.0, topRight: 19.0, bottomLeft: 19.0,
                                   bottomRight: 19.0)
                .fill(ColorConstants.Cyan60001))
        .hideNavigationBar()
    }
}

/* struct RowstarCell_Previews: PreviewProvider {

 static var previews: some View {
 			RowstarCell()
 }
 } */
