//
//  BreedsProtocols.swift
//  Michipedia
//
//  Created by Uriel Hernandez Gonzalez on 05/07/22.
//

import Foundation

// MARK: - View protocols
protocol BreedsViewProtocol: AnyObject {
    var presenter: BreedsPresenterProtocol? { get set }
}

// MARK: - Interactor
protocol BreedsInteractorInputProtocol: AnyObject {
    var presenter: BreedsInteractorOutputProtocol? { get set }
}

// MARK: - Presenter

protocol BreedsInteractorOutputProtocol: AnyObject {
    
}

protocol BreedsPresenterProtocol: AnyObject {
    var interactor: BreedsInteractorInputProtocol? { get set }
}

// MARK: - Router

protocol BreedsRouterProtocol {
    
}
