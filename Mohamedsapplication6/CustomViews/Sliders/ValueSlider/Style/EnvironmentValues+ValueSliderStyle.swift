import SwiftUI

public extension EnvironmentValues {
    var valueSliderStyle: AnyValueSliderStyle {
        get {
            return self[ValueSliderStyleKey.self]
        }
        set {
            self[ValueSliderStyleKey.self] = newValue
        }
    }
}

struct ValueSliderStyleKey: EnvironmentKey {
    static let defaultValue: AnyValueSliderStyle = .init(HorizontalValueSliderStyle())
}

public extension View {
    /// Sets the style for `ValueSlider` within the environment of `self`.
    @inlinable func valueSliderStyle<S>(_ style: S) -> some View where S: ValueSliderStyle {
        environment(\.valueSliderStyle, AnyValueSliderStyle(style))
    }
}
