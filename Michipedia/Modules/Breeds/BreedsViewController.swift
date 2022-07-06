//
//  BreedsViewController.swift
//  Michipedia
//
//  Created by Uriel Hernandez Gonzalez on 05/07/22.
//

import UIKit

class BreedsViewController: UIViewController, BreedsViewProtocol {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var factButton: UIButton!
    
    var presenter: BreedsPresenterProtocol?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
    }
    
    private func setupUI() {
        navigationController?.setNavigationBarHidden(true, animated: false)
        constructAttributedString()
        factButton.layer.cornerRadius = 16
        factButton.addShadow()
    }


    private func constructAttributedString() {
        let primaryAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.systemFont(ofSize: 28, weight: .semibold),
            .foregroundColor: UIColor(named: "Title") ?? .black
        ]
        let secondaryAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.systemFont(ofSize: 28, weight: .semibold),
            .foregroundColor: UIColor(named: "AccentColor") ?? .blue
        ]
        
        let attributedString = NSMutableAttributedString(string: "Find the best cat facts ", attributes: primaryAttributes)
        attributedString.append(NSMutableAttributedString(string: "on earth", attributes: secondaryAttributes))
        titleLabel.attributedText = attributedString
    }

}
