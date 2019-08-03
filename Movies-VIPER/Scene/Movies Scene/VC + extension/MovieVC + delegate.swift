//
//  MovieVC + delegate.swift
//  Movies-VIPER
//
//  Created by Mohamed Korany Ali on 8/1/19.
//  Copyright © 2019 Mohamed Korany Ali. All rights reserved.
//

import UIKit
import SVProgressHUD

extension MovieVC : MovieViewProtocol
    
{
    
    
    func showLoadingIndicator() {
        SVProgressHUD.show()
    }
    
    func hideLoadingIndicator() {
        SVProgressHUD.dismiss()
    }
    
    func reloadData() {
        moviesTableView.reloadData()
    }
    
    
    
}

