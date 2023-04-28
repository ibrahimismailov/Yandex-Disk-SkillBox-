

import UIKit

final class OnboardVC: UIViewController {
    
    private lazy var onboardImage = UIImageView()
    private lazy var onboardLabel = UILabel()
    private lazy var onboardButton = UIButton()
    private lazy var pageControll = UIPageControl()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeViews()
        makeViewsConstraints()
        hideBackButton()
    }
}

//MARK: - Adding VIews OnboardVC
extension OnboardVC {
    private func makeViews() {
        view.addSubview(onboardImage)
        onboardImage.translatesAutoresizingMaskIntoConstraints = false
        onboardImage.clipsToBounds = true
        onboardImage.layer.masksToBounds = true
        onboardImage.image = UIImage(named: ImageHelper.onboardingImages[0])
        
        view.addSubview(onboardLabel)
        onboardLabel.translatesAutoresizingMaskIntoConstraints = false
        onboardLabel.numberOfLines = 0
        onboardLabel.textAlignment = .center
        onboardLabel.font = UIFont.init(name: FontHelper.graphikExtralight, size: 17)
        onboardLabel.text = TitlesHelper.onboardingTexts[0]
        
        view.addSubview(pageControll)
        pageControll.translatesAutoresizingMaskIntoConstraints = false
        pageControll.numberOfPages = ImageHelper.onboardingImages.count
        pageControll.currentPage = 0
        pageControll.currentPageIndicatorTintColor = .blue
        pageControll.pageIndicatorTintColor = .systemGray4
        pageControll.addTarget(self, action: #selector(pageControlValueChanged(_:)), for: .valueChanged)

        
        view.addSubview(onboardButton)
        onboardButton.translatesAutoresizingMaskIntoConstraints = false
        onboardButton.backgroundColor = UIColor(named: ColorHelper.backgroundColor)
        onboardButton.setTitle(TitlesHelper.next, for: .normal)
        onboardButton.setTitleColor(.systemBackground, for: .normal)
        onboardButton.titleLabel?.font = UIFont(name: FontHelper.graphikBlack, size: 16)
        onboardButton.layer.cornerRadius = 10
        onboardButton.addTarget(self, action: #selector(tappedSignIn), for: .touchUpInside)
    }
    
    private func makeViewsConstraints() {
        NSLayoutConstraint.activate([
            onboardImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            onboardImage.centerYAnchor.constraint(equalTo: view.centerYAnchor,constant: -107),
            
            onboardLabel.topAnchor.constraint(equalTo: onboardImage.bottomAnchor, constant: 64),
            onboardLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 70),
            onboardLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -71),
            
            pageControll.bottomAnchor.constraint(equalTo: onboardButton.topAnchor, constant: -42),
            pageControll.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            onboardButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -92),
            onboardButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 28),
            onboardButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -28),
            onboardButton.heightAnchor.constraint(equalToConstant: 50),
         
        ])
    }
    @objc private func tappedSignIn() {
            let currentPage = pageControll.currentPage
            if currentPage == ImageHelper.onboardingImages.count - 1 {
                let newVC = TabBarVC()
                let navVC = UINavigationController(rootViewController: newVC)
                navVC.modalPresentationStyle = .fullScreen
                self.present(navVC, animated: true)
            } else {
                let nextPage = (currentPage + 1) % ImageHelper.onboardingImages.count
                onboardImage.image = UIImage(named: ImageHelper.onboardingImages[nextPage])
                onboardLabel.text = TitlesHelper.onboardingTexts[nextPage]
                pageControll.currentPage = nextPage
            }
    }
    @objc private func pageControlValueChanged(_ sender: UIPageControl) {
        let selectedPage = sender.currentPage
        onboardImage.image = UIImage(named: ImageHelper.onboardingImages[selectedPage])
        onboardLabel.text = TitlesHelper.onboardingTexts[selectedPage]
        pageControll.currentPage = selectedPage
    }


}
