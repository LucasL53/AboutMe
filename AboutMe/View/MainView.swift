//
//  MainView.swift
//  AboutMe
//
//  Created by Yunseo Lee on 9/12/21.
//

import UIKit

class MainView: UIView{
    
    // MARK: - View Properties
    
    var buttonAction: (() -> Void)?
    
    let profileView: UIView = {
        let profileView = UIView()
        profileView.translatesAutoresizingMaskIntoConstraints = false
        profileView.backgroundColor = UIColor(named: "Custom Blue")
        return profileView
    }()
    
    let profilePicture: UIImageView = {
        let profilePicture = UIImageView()
        profilePicture.image = UIImage(named: "Yunseo Lee.jpg")
        profilePicture.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        profilePicture.translatesAutoresizingMaskIntoConstraints = false
        return profilePicture
    }()
    
    let nameLabel: UILabel = {
        let nameLabel = UILabel()
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.text = "Yunseo Lucas Lee"
        nameLabel.textColor = .white
        nameLabel.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        return nameLabel
    }()
    
    let pronouns: UILabel = {
        let pronouns = UILabel()
        pronouns.translatesAutoresizingMaskIntoConstraints = false
        pronouns.text = "he/him/his"
        pronouns.textColor = .systemGray
        pronouns.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        return pronouns
    }()
    
    let sayHiButton: ThemeButton = {
        let button = ThemeButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.update(buttonTitle: "Say Hi 👋")
        button.roundCorners(radius: 25)
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        return button
    }()
    
    let findMeView: UIView = {
        let findMeView = UIView()
        findMeView.translatesAutoresizingMaskIntoConstraints = false
        findMeView.backgroundColor = UIColor(named: "Cream")
        findMeView.layer.cornerRadius = 20
        return findMeView
    }()
    
    let divider: UIView = {
        let divider = UIView()
        divider.translatesAutoresizingMaskIntoConstraints = false
        divider.backgroundColor = .black
        return divider
    }()
    
    let locationLabel: UILabel = {
        let locationLabel = UILabel()
        locationLabel.translatesAutoresizingMaskIntoConstraints = false
        locationLabel.text = "📍 Seattle, WA"
        locationLabel.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        return locationLabel
    }()
    
    let twitterLabel: UILabel = {
        let twitterLabel = UILabel()
        twitterLabel.translatesAutoresizingMaskIntoConstraints = false
        twitterLabel.text = "@YSLLucas"
        twitterLabel.font = UIFont.systemFont(ofSize: 15)
        return twitterLabel
    }()
    
    let linkedInLabel: UILabel = {
        let linkedInLabel = UILabel()
        linkedInLabel.translatesAutoresizingMaskIntoConstraints = false
        linkedInLabel.text = "linkedin.com/yunseo-lucas-lee"
        linkedInLabel.font = UIFont.systemFont(ofSize: 15)
        return linkedInLabel
    }()
    
    let hobbiesView: UIView = {
        let hobbiesView = UIView()
        hobbiesView.translatesAutoresizingMaskIntoConstraints = false
        hobbiesView.backgroundColor = UIColor(named: "Cream")
        hobbiesView.layer.cornerRadius = 20
        return hobbiesView
    }()
    
    let hobbiesLabel: UILabel = {
        let hobbiesLabel = UILabel()
        hobbiesLabel.translatesAutoresizingMaskIntoConstraints = false
        hobbiesLabel.text = "💙 Boxing, Reading, Gaming"
        hobbiesLabel.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        return hobbiesLabel
    }()
    
    let faveFoodLabel: UILabel = {
        let faveFoodLabel = UILabel()
        faveFoodLabel.translatesAutoresizingMaskIntoConstraints = false
        faveFoodLabel.text = "🍴Tonkatsu"
        faveFoodLabel.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        return faveFoodLabel
    }()
    
    let faveShowLabel: UILabel = {
        let faveShowLabel = UILabel()
        faveShowLabel.translatesAutoresizingMaskIntoConstraints = false
        faveShowLabel.text = "📺 Natsume Yuujinchou"
        faveShowLabel.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        return faveShowLabel
    }()
    
    let iosInterestView: UIView = {
        let iosInterestView = UIView()
        iosInterestView.translatesAutoresizingMaskIntoConstraints = false
        iosInterestView.backgroundColor = UIColor(named: "Cream")
        iosInterestView.layer.cornerRadius = 20
        return iosInterestView
    }()
    
    let iosInterestTitle: UILabel = {
        let iosInterestTitle = UILabel()
        iosInterestTitle.translatesAutoresizingMaskIntoConstraints = false
        iosInterestTitle.text = "I like iOS Development because..."
        iosInterestTitle.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        return iosInterestTitle
    }()
    
    let iosInterestText: UILabel = {
        let iosInterestText = UILabel()
        iosInterestText.translatesAutoresizingMaskIntoConstraints = false
        iosInterestText.lineBreakMode = .byWordWrapping
        iosInterestText.numberOfLines = 10
        iosInterestText.text = """
        iOS development was what got me interested in coding in general. Back in 2012 there was a 12 year-old app developer that made a trending game on iOS. Wanting to follow his footsteps, I watched YouTube tutorials and read books on Objective-C.
        \nI eventually moved onto focusing on school and learning other programming languages. But now, I finally get to re-live the dream of my younger self and build iOS apps again.
        """
        iosInterestText.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        return iosInterestText
    }()
    
    // MARK: - Initializer
    
    init(buttonAction: @escaping () -> Void, frame: CGRect = .zero) {
        self.buttonAction = buttonAction
        
        super.init(frame: frame)
        
        setUpUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - UI Setup
    
    private func setUpUI(){
        setUpProfileView()
        setUpFindMeView()
        setUpHobbiesView()
        setUpiOSInterest()
        setUpSubmitButton()
    }
    
    private func setUpProfileView(){
        addSubview(profileView)
        addSubview(profilePicture)
        addSubview(nameLabel)
        addSubview(pronouns)
        
        
        //view box constraint
        NSLayoutConstraint.activate([
            profileView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 8),
            profileView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            profileView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            profileView.heightAnchor.constraint(equalToConstant: 250)
        ])
        
        //profile picture constraint
        NSLayoutConstraint.activate([
            profilePicture.topAnchor.constraint(equalTo: profileView.topAnchor, constant: 20),
            profilePicture.centerXAnchor.constraint(equalTo: profileView.centerXAnchor),
            profilePicture.widthAnchor.constraint(equalToConstant: 150),
            profilePicture.heightAnchor.constraint(equalToConstant: 150)
        ])
        
        //name label constraint
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: profilePicture.bottomAnchor, constant: 10),
            nameLabel.centerXAnchor.constraint(equalTo: profileView.centerXAnchor)
        ])
        
        //pronouns label constraint
        NSLayoutConstraint.activate([
            pronouns.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 10),
            pronouns.centerXAnchor.constraint(equalTo: profileView.centerXAnchor)
        ])
        
    }
    
    private func setUpSubmitButton() {
        addSubview(sayHiButton)
        
        NSLayoutConstraint.activate([
            sayHiButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 80),
            sayHiButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: 10),
            sayHiButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -80),
            sayHiButton.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 1/16, constant: 10)
        ])
    }
    
    private func setUpFindMeView() {
        addSubview(findMeView)
        addSubview(locationLabel)
        addSubview(divider)
        addSubview(twitterLabel)
        addSubview(linkedInLabel)
        
        //findMe UIView constraint
        NSLayoutConstraint.activate([
            findMeView.topAnchor.constraint(equalTo: profileView.bottomAnchor, constant: 12),
            findMeView.leadingAnchor.constraint(equalTo: profileView.leadingAnchor),
            findMeView.trailingAnchor.constraint(equalTo: profileView.trailingAnchor),
            findMeView.heightAnchor.constraint(equalToConstant: 120)
        ])
        
        //findMe location constraint
        NSLayoutConstraint.activate([
            locationLabel.topAnchor.constraint(equalTo: findMeView.topAnchor, constant: 5),
            locationLabel.leadingAnchor.constraint(equalTo: findMeView.leadingAnchor, constant: 10)
        ])
        
        //divider constraint
        NSLayoutConstraint.activate([
            divider.topAnchor.constraint(equalTo: locationLabel.bottomAnchor, constant: 3),
            divider.leadingAnchor.constraint(equalTo: findMeView.leadingAnchor),
            divider.trailingAnchor.constraint(equalTo: findMeView.trailingAnchor),
            divider.heightAnchor.constraint(equalToConstant: 2)
        ])
        
        //twitter label constraint
        NSLayoutConstraint.activate([
            twitterLabel.topAnchor.constraint(equalTo: divider.bottomAnchor, constant: 10),
            twitterLabel.leadingAnchor.constraint(equalTo: findMeView.leadingAnchor, constant: 10)
        ])
        
        //linkedin label constraint
        NSLayoutConstraint.activate([
            linkedInLabel.topAnchor.constraint(equalTo: twitterLabel.bottomAnchor, constant: 10),
            linkedInLabel.leadingAnchor.constraint(equalTo: findMeView.leadingAnchor, constant: 10)
        ])
    }
    
    private func setUpHobbiesView(){
        addSubview(hobbiesView)
        addSubview(hobbiesLabel)
        addSubview(faveFoodLabel)
        addSubview(faveShowLabel)
        
        //hobbiesView constraint
        NSLayoutConstraint.activate([
            hobbiesView.topAnchor.constraint(equalTo: findMeView.bottomAnchor, constant: 15),
            hobbiesView.leadingAnchor.constraint(equalTo: profileView.leadingAnchor),
            hobbiesView.trailingAnchor.constraint(equalTo: profileView.trailingAnchor),
            hobbiesView.heightAnchor.constraint(equalToConstant: 80)
        ])
        
        //hobbies label constraint
        NSLayoutConstraint.activate([
            hobbiesLabel.topAnchor.constraint(equalTo: hobbiesView.topAnchor, constant: 10),
            hobbiesLabel.leadingAnchor.constraint(equalTo: hobbiesView.leadingAnchor, constant: 10)
        ])
        
        //favorite food label constraint
        NSLayoutConstraint.activate([
            faveFoodLabel.topAnchor.constraint(equalTo: hobbiesLabel.bottomAnchor, constant: 10),
            faveFoodLabel.leadingAnchor.constraint(equalTo: hobbiesView.leadingAnchor, constant: 10)
        ])
        
        //favorite show label constraint
        NSLayoutConstraint.activate([
            faveShowLabel.topAnchor.constraint(equalTo: faveFoodLabel.topAnchor),
            faveShowLabel.leadingAnchor.constraint(equalTo: faveFoodLabel.trailingAnchor, constant: 22)
        ])
    }
    
    private func setUpiOSInterest(){
        addSubview(iosInterestView)
        addSubview(iosInterestTitle)
        addSubview(iosInterestText)
        
        //iOS interest view constraint
        NSLayoutConstraint.activate([
            iosInterestView.topAnchor.constraint(equalTo: hobbiesView.bottomAnchor, constant: 15),
            iosInterestView.leadingAnchor.constraint(equalTo: profileView.leadingAnchor),
            iosInterestView.trailingAnchor.constraint(equalTo: profileView.trailingAnchor),
            iosInterestView.heightAnchor.constraint(equalToConstant: 200)
        ])
        
        //iOS interest title constraint
        NSLayoutConstraint.activate([
            iosInterestTitle.topAnchor.constraint(equalTo: iosInterestView.topAnchor, constant: 10),
            iosInterestTitle.leadingAnchor.constraint(equalTo: iosInterestView.leadingAnchor, constant: 10)
        ])
        
        //iOS interest text constraint
        NSLayoutConstraint.activate([
            iosInterestText.topAnchor.constraint(equalTo: iosInterestTitle.bottomAnchor, constant: 10),
            iosInterestText.leadingAnchor.constraint(equalTo: iosInterestTitle.leadingAnchor),
            iosInterestText.trailingAnchor.constraint(equalTo: iosInterestView.trailingAnchor, constant: -10)
        ])
    }
    
    @objc func buttonPressed() {
        print("Button Pressed!")
        buttonAction?()
    }
}
