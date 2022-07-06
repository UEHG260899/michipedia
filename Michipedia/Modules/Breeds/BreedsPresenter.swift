//
//  BreedsPresenter.swift
//  Michipedia
//
//  Created by Uriel Hernandez Gonzalez on 05/07/22.
//

import Foundation

class BreedsPresenter: BreedsPresenterProtocol, BreedsInteractorOutputProtocol {
    var interactor: BreedsInteractorInputProtocol?
    weak private var view: BreedsViewProtocol?
    private let router: BreedsRouterProtocol
    
    init(interface: BreedsViewProtocol, interactor: BreedsInteractorInputProtocol, router: BreedsRouterProtocol) {
        self.view = interface
        self.interactor = interactor
        self.router = router
    }
    
}
