import SwiftUI

struct LoginView: View {
    @StateObject var loginViewModel = LoginViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                VStack {
                    HStack {
                        HStack {
                            Image("img_lefticon_3")
                                .resizable()
                                .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 23.15), alignment: .center)
                                .scaledToFit()
                                .clipped()
                            Text(StringConstants.k_Lbl_log_in)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 16.0)))
                                .foregroundColor(ColorConstants.Black900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(size: 65.0), height: getRelativeHeight(size: 20.58), alignment: .topLeading)
                                .padding(.vertical, getRelativeHeight(size: 1.0))
                                .padding(.leading, getRelativeWidth(size: 15.0))
                        }
                        .frame(width: getRelativeWidth(size: 104.0), height: getRelativeHeight(size: 23.15), alignment: .leading)
                        .padding(.leading, getRelativeWidth(size: 21.0))
                        .padding(.trailing, getRelativeWidth(size: 250.0))
                    }
                    .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(size: 23.15), alignment: .leading)
                    Text(StringConstants.k_Msg_welcome_let_s)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 34.0)))
                        .foregroundColor(ColorConstants.Black900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(size: 267.0), height: getRelativeHeight(size: 80.0), alignment: .topLeading)
                        .padding(.top, getRelativeHeight(size: 42.85))
                        .padding(.leading, getRelativeWidth(size: 34.0))
                        .padding(.trailing, getRelativeWidth(size: 74.0))
                        .opacity(0.8)
                    Text(StringConstants.k_Msg_lorem_ipsum_dol)
                        .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(size: 14.0)))
                        .foregroundColor(ColorConstants.Gray900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(size: 306.0), height: getRelativeHeight(size: 40.0), alignment: .topLeading)
                        .padding(.top, getRelativeHeight(size: 14.0))
                        .padding(.leading, getRelativeWidth(size: 32.0))
                        .padding(.trailing, getRelativeWidth(size: 37.0))
                        .opacity(0.4)
                    Image("img_logo_1")
                        .resizable()
                        .frame(width: getRelativeWidth(size: 122.0), height: getRelativeHeight(size: 122.0), alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.top, getRelativeHeight(size: 41.0))
                        .padding(.horizontal, getRelativeWidth(size: 32.0))
                    HStack {
                        TextField(StringConstants.k_Lbl_email, text: $loginViewModel.emailText)
                            .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(size: 14.0)))
                            .foregroundColor(ColorConstants.Gray900)
                            .padding()
                    }
                    .frame(width: getRelativeWidth(size: 311.0), height: getRelativeHeight(size: 60.0), alignment: .leading)
                    .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).stroke(style: StrokeStyle(lineWidth: 1, dash: [0, 0])))
                    .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(Color.clear.opacity(0.7)))
                    .padding(.top, getRelativeHeight(size: 52.0))
                    .padding(.horizontal, getRelativeWidth(size: 32.0))
                    HStack {
                        SecureField(StringConstants.k_Lbl_password, text: $loginViewModel.passwordText)
                            .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(size: 14.0)))
                            .foregroundColor(ColorConstants.Gray900)
                            .padding()
                    }
                    .frame(width: getRelativeWidth(size: 311.0), height: getRelativeHeight(size: 60.0), alignment: .leading)
                    .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).stroke(style: StrokeStyle(lineWidth: 1, dash: [0, 0])))
                    .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(Color.clear.opacity(0.7)))
                    .padding(.top, getRelativeHeight(size: 24.0))
                    .padding(.horizontal, getRelativeWidth(size: 32.0))
                    Text(StringConstants.k_Msg_forgot_password)
                        .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(size: 12.0)))
                        .foregroundColor(ColorConstants.LightBlueA200)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(size: 108.0), height: getRelativeHeight(size: 20.0), alignment: .topLeading)
                        .padding(.top, getRelativeHeight(size: 8.0))
                        .padding(.leading, getRelativeWidth(size: 235.0))
                        .padding(.trailing, getRelativeWidth(size: 32.0))
                    Button(action: {}, label: {
                        Text(StringConstants.k_Lbl_next)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 18.0)))
                            .foregroundColor(ColorConstants.WhiteA700)
                            .frame(width: getRelativeWidth(size: 311.0), height: getRelativeHeight(size: 60.0), alignment: .center)
                    })
                    .frame(width: getRelativeWidth(size: 311.0), height: getRelativeHeight(size: 60.0), alignment: .center)
                    .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(ColorConstants.LightBlue400))
                    .padding(.top, getRelativeHeight(size: 34.0))
                    .padding(.horizontal, getRelativeWidth(size: 32.0))
                    Text(StringConstants.k_Msg_don_t_have_an_a)
                        .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(size: 12.0)))
                        .foregroundColor(ColorConstants.Gray900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(size: 197.0), height: getRelativeHeight(size: 20.0), alignment: .topLeading)
                        .padding(.top, getRelativeHeight(size: 20.0))
                        .padding(.horizontal, getRelativeWidth(size: 32.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 721.0), alignment: .leading)
                .padding(.top, getRelativeHeight(size: 14.0))
                .padding(.bottom, getRelativeHeight(size: 20.0))
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

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
