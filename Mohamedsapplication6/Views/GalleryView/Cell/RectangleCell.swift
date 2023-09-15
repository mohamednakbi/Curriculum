import SwiftUI

struct RectangleCell: View {
    var body: some View {
        Image("img_rectangle10_140x182")
            .frame(width: getRelativeWidth(180.0), alignment: .leading)
            .resizable()
            .scaledToFit()
            .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                       bottomRight: 12.0))
    }
}

/* struct RectangleCell_Previews: PreviewProvider {

 static var previews: some View {
 			RectangleCell()
 }
 } */
