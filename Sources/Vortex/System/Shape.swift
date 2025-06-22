//
// Shape.swift
// Vortex
// https://www.github.com/twostraws/Vortex
// See LICENSE for license information.
//

import Foundation

extension VortexSystem {
    /// Controls where particles are created inside the particle system.
    public enum Shape: Codable {
        /// All particles are created from the center of the particle system.
        case point

        /// Particles are created somewhere inside a box measuring `width` x `height`.
        /// These values are specified in unit space.
        case box(width: Double, height: Double)
        
        /// Particles are created somewhere inside a circle of `radius`,
        /// specified in unit space.
        case circle(radius: Double)
        
        /// Particles are created somewhere along the edge of a circle of `radius`,
        /// specified in unit space.
        case ring(radius: Double)
    }
}
