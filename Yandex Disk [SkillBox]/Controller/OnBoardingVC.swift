//
//  ViewController.swift
//  Yandex Disk [SkillBox]
//
//  Created by Abraam on 02.04.2023.
//

import UIKit

final class OnBoardingVC: UIViewController {
    
    private lazy var iconImage = UIImageView()
    private lazy var skillBoxLabel = UILabel()
    private lazy var signInButton = UIButton()
    var isAnimated: Bool = false

}
//MARK: - LifeCycle

extension OnBoardingVC {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        addUIElements()
        makeUIElements()
        makeConstraints()
        animateLauncheScreen()
        changeString()
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
            self.signInButton.alpha = 1
            self.skillBoxLabel.alpha = 1
           
            
        }
    }
    
    private func changeString() {
        let string = Titles.skillboxDerive
        let color = UIColor.black
        let size: CGFloat = 30
    
        let attributedString = NSMutableAttributedString.attributedStringWithGraphikFont(
            string: string,
            size: size,
            color: color,
            graphikFontName: FontNames.graphikBlack,
            tintFontName: FontNames.graphikExtralight,
            range1: (string as NSString).range(of: "Skillbox"),
            range2: (string as NSString).range(of: "Derive"))
        skillBoxLabel.attributedText = attributedString
    }
    
    
    
    private func addUIElements() {
        view.addSubview(signInButton)
        view.addSubview(iconImage)
        view.addSubview(skillBoxLabel)
    }
    
    private func makeUIElements() {
        
        iconImage.translatesAutoresizingMaskIntoConstraints = false
        iconImage.image = UIImage(named: Images.circleOnboard)
        
        skillBoxLabel.translatesAutoresizingMaskIntoConstraints = false
        skillBoxLabel.font = .systemFont(ofSize: 30, weight: .semibold)
        skillBoxLabel.textAlignment = .center
        skillBoxLabel.alpha = 0.0

        signInButton.translatesAutoresizingMaskIntoConstraints = false
        signInButton.backgroundColor = UIColor(named: Colors.backgroundColor)
        signInButton.setTitle(Titles.signIn, for: .normal)
        signInButton.setTitleColor(.systemBackground, for: .normal)
        signInButton.titleLabel?.font = UIFont(name: FontNames.graphikBlack, size: 16)
        signInButton.layer.cornerRadius = 10
        signInButton.alpha = 0.0
        signInButton.addTarget(self, action: #selector(tappedSignIn), for: .touchUpInside)
       
       
      
    }
    @objc private func tappedSignIn() {
        print("hello")
    }


    func animateLauncheScreen() {
       UIView.animate(
        withDuration: 3.5,
        delay: 0.0,
        usingSpringWithDamping: 0.5,
        initialSpringVelocity: 0.8)
        {
           self.iconImage.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
           self.iconImage.transform = CGAffineTransform(rotationAngle: .pi )
       }
       UIView.animate(
        withDuration: 3,
        delay: 0.0,
        usingSpringWithDamping: 0.5,
        initialSpringVelocity: 0.9)
        {
           self.iconImage.transform = CGAffineTransform(scaleX: 1, y: 1)
           self.isAnimated = true
       }
   }
    
}
//MARK: - Constraints

extension OnBoardingVC {
    private func makeConstraints(){
        NSLayoutConstraint.activate([
            
            iconImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            iconImage.centerYAnchor.constraint(equalTo: view.centerYAnchor,constant: -107),
            iconImage.heightAnchor.constraint(equalToConstant: 106),
            iconImage.widthAnchor.constraint(equalToConstant: 106),

            skillBoxLabel.topAnchor.constraint(equalTo: iconImage.bottomAnchor, constant: 29),
            skillBoxLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            skillBoxLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            signInButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -90),
            signInButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 28),
            signInButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -28),
            signInButton.heightAnchor.constraint(equalToConstant: 50),

        ])
    }
}