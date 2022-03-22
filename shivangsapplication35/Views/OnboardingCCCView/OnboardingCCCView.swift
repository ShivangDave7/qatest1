import SwiftUI

struct OnboardingCCCView: View {
    @StateObject var onboardingCCCViewModel = OnboardingCCCViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                VStack {
                    HStack {
                        HStack {
                            Image("img_lefticon_1")
                                .resizable()
                                .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 24.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                            Spacer()
                            Text(StringConstants.k_Lbl_lorem_ipsum)
                                .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 16.0)))
                                .foregroundColor(ColorConstants.Indigo900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(size: 113.0), height: getRelativeHeight(size: 24.0), alignment: .topLeading)
                        }
                        .frame(width: getRelativeWidth(size: 234.0), height: getRelativeHeight(size: 24.0), alignment: .leading)
                        .padding(.leading, getRelativeWidth(size: 10.0))
                        .padding(.trailing, getRelativeWidth(size: 131.0))
                    }
                    .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(size: 24.0), alignment: .leading)
                    Image("img_easytouse_1")
                        .resizable()
                        .frame(width: getRelativeWidth(size: 242.0), height: getRelativeHeight(size: 190.0), alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.top, getRelativeHeight(size: 76.0))
                        .padding(.horizontal, getRelativeWidth(size: 32.0))
                    Text(StringConstants.k_Lbl_easy_to_use)
                        .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 28.0)))
                        .foregroundColor(ColorConstants.Gray900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(size: 267.0), height: getRelativeHeight(size: 40.0), alignment: .center)
                        .padding(.top, getRelativeHeight(size: 41.0))
                        .padding(.horizontal, getRelativeWidth(size: 32.0))
                        .opacity(0.8)
                    Text(StringConstants.k_Msg_bootstrap_based)
                        .font(FontScheme.kPoppinsSemiBold(size: getRelativeHeight(size: 16.0)))
                        .foregroundColor(ColorConstants.LightBlueA200)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(size: 204.0), height: getRelativeHeight(size: 48.0), alignment: .center)
                        .padding(.top, getRelativeHeight(size: 12.0))
                        .padding(.horizontal, getRelativeWidth(size: 32.0))
                    Button(action: {}, label: {
                        Text(StringConstants.k_Lbl_continue)
                            .font(FontScheme.kPoppinsBold(size: getRelativeHeight(size: 18.0)))
                            .foregroundColor(ColorConstants.WhiteA700)
                            .frame(width: getRelativeWidth(size: 311.0), height: getRelativeHeight(size: 60.0), alignment: .center)
                    })
                    .frame(width: getRelativeWidth(size: 311.0), height: getRelativeHeight(size: 60.0), alignment: .center)
                    .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0, bottomRight: 5.0).fill(ColorConstants.LightBlueA200))
                    .padding(.top, getRelativeHeight(size: 96.0))
                    .padding(.horizontal, getRelativeWidth(size: 32.0))
                    Text(StringConstants.k_Msg_lorem_ipsum_is)
                        .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(size: 12.0)))
                        .foregroundColor(ColorConstants.Black900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(size: 259.0), height: getRelativeHeight(size: 40.0), alignment: .center)
                        .padding(.top, getRelativeHeight(size: 23.0))
                        .padding(.horizontal, getRelativeWidth(size: 32.0))
                    HStack {
                        HStack {
                            Image("img_lefticon_2")
                                .resizable()
                                .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 23.15), alignment: .center)
                                .scaledToFit()
                                .clipped()
                            Text(StringConstants.k_Lbl_previous)
                                .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(size: 12.0)))
                                .foregroundColor(ColorConstants.Black900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(size: 53.0), height: getRelativeHeight(size: 20.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(size: 7.0))
                            PageIndicator(numPages: 4, currentPage: .constant(1), selectedColor: ColorConstants.LightBlueA200, unSelectedColor: ColorConstants.Bluegray700, spacing: 8.0)
                        }
                        .frame(width: getRelativeWidth(size: 192.0), height: getRelativeHeight(size: 24.0), alignment: .center)
                        .padding(.leading, getRelativeWidth(size: 20.0))
                        Spacer()
                        HStack {
                            Text(StringConstants.k_Lbl_next)
                                .font(FontScheme.kPoppinsMedium(size: getRelativeHeight(size: 12.0)))
                                .foregroundColor(ColorConstants.Black900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.trailing)
                                .frame(width: getRelativeWidth(size: 53.0), height: getRelativeHeight(size: 20.0), alignment: .topTrailing)
                            Image("img_righticon")
                                .resizable()
                                .frame(width: getRelativeWidth(size: 24.0), height: getRelativeHeight(size: 23.15), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.leading, getRelativeWidth(size: 7.0))
                        }
                        .frame(width: getRelativeWidth(size: 84.0), height: getRelativeHeight(size: 24.0), alignment: .center)
                        .padding(.trailing, getRelativeWidth(size: 16.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 24.0), alignment: .leading)
                    .padding(.top, getRelativeHeight(size: 50.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(size: 724.0), alignment: .leading)
                .padding(.vertical, getRelativeHeight(size: 22.0))
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

struct OnboardingCCCView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingCCCView()
    }
}
