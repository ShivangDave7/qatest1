import SwiftUI

struct Login1View: View {
    @StateObject var login1ViewModel = Login1ViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 0) {
                Group {
                    Image("img_logo_3")
                        .resizable()
                        .frame(width: getRelativeWidth(size: 72.0), height: getRelativeHeight(size: 72.0), alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.top, getRelativeHeight(size: 68.0))
                        .padding(.horizontal, getRelativeWidth(size: 16.0))
                    Text(StringConstants.k_Lbl_welcome)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 20.0)))
                        .foregroundColor(ColorConstants.Indigo900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(size: 102.0), height: getRelativeHeight(size: 30.0), alignment: .center)
                        .padding(.top, getRelativeHeight(size: 16.0))
                        .padding(.horizontal, getRelativeWidth(size: 16.0))
                    Text(StringConstants.k_Msg_sign_in_to_cont)
                        .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 14.0)))
                        .foregroundColor(ColorConstants.Bluegray300)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(size: 139.0), height: getRelativeHeight(size: 25.0), alignment: .center)
                        .padding(.horizontal, getRelativeWidth(size: 16.0))
                    HStack {
                        Spacer()
                        Image("img_email_icon")
                            .resizable()
                            .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 24.0), alignment: .center)
                            .scaledToFit()
                            .clipped()
                        TextField(StringConstants.k_Lbl_your_email, text: $login1ViewModel.group42Text)
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 14.0)))
                            .foregroundColor(ColorConstants.Bluegray300)
                            .padding()
                    }
                    .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 48.0), alignment: .leading)
                    .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).stroke(ColorConstants.Blue50, lineWidth: 1))
                    .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(ColorConstants.WhiteA700))
                    .padding(.top, getRelativeHeight(size: 25.0))
                    .padding(.horizontal, getRelativeWidth(size: 16.0))
                    HStack {
                        Spacer()
                        Image("img_password_icon")
                            .resizable()
                            .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 24.0), alignment: .center)
                            .scaledToFit()
                            .clipped()
                        SecureField(StringConstants.k_Lbl_password, text: $login1ViewModel.group43Text)
                            .font(FontScheme.kPoppinsRegular(size: getRelativeHeight(size: 14.0)))
                            .foregroundColor(ColorConstants.Bluegray300)
                            .padding()
                    }
                    .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 48.0), alignment: .leading)
                    .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).stroke(ColorConstants.Blue50, lineWidth: 1))
                    .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(ColorConstants.WhiteA700))
                    .padding(.top, getRelativeHeight(size: 16.0))
                    .padding(.horizontal, getRelativeWidth(size: 16.0))
                    Text(StringConstants.k_Msg_forgot_password)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 12.0)))
                        .foregroundColor(ColorConstants.LightBlueA200)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(size: 117.0), height: getRelativeHeight(size: 18.0), alignment: .center)
                        .padding(.top, getRelativeHeight(size: 8.0))
                        .padding(.leading, getRelativeWidth(size: 242.0))
                        .padding(.trailing, getRelativeWidth(size: 16.0))
                    Button(action: {}, label: {
                        Text(StringConstants.k_Lbl_sign_in)
                            .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(size: 18.0)))
                            .foregroundColor(ColorConstants.WhiteA700)
                            .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 60.0), alignment: .center)
                    })
                    .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 60.0), alignment: .center)
                    .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(ColorConstants.LightBlueA200))
                    .padding(.top, getRelativeHeight(size: 44.0))
                    .padding(.horizontal, getRelativeWidth(size: 16.0))
                    HStack {
                        Divider()
                            .frame(width: getRelativeWidth(size: 134.0), height: getRelativeHeight(size: 1.0), alignment: .center)
                            .background(ColorConstants.Blue50)
                            .padding(.vertical, getRelativeHeight(size: 10.0))
                        Spacer()
                        Text(StringConstants.k_Lbl_or)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 14.0)))
                            .foregroundColor(ColorConstants.Bluegray300)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(size: 21.0), height: getRelativeHeight(size: 21.0), alignment: .topLeading)
                        Spacer()
                        Divider()
                            .frame(width: getRelativeWidth(size: 137.0), height: getRelativeHeight(size: 1.0), alignment: .center)
                            .background(ColorConstants.Blue50)
                            .padding(.vertical, getRelativeHeight(size: 10.0))
                    }
                    .frame(width: getRelativeWidth(size: 343.0), height: getRelativeHeight(size: 21.0), alignment: .center)
                    .padding(.top, getRelativeHeight(size: 17.0))
                    .padding(.horizontal, getRelativeWidth(size: 16.0))
                }
                Group {
                    VStack(spacing: 0) {
                        ScrollView(.vertical, showsIndicators: false) {
                            LazyVStack {
                                ForEach(0 ... 1, id: \.self) { index in
                                    LoginWithGoogCell()
                                }
                            }
                        }
                    }
                    .frame(width: getRelativeWidth(size: 343.0), alignment: .center)
                    .padding(.top, getRelativeHeight(size: 16.0))
                    .padding(.horizontal, getRelativeWidth(size: 16.0))
                    Text(StringConstants.k_Msg_don_t_have_an_a3)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 12.0)))
                        .foregroundColor(ColorConstants.IndigoA200)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(size: 212.0), height: getRelativeHeight(size: 18.0), alignment: .center)
                        .padding(.top, getRelativeHeight(size: 53.0))
                        .padding(.bottom, getRelativeHeight(size: 20.0))
                        .padding(.horizontal, getRelativeWidth(size: 16.0))
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 768.0), alignment: .topLeading)
            .background(ColorConstants.WhiteA700)
            .padding(.top, getRelativeHeight(size: 30.0))
            .padding(.bottom, getRelativeHeight(size: 10.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(ColorConstants.WhiteA700)
        .ignoresSafeArea()
        .hideNavigationBar()
    }
}

struct Login1View_Previews: PreviewProvider {
    static var previews: some View {
        Login1View()
    }
}
