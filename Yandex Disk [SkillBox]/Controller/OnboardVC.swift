//
//  OnboardFirstVC.swift
//  Yandex Disk [SkillBox]
//
//  Created by Abraam on 05.04.2023.
//

import UIKit

class OnboardVC: UIViewController {

    private lazy var collectionView = UICollectionView.createCollectionView()
    private lazy var pageControll = UIPageControl()
    private lazy var nextButton = UIButton()

}

//MARK: - LifeCycle
extension OnboardVC {
    override func viewDidLoad() {
        super.viewDidLoad()
        addUIElements()
        makeUIElements()
        makeConstraints()
    }
}

//MARK: - UIElements
extension OnboardVC {
    
    func addUIElements() {
        view.addSubview(collectionView)
        collectionView.backgroundColor = .red
        view.addSubview(pageControll)
        view.addSubview(nextButton)
    }
    
    func makeUIElements() {
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(OnBoardingCollectionViewCell.self, forCellWithReuseIdentifier: OnBoardingCollectionViewCell.identifier)
        
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        nextButton.backgroundColor = UIColor(named: ColorHelper.backgroundColor)
        nextButton.setTitle(TitlesHelper.next, for: .normal)
        nextButton.setTitleColor(.systemBackground, for: .normal)
        nextButton.titleLabel?.font = UIFont(name: FontHelper.graphikBlack, size: 16)
        nextButton.layer.cornerRadius = 10
        

        pageControll.translatesAutoresizingMaskIntoConstraints = false
        self.pageControll.currentPage = 0
        pageControll.numberOfPages =  3
  
        self.pageControll.pageIndicatorTintColor = UIColor(named: ColorHelper.indicatorColor)
        self.pageControll.currentPageIndicatorTintColor = UIColor(named: ColorHelper.backgroundColor)
// set the color of the page indicator
        

    }
    
}

//MARK: - UICollectionViewDelegate,  UICollectionViewDataSource

extension OnboardVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: OnBoardingCollectionViewCell.identifier, for: indexPath) as? OnBoardingCollectionViewCell else {
            return UICollectionViewCell()
        }
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.size.width, height: 500)
    }
}

//MARK: - NSLayoutConstraint
extension OnboardVC  {
    func makeConstraints() {
        NSLayoutConstraint.activate([
            
            nextButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -92),
            nextButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 28),
            nextButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -28),
            nextButton.heightAnchor.constraint(equalToConstant: 50),
            
            pageControll.bottomAnchor.constraint(equalTo: nextButton.topAnchor, constant: -41),
            pageControll.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            pageControll.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            collectionView.bottomAnchor.constraint(equalTo: pageControll.topAnchor, constant: -10),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            collectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
          
            
            
   
        
        ])
    }
}
