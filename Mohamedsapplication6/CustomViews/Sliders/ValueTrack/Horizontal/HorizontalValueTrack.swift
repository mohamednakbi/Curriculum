import SwiftUI

public typealias HorizontalTrack = HorizontalValueTrack

public struct HorizontalValueTrack<ValueView: View, MaskView: View>: View {
    @Environment(\.trackValue) var value
    @Environment(\.valueTrackConfiguration) var configuration
    let view: AnyView
    let mask: AnyView

    public var body: some View {
        GeometryReader { geometry in
            self.view.accentColor(.accentColor)
                .mask(ZStack {
                    self.mask
                        .frame(width: distanceFrom(value: self.value,
                                                   availableDistance: geometry.size.width,
                                                   bounds: self.configuration.bounds,
                                                   leadingOffset: self.configuration.leadingOffset,
                                                   trailingOffset: self.configuration
                                                       .trailingOffset))
                }
                .frame(width: geometry.size.width, alignment: .leading))
        }
    }
}

public extension HorizontalValueTrack {
    init(view: ValueView, mask: MaskView) {
        self.view = AnyView(view)
        self.mask = AnyView(mask)
    }
}

public extension HorizontalValueTrack where ValueView == DefaultHorizontalValueView {
    init(mask: MaskView) {
        self.init(view: DefaultHorizontalValueView(), mask: mask)
    }
}

public extension HorizontalValueTrack where MaskView == Capsule {
    init(view: ValueView) {
        self.init(view: view, mask: Capsule())
    }
}

public extension HorizontalValueTrack where ValueView == DefaultHorizontalValueView,
    MaskView == Capsule
{
    init() {
        self.init(view: DefaultHorizontalValueView(), mask: Capsule())
    }
}
