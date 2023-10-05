//
//  CustomtTabBar.swift
//  CustomTabBarBezierPath
//
//  Created by Andrei Sushkou on 5.10.23.
//

import UIKit

final class CustomtTabBar: UITabBar {
    
    private let plusButton = PlusButton(type: .system)
    
    override func draw(_ rect: CGRect) {
        configureShape()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupTabBar()
        setupPlusButton()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//MARK: - Configuration of CustomTabBar
    
    private func setupTabBar() {
        tintColor = .systemRed
        unselectedItemTintColor = .black
    }
    
    private func setupPlusButton() {
        addSubview(plusButton)
        
        NSLayoutConstraint.activate([
            plusButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            plusButton.centerYAnchor.constraint(equalTo: topAnchor),
            plusButton.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.6),
            plusButton.widthAnchor.constraint(equalTo: heightAnchor, multiplier: 0.6)
        ])
    }
    
// MARK: - Overriding of hitTest()
    
    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        plusButton.frame.contains(point) ? plusButton : super.hitTest(point, with: event)
    }
    
}

//MARK: - Draw shape

extension CustomtTabBar {
    
    private func configureShape() {
        let path: UIBezierPath = getTabBarPath()
        let shape = CAShapeLayer()
        shape.path = path.cgPath
        shape.lineWidth = 3
        shape.strokeColor = UIColor.systemBackground.cgColor
        shape.fillColor = UIColor.systemBackground.cgColor
        layer.insertSublayer(shape, at: 0)
    }
    
    private func getTabBarPath() -> UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: 100, y: 0))
        
        path.addArc(withCenter: CGPoint(x: frame.width / 2, y: 0),
                    radius: 35,
                    startAngle: .pi,
                    endAngle: .pi * 2,
                    clockwise: false)
        
        path.addLine(to: CGPoint(x: frame.width, y: 0))
        path.addLine(to: CGPoint(x: frame.width, y: frame.height))
        path.addLine(to: CGPoint(x: 0, y: frame.height))
        
        return path
    }
}
