import SwiftUI

public struct HorizontalRangeTrack<ValueView: View, MaskView: View>: View {
    @Environment(\.trackRange) var range
    @Environment(\.rangeTrackConfiguration) var configuration
    let view: AnyView
    let mask: AnyView

    public var body: some View {
        GeometryReader { geometry in
            self.view
                .accentColor(.accentColor)
                .mask(ZStack {
                    self.mask
                        .frame(width: rangeDistance(overallLength: geometry.size.width,
                                                    range: self.range,
                                                    bounds: self.configuration.bounds,
                                                    lowerStartOffset: self.configuration
                                                        .lowerLeadingOffset,
                                                    lowerEndOffset: self.configuration
                                                        .lowerTrailingOffset,
                                                    upperStartOffset: self.configuration
                                                        .upperLeadingOffset,
                                                    upperEndOffset: self.configuration
                                                        .upperTrailingOffset))
                        .offset(x: distanceFrom(value: self.range.lowerBound,
                                                availableDistance: geometry.size.width,
                                                bounds: self.configuration.bounds,
                                                leadingOffset: self.configuration
                                                    .lowerLeadingOffset,
                                                trailingOffset: self.configuration
                                                    .lowerTrailingOffset))
                }
                .frame(width: geometry.size.width, alignment: .leading))
        }
    }
}

public extension HorizontalRangeTrack {
    init(view: ValueView, mask: MaskView) {
        self.view = AnyView(view)
        self.mask = AnyView(mask)
    }
}

public extension HorizontalRangeTrack where ValueView == DefaultHorizontalValueView {
    init(mask: MaskView) {
        self.init(view: DefaultHorizontalValueView(), mask: mask)
    }
}

public extension HorizontalRangeTrack where MaskView == Capsule {
    init(view: ValueView) {
        self.init(view: view, mask: Capsule())
    }
}

public extension HorizontalRangeTrack where ValueView == DefaultHorizontalValueView,
    MaskView == Capsule
{
    init() {
        self.init(view: DefaultHorizontalValueView(), mask: Capsule())
    }
}
