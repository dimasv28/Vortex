//
//  Array+DoubleInterpolation.swift
//  Vortex
//
//  Created by Dmitry Firsov on 22.06.2025.
//

import Foundation

extension Array where Element == Double {
    func interpolated(at progress: Double) -> Double {
        guard !isEmpty else { return 1 }

        if progress <= 0 { return self.first! }
        if progress >= 1 { return self.last! }

        let scaledIndex = progress * Double(count - 1)
        let lower = Int(scaledIndex)
        let upper = Swift.min(lower + 1, count - 1)
        let t = scaledIndex - Double(lower)

        return self[lower] + (self[upper] - self[lower]) * t
    }
}
