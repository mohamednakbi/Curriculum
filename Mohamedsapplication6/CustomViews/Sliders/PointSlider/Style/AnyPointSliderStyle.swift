import SwiftUI

public struct AnyPointSliderStyle: PointSliderStyle {
    private let styleMakeBody: (PointSliderStyle.Configuration) -> AnyView

    public init<S: PointSliderStyle>(_ style: S) {
        styleMakeBody = style.makeTypeErasedBody
    }

    public func makeBody(configuration: PointSliderStyle.Configuration) -> AnyView {
        styleMakeBody(configuration)
    }
}

private extension PointSliderStyle {
    func makeTypeErasedBody(configuration: PointSliderStyle.Configuration) -> AnyView {
        AnyView(makeBody(configuration: configuration))
    }
}
