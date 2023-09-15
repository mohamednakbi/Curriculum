import SwiftUI

struct Sizemediumtypef1Cell: View {
    var body: some View {
        Text(StringConstants.kLblAllHotel)
            .frame(width: getRelativeWidth(99.0), alignment: .center)
            .font(FontScheme.kUrbanistSemiBold(size: getRelativeHeight(16.0)))
            .fontWeight(.semibold)
            .padding(.horizontal, getRelativeWidth(20.0))
            .padding(.vertical, getRelativeHeight(8.0))
            .foregroundColor(ColorConstants.WhiteA700)
            .minimumScaleFactor(0.5)
            .multilineTextAlignment(.center)
            .background(ColorConstants.Cyan60001)
    }
}

/* struct Sizemediumtypef1Cell_Previews: PreviewProvider {

 static var previews: some View {
 			Sizemediumtypef1Cell()
 }
 } */
