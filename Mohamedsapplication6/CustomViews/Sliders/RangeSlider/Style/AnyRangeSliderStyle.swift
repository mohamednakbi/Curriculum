import SwiftUI

public struct AnyRangeSliderStyle: RangeSliderStyle {
    private let styleMakeBody: (RangeSliderStyle.Configuration) -> AnyView

    public init<S: RangeSliderStyle>(_ style: S) {
        styleMakeBody = style.makeTypeErasedBody
    }

    public func makeBody(configuration: RangeSliderStyle.Configuration) -> AnyView {
        styleMakeBody(configuration)
    }
}

private extension RangeSliderStyle {
    func makeTypeErasedBody(configuration: RangeSliderStyle.Configuration) -> AnyView {
        AnyView(makeBody(configuration: configuration))
    }
}
