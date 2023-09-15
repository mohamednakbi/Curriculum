import SwiftUI

public extension EnvironmentValues {
    var pointSliderStyle: AnyPointSliderStyle {
        get {
            return self[PointSliderStyleKey.self]
        }
        set {
            self[PointSliderStyleKey.self] = newValue
        }
    }
}

struct PointSliderStyleKey: EnvironmentKey {
    static let defaultValue: AnyPointSliderStyle = .init(RectangularPointSliderStyle())
}

public extension View {
    /// Sets the style for `PointSlider` within the environment of `self`.
    @inlinable func pointSliderStyle<S>(_ style: S) -> some View where S: PointSliderStyle {
        environment(\.pointSliderStyle, AnyPointSliderStyle(style))
    }
}
