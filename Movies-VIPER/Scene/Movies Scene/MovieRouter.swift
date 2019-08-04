//
//  MovieRouter.swift
//  Movies-VIPER
//
//  Created by Mohamed Korany Ali on 8/1/19.
//  Copyright © 2019 Mohamed Korany Ali. All rights reserved.
//

import UIKit

class MovieRouter : MovieRouterProtocol{
    
    
    weak var viewController: UIViewController?
    
    static func createModule() -> UIViewController {
        let view = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "\(MovieVC.self)") as! MovieVC
        let interactor = MovieInteractor()
        let router = MovieRouter()
        let presenter = MoviePresenter(view: view, interactor: interactor, router: router)
        view.presenter = presenter
        interactor.presenter = presenter
        router.viewController = view
        return view
    }
    
    func navigateToUserDetailsScreen(from view: MovieViewProtocol?, movie: Movie) {
        let movieDetailsVC = MovieDetailsRouter.createMovieDetailsViewController(movie: movie) as! MovieDetailsVC
        print("hhhhhhshshshshshshhsshs")
        if let viewController = view as? UIViewController {
            viewController.navigationController?.pushViewController(movieDetailsVC, animated: true)
        }
    }
    
}
