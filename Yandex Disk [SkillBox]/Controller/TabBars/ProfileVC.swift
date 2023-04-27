//
//  ProfileVC.swift
//  Yandex Disk [SkillBox]
//
//  Created by Abraam on 24.04.2023.
//

import UIKit

class ProfileVC: UIViewController {
    let iconImage = ImageHelper.ellipsis
    override func viewDidLoad() {
        super.viewDidLoad()
        setTitle("Профиль")
        rightBarButton(iconImage: iconImage, tintColor: .red, action: #selector(myAction))

    }
    func deleteKeychain() {
        let deleteStat = SecItemDelete(KeychainManager.keychainQueryDelete as CFDictionary)
        if deleteStat != errSecSuccess {
        } else {
            print("Keychain deleted successfully")
      dismiss(animated: true)
      //     present(destination, animated: true)
        }
    }
    
    @objc private func myAction() {
        let deleteConfirmationTitle = TitlesHelper.logout
        let deleteConfirmationMessage = TitlesHelper.sure
       showAlertAction(title: deleteConfirmationTitle, message: deleteConfirmationMessage, deleteActionTitle: "Да", deleteHandler: deleteKeychain)
    }

}
