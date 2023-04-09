//
//  OnBoardingCollectionViewCell.swift
//  Yandex Disk [SkillBox]
//
//  Created by Abraam on 02.04.2023.
//

import UIKit

class OnBoardingCollectionViewCell: UICollectionViewCell {
    static let identifier = "OnBoardingCollectionViewCell"
    private lazy var onboardingİmageView = UIImageView()
 //   private lazy var welcomeLabel = UILabel()


    override init(frame: CGRect) {
        super.init(frame: frame )
        addUIElements()
        makeConstraints()
       // contentView.backgroundColor = .red
    }
    
    private func addUIElements() {
       contentView.addSubview(onboardingİmageView)
     //  contentView.addSubview(welcomeLabel)

        
       onboardingİmageView.translatesAutoresizingMaskIntoConstraints = false
     //  onboardingİmageView.layer.masksToBounds = true
     //  onboardingİmageView.clipsToBounds = true
       onboardingİmageView.image = UIImage(named: "circleOnboard")
        
//        welcomeLabel.translatesAutoresizingMaskIntoConstraints = false
//        welcomeLabel.text = "Skillbox Drive"
//        welcomeLabel.numberOfLines = 0
//        welcomeLabel.textAlignment = .center
//        welcomeLabel.font = .systemFont(ofSize: 40, weight: .semibold)
        

        
      
   }
    
  
    
    private func makeConstraints() {
        NSLayoutConstraint.activate([
//            onboardingİmageView.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 83),
//            onboardingİmageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,constant: 50),
//            onboardingİmageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor,constant: -50),
            onboardingİmageView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            onboardingİmageView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            onboardingİmageView.heightAnchor.constraint(equalToConstant: 106),
            onboardingİmageView.widthAnchor.constraint(equalToConstant: 106),
            
            
//            welcomeLabel.topAnchor.constraint(equalTo: onboardingİmageView.bottomAnchor, constant: 40),
//            welcomeLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
//            welcomeLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),

        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

