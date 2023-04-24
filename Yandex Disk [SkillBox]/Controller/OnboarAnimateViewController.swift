//
//  OnboarAnimateViewController.swift
//  Yandex Disk [SkillBox]
//
//  Created by Abraam on 18.04.2023.
//
//
//import UIKit
//import UIOnboarding
//
//class ViewControllerrr: UIViewController {
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        view.backgroundColor = .systemBackground
//        let onboardingController = UIOnboardingViewController(withConfiguration: UIOnboardingViewConfiguration.setUp())
//        onboardingController.delegate = self
//        present(onboardingController, animated: false, completion: nil)
//    }
//}
//
//extension ViewControllerrr: UIOnboardingViewControllerDelegate {
//    func didFinishOnboarding(onboardingViewController: UIOnboardingViewController) {
//        onboardingViewController.dismiss(animated: true, completion: nil)
//    }
//}
//
//struct UIOnboardingHelper {
//    static func setUpIcon() -> UIImage {
//        return Bundle.main.appIcon ?? UIImage(systemName: "bell")!
//    }
//    
//    static func setUpTitle() -> NSMutableAttributedString {
//        let welcomeText = NSMutableAttributedString(string: "Welcome to \n",
//                                                     attributes: [.foregroundColor: UIColor.label])
//        let appNameText = NSMutableAttributedString(string: Bundle.main.displayName ?? "Insignia",
//                                                    attributes: [.foregroundColor: UIColor.red])
//        welcomeText.append(appNameText)
//        return welcomeText
//    }
//    
//    static func setUpFeatures() -> [UIOnboardingFeature] {
//        return [
//            UIOnboardingFeature(icon: UIImage(systemName: "bell")!,
//                                title: "Search until found",
//                                description: "Over a hundred insignia of the Swiss Armed Forces – each redesigned from the ground up."),
//            UIOnboardingFeature(icon: UIImage(systemName: "bell")!,
//                                title: "Enlist prepared",
//                                description: "Practice with the app and pass the rank test on the first run."),
//            UIOnboardingFeature(icon: UIImage(systemName: "bell")!,
//                                title: "#teamarmee",
//                                description: "Add name tags of your comrades or cadre. Insignia automatically keeps every name tag you create in iCloud.")
//        ]
//    }
//    
//    static func setUpNotice() -> UIOnboardingTextViewConfiguration {
//        return UIOnboardingTextViewConfiguration(icon: UIImage(systemName: "bell")!,
//                                                 text: "Developed and designed for members of the Swiss Armed Forces.",
//                                                 linkTitle: "Learn more...",
//                                                 link: "https://www.lukmanascic.ch/portfolio/insignia",
//                                                 tint: UIColor.systemGreen)
//    }
//    
//    static func setUpButton() -> UIOnboardingButtonConfiguration {
//        return UIOnboardingButtonConfiguration(title: "Continue",
//                                               backgroundColor: UIColor.systemBlue)
//    }
// 
//}
//
//extension UIOnboardingViewConfiguration {
//   
//    static func setUp() -> UIOnboardingViewConfiguration {
//        let attributed = NSMutableAttributedString(string: "hello")
//   
//        return UIOnboardingViewConfiguration(appIcon: UIOnboardingHelper.setUpIcon(),
//                                             firstTitleLine: UIOnboardingHelper.setUpTitle(),
//                                             secondTitleLine: attributed ,
//                                              features: UIOnboardingHelper.setUpFeatures(),
//                                             textViewConfiguration: UIOnboardingHelper.setUpNotice(),
//                                            
//                                             
//                                             buttonConfiguration: UIOnboardingHelper.setUpButton())
//    }
//    
//    
//}
//
