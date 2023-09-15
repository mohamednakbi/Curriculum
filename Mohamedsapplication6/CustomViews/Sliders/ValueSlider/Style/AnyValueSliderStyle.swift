import SwiftUI

public struct AnyValueSliderStyle: ValueSliderStyle {
    private let styleMakeBody: (ValueSliderStyle.Configuration) -> AnyView

    public init<S: ValueSliderStyle>(_ style: S) {
        styleMakeBody = style.makeTypeErasedBody
    }

    public func makeBody(configuration: ValueSliderStyle.Configuration) -> AnyView {
        styleMakeBody(configuration)
    }
}

private extension ValueSliderStyle {
    func makeTypeErasedBody(configuration: ValueSliderStyle.Configuration) -> AnyView {
        AnyView(makeBody(configuration: configuration))
    }
}
