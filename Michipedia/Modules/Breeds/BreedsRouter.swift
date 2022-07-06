//
//  BreedsRouter.swift
//  Michipedia
//
//  Created by Uriel Hernandez Gonzalez on 05/07/22.
//

import Foundation
import UIKit

class BreedsRouter: BreedsRouterProtocol {
    weak var viewController: UIViewController?
    
    static func createModule() -> UIViewController {
        let view = BreedsViewController(nibName: "BreedsViewController", bundle: nil)
        let interactor = BreedsInteractor()
        let router = BreedsRouter()
        let presenter = BreedsPresenter(interface: view, interactor: interactor, router: router)
        
        view.presenter = presenter
        interactor.presenter = presenter
        router.viewController = view
        
        return view
    }
}
