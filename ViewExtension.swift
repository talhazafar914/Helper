//
//  ViewExtension.swift
//  TemporaryProject
//
//  Created by Everything Apple on 04/07/2023.
//

import Foundation
import UIKit

extension UIView {

    /**Corner radius from specific point. How to call myView.roundCornersFromPoint(cornerRadius: 20, startPoint: CGPoint(x: myView.bounds.maxX, y: myView.bounds.minY)) */
    
    func roundCornersFromPoint(cornerRadius: CGFloat, startPoint: CGPoint) {
            let maskPath = UIBezierPath(roundedRect: bounds, byRoundingCorners: [.topRight, .bottomLeft], cornerRadii: CGSize(width: cornerRadius, height: cornerRadius))
            
            // Calculate the angle between the start point and the center of the view
            let center = CGPoint(x: bounds.midX, y: bounds.midY)
            let angle = atan2(startPoint.y - center.y, startPoint.x - center.x)
            
            // Rotate the mask path based on the calculated angle
            let transform = CGAffineTransform(rotationAngle: angle)
            maskPath.apply(transform)
            
            // Create a new mask layer with the rotated mask path
            let maskLayer = CAShapeLayer()
            maskLayer.path = maskPath.cgPath
            
            // Apply the mask layer to the view's layer
            layer.mask = maskLayer
        }
    
}
