//
//  UIViewController+Extension.swift
//  Yandex Disk [SkillBox]
//
//  Created by Abraam on 27.04.2023.
//

import UIKit
extension UIViewController {
    
    func rightBarButton(iconImage: UIImage, tintColor: UIColor = .blue, action: Selector) {
        let rightButton = UIBarButtonItem(image: iconImage.withTintColor(tintColor, renderingMode: .alwaysTemplate), style: .plain, target: self, action: action)
        navigationItem.rightBarButtonItem = rightButton
    }
    
    func setTitle(_ title: String) {
         navigationItem.title = NSLocalizedString(title, comment: "")
     }
    
    func showAlertAction(title: String?, message: String?, deleteActionTitle: String = "Да", deleteHandler: (() -> Void)? = nil, cancelActionTitle: String = "Нет") {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let deleteAction = UIAlertAction(title: deleteActionTitle, style: .destructive) { (_) in
            deleteHandler?()
        }
        let cancelAction = UIAlertAction(title: cancelActionTitle, style: .cancel, handler: nil)
        alertController.addAction(deleteAction)
        alertController.addAction(cancelAction)
        present(alertController, animated: true, completion: nil)
    }
    
    func handleKeychainStatus(_ status: OSStatus, successDestination: UIViewController, failureDestination: UIViewController) {
           if status != errSecSuccess {
               let navVC = UINavigationController(rootViewController: successDestination)
               navVC.modalPresentationStyle = .fullScreen
               present(navVC, animated: true)
           } else {
               print(status)
               let rootVC = failureDestination
               rootVC.view.backgroundColor = .systemBackground
               rootVC.navigationItem.hidesBackButton = true
               navigationController?.pushViewController(rootVC, animated: true)
           }
       }
    func hideBackButton() {
          navigationItem.hidesBackButton = true
      }
 
   }








    

