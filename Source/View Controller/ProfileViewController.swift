//
//  ProfileViewController.swift
//  KnightHacks
//
//  Created by Patrick Stoebenau on 10/21/19.
//  Copyright © 2019 KnightHacks. All rights reserved.
//

import UIKit

internal class ProfileViewController: NavigationBarViewController, NavigationBarViewControllerExtension {
    internal static let identifier: String = "ProfileViewController"
    
    private var viewModel: ProfileViewControllerModel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
                
        self.add(navigationController: navigationController, and: navigationItem, with: BLUE_COLOR)
        updateNavigationTitle()
    }
    
    private func updateNavigationTitle() {
        self.navigationItem.title = "Profile"
        self.navigationController?.navigationBar.tintColor = .white
        
        if #available(iOS 11, *) {
            self.navigationItem.largeTitleDisplayMode = .always
            self.navigationController?.navigationBar.largeTitleTextAttributes = [
                NSAttributedString.Key.foregroundColor: UIColor.white,
                NSAttributedString.Key.font: CELL_HEADER_FONT
            ]
        }
        
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
    }
}
