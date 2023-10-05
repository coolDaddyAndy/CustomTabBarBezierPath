//
//  PlusButton.swift
//  CustomTabBarBezierPath
//
//  Created by Andrei Sushkou on 5.10.23.
//

import UIKit

final class PlusButton: UIButton {
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        layer.cornerRadius = frame.width / 2
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        setImage(UIImage(systemName: "plus.circle"), for: .normal)
        tintColor = .white
        backgroundColor = .systemCyan
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.3
        layer.shadowOffset = CGSize(width: 0, height: 5)
        translatesAutoresizingMaskIntoConstraints = false
    }
}
