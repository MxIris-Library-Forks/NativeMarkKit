import Foundation
#if canImport(AppKit)
import AppKit
#elseif canImport(UIKit)
import UIKit
#endif

public typealias Padding = FourSidedValue<Length>
typealias PointPadding = FourSidedValue<CGFloat>
