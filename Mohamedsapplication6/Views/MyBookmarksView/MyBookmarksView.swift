import SwiftUI

struct MyBookmarksView: View {
    @StateObject var myBookmarksViewModel = MyBookmarksViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                VStack {
                    HStack {
                        Image("img_arrowleft")
                            .resizable()
                            .frame(width: getRelativeWidth(28.0), height: getRelativeWidth(28.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.leading, getRelativeWidth(24.0))
                            .onTapGesture {
                                self.presentationMode.wrappedValue.dismiss()
                            }
                        Text(StringConstants.kLblMyBookmarks)
                            .font(FontScheme.kUrbanistRomanBold(size: getRelativeHeight(24.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .padding(.leading, getRelativeWidth(16.0))
                        HStack {
                            Image("img_menu_1")
                                .resizable()
                                .frame(width: getRelativeWidth(28.0),
                                       height: getRelativeWidth(28.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                            Image("img_grid")
                                .resizable()
                                .frame(width: getRelativeWidth(28.0),
                                       height: getRelativeWidth(28.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.leading, getRelativeWidth(20.0))
                        }
                        .frame(width: getRelativeWidth(76.0), height: getRelativeHeight(28.0),
                               alignment: .leading)
                        .padding(.horizontal, getRelativeWidth(24.0))
                    }
                    .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(51.0),
                           alignment: .leading)
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack {
                            LazyVGrid(columns: [SwiftUI.GridItem(), SwiftUI.GridItem()],
                                      spacing: 24.0) {
                                ForEach(0 ... 5, id: \.self) { index in
                                    ColumnrectanglefiveCell(bookmarkClick: {
                                        myBookmarksViewModel.isBookmarkremovalViewShow = true
                                    })
                                }
                            }
                        }
                    }
                    .padding(.top, getRelativeHeight(28.0))
                    .padding(.horizontal, getRelativeWidth(24.0))
                    .fixedSize(horizontal: false, vertical: false)
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.Gray900)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.Gray900)
            .ignoresSafeArea()
            if myBookmarksViewModel.isBookmarkremovalViewShow {
                BottomSheetView(isOpen: $myBookmarksViewModel.isBookmarkremovalViewShow, content: {
                    BookmarkremovalView(bookmarkremovalViewModel: BookmarkremovalViewModel(_isOpen: $myBookmarksViewModel
                            .isBookmarkremovalViewShow))
                }).frame(width: UIScreen.main.bounds.width)
            }
        }
        .hideNavigationBar()
    }
}

struct MyBookmarksView_Previews: PreviewProvider {
    static var previews: some View {
        MyBookmarksView()
    }
}
