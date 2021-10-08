//
//  SocialsView.swift
//  AboutMe
//
//  Created by Yunseo Lee on 9/12/21.
//

import UIKit

class SocialsView: UIStackView {
    
    // MARK: - View Properties
    
    let socialsIcon: UIImageView = {
        let socialsIcon = UIImageView()
        socialsIcon.translatesAutoresizingMaskIntoConstraints = false
        socialsIcon.image?.withRenderingMode(.alwaysTemplate)
        socialsIcon.contentMode = .scaleAspectFit
        return socialsIcon
    }()
    
    let socialsText: UILabel = {
        let socialsText = UILabel()
        socialsText.translatesAutoresizingMaskIntoConstraints = false
        socialsText.font = UIFont.systemFont(ofSize: 15)
        socialsText.textColor = .white
        socialsText.text = "@YSLLucas"
        return socialsText
    }()
    
    // MARK: - Initializer
    
    override init(frame: CGRect){
        super.init(frame: frame)
        
        setUpUI()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - UI Setup
    
    private func setUpUI(){
        setUpSocial()
    }
    
    private func setUpSocial(){
        
    }
    
    func updateView(withImage image: UIImage, andText text: String){
        
    }
}
