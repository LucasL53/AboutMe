//
//  ThemeButton.swift
//  AboutMe
//
//  Created by Yunseo Lee on 9/12/21.
//

import UIKit

class ThemeButton: UIButton {
    
    override var isEnabled: Bool {
        didSet{
            alpha = isEnabled ? 1 : 0.2
        }
    }
    
    override init(frame: CGRect){
        super.init(frame: frame)
        
        setUpUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpUI(){
        
        backgroundColor = UIColor(named: "Custom Blue")
        titleLabel?.font = UIFont.systemFont(ofSize: 24, weight: .regular)
        tintColor = .white
    }
    
    func roundCorners(radius: CGFloat) {
        layer.cornerRadius = radius
    }
    
    func update(buttonTitle: String){
        setTitle(buttonTitle, for: .normal)
    }
}
