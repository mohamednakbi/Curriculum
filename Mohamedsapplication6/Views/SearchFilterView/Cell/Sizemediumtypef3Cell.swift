import SwiftUI

struct Sizemediumtypef3Cell: View {
    var body: some View {
        Text(StringConstants.kMsgHighestPopular)
            .frame(width: getRelativeWidth(171.0), alignment: .center)
            .font(FontScheme.kUrbanistSemiBold(size: getRelativeHeight(16.0)))
            .fontWeight(.semibold)
            .padding(.horizontal, getRelativeWidth(20.0))
            .padding(.vertical, getRelativeHeight(7.0))
            .foregroundColor(ColorConstants.WhiteA700)
            .minimumScaleFactor(0.5)
            .multilineTextAlignment(.center)
            .background(ColorConstants.Cyan60001)
    }
}

/* struct Sizemediumtypef3Cell_Previews: PreviewProvider {

 static var previews: some View {
 			Sizemediumtypef3Cell()
 }
 } */
