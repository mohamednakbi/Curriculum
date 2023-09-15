import SwiftUI

struct BookingOngoing1View: View {
    @StateObject var bookingOngoing1ViewModel = BookingOngoing1ViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        ZStack(alignment: .bottom) {
            NavigationView {
                VStack {
                    VStack(spacing: 0) {
                        ScrollView(.vertical, showsIndicators: false) {
                            LazyVStack {
                                ForEach(0 ... 1, id: \.self) { index in
                                    Columnrectangle1Cell(cancelbookingClick: {
                                        bookingOngoing1ViewModel.isCancelBookingViewShow = true
                                    })
                                }
                            }
                        }
                    }
                    .frame(width: getRelativeWidth(380.0), alignment: .center)
                    .padding(.horizontal, getRelativeWidth(24.0))
                    Group {
                        NavigationLink(destination: ViewTicketView(),
                                       tag: "ViewTicketView",
                                       selection: $bookingOngoing1ViewModel.nextScreen,
                                       label: {
                                           EmptyView()
                                       })
                    }
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(667.0),
                       alignment: .center)
            }
            .hideNavigationBar()
            if bookingOngoing1ViewModel.isCancelBookingViewShow {
                BottomSheetView(isOpen: $bookingOngoing1ViewModel.isCancelBookingViewShow,
                                content: {
                                    CancelBookingView(cancelBookingViewModel: CancelBookingViewModel(_isOpen: $bookingOngoing1ViewModel
                                            .isCancelBookingViewShow))
                                }).frame(width: UIScreen.main.bounds.width)
            }
        }
        .hideNavigationBar()
    }
}

struct BookingOngoing1View_Previews: PreviewProvider {
    static var previews: some View {
        BookingOngoing1View()
    }
}
