import SwiftUI

struct LoginWithGoogCell: View {
    var body: some View {
        HStack {
            Image("img_googleicon")
                .resizable()
                .frame(width: getRelativeWidth(size: 22.0), height: getRelativeHeight(size: 57.0), alignment: .leading)
                .scaledToFit()
                .padding(.leading, getRelativeWidth(size: 15.0))
            Text(StringConstants.k_Msg_login_with_goog)
                .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(size: 14.0)))
                .foregroundColor(ColorConstants.Bluegray300)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .frame(width: getRelativeWidth(size: 146.0), height: getRelativeHeight(size: 25.0), alignment: .center)
                .padding(.leading, getRelativeWidth(size: 58.0))
                .padding(.trailing, getRelativeWidth(size: 98.0))
        }
        .frame(width: getRelativeWidth(size: 341.0), alignment: .leading)
        .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).stroke(ColorConstants.Blue50, lineWidth: 1))
        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(Color.clear.opacity(0.7)))
        .shadow(color: ColorConstants.LightBlueA2003d, radius: 30, x: 0, y: 10)
        .hideNavigationBar()
    }
}

/* struct LoginWithGoogCell_Previews: PreviewProvider {

 static var previews: some View {
 			LoginWithGoogCell()
 }
 } */
