import SwiftUI

public struct PointSlider: View {
    @Environment(\.pointSliderStyle) private var style
    @State private var dragOffset: CGPoint? = nil

    private var configuration: PointSliderStyleConfiguration

    public var body: some View {
        self.style.makeBody(configuration:
            self.configuration.with(dragOffset: self.$dragOffset))
    }
}

extension PointSlider {
    init(_ configuration: PointSliderStyleConfiguration) {
        self.configuration = configuration
    }
}

public extension PointSlider {
    init<V>(xVal: Binding<V>, xBounds: ClosedRange<V> = 0.0 ... 1.0, xStep: V.Stride = 0.001,
            yVal: Binding<V>, yBounds: ClosedRange<V> = 0.0 ... 1.0, yStep: V.Stride = 0.001,
            onEditingChanged: @escaping (Bool) -> Void = { _ in }) where V: BinaryFloatingPoint,
        V.Stride: BinaryFloatingPoint
    {
        self
            .init(PointSliderStyleConfiguration(xVal: Binding(get: {
                                                                  CGFloat(xVal.wrappedValue
                                                                      .clamped(to: xBounds))
                                                              },
                                                              set: { xVal.wrappedValue = V($0) }),
                                                xBounds: CGFloat(xBounds.lowerBound) ...
                                                    CGFloat(xBounds.upperBound),
                                                xStep: CGFloat(xStep),
                                                yVal: Binding(get: {
                                                                  CGFloat(yVal.wrappedValue
                                                                      .clamped(to: yBounds))
                                                              },
                                                              set: { yVal.wrappedValue = V($0) }),
                                                yBounds: CGFloat(yBounds.lowerBound) ...
                                                    CGFloat(yBounds.upperBound),
                                                yStep: CGFloat(yStep),
                                                onEditingChanged: onEditingChanged,
                                                dragOffset: .constant(.init())))
    }
}

public extension PointSlider {
    init<V>(xVal: Binding<V>, xBounds: ClosedRange<V> = 0 ... 1, xStep: V.Stride = 1,
            yVal: Binding<V>, yBounds: ClosedRange<V> = 0 ... 1, yStep: V.Stride = 1,
            onEditingChanged: @escaping (Bool) -> Void = { _ in }) where V: BinaryInteger,
        V.Stride: BinaryInteger
    {
        self.init(PointSliderStyleConfiguration(xVal: Binding(get: { CGFloat(xVal.wrappedValue) },
                                                              set: { xVal.wrappedValue = V($0) }),
                                                xBounds: CGFloat(xBounds.lowerBound) ...
                                                    CGFloat(xBounds.upperBound),
                                                xStep: CGFloat(xStep),
                                                yVal: Binding(get: { CGFloat(yVal.wrappedValue) },
                                                              set: { yVal.wrappedValue = V($0) }),
                                                yBounds: CGFloat(yBounds.lowerBound) ...
                                                    CGFloat(yBounds.upperBound),
                                                yStep: CGFloat(yStep),
                                                onEditingChanged: onEditingChanged,
                                                dragOffset: .constant(.init())))
    }
}

struct PointSlider_Previews: PreviewProvider {
    static var previews: some View {
        PointSlidersPreview()
    }
}

private struct PointSlidersPreview: View {
    @State var pointX1 = 0.5
    @State var pointY1 = 0.5

    @State var pointX2 = 2.0
    @State var pointY2 = -0.5

    var body: some View {
        VStack(spacing: 32) {
            PointSlider(xVal: $pointX1, yVal: $pointY1)
                .frame(height: 256)
                .pointSliderStyle(RectangularPointSliderStyle(track:
                    ZStack {
                        LinearGradient(gradient: Gradient(colors: [.red, .orange, .yellow,
                                                                   .green, .blue, .purple,
                                                                   .pink]),
                        startPoint: .leading, endPoint: .trailing)
                        LinearGradient(gradient: Gradient(colors: [.white, .clear]),
                                       startPoint: .bottom,
                                       endPoint: .top).blendMode(.hardLight)
                    }
                    .overlay(RoundedRectangle(cornerRadius: 24)
                        .strokeBorder(lineWidth: 4)
                        .foregroundColor(Color.white))
                    .cornerRadius(24),
                    thumbSize: CGSize(width: 48,
                                      height: 48)))

            PointSlider(xVal: $pointX2, yVal: $pointY2)
                .frame(height: 256)
                .pointSliderStyle(RectangularPointSliderStyle(track:
                    ZStack {
                        LinearGradient(gradient: Gradient(colors: [.blue, .red]),
                                       startPoint: .leading, endPoint: .trailing)
                        VStack {
                            Text("Any View")
                                .font(.largeTitle)
                                .foregroundColor(Color.white)
                            Text("Place any view here")
                                .font(.title)
                                .foregroundColor(Color.white.opacity(0.5))
                        }
                    }
                    .cornerRadius(24),
                    thumb:
                    Capsule()
                        .foregroundColor(.white)
                        .shadow(radius: 3),
                    thumbSize: CGSize(width: 96,
                                      height: 48),
                    options: .interactiveTrack))
        }
        .padding()
    }
}
