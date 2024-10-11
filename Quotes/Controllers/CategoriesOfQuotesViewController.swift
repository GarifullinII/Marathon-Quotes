//
//  ViewController.swift
//  Quotes
//
//  Created by Ildar Garifullin on 11/10/2024.
//

import UIKit
import SwiftUI

class CategoriesOfQuotesViewController: UIViewController {
    
    //MARK: - UI elements
    private let exampleLabel: UILabel = {
        let label = UILabel()
        label.text = "Example example"
        label.textColor = .gray
        label.font = UIFont(name: "Roboto-Medium", size: 24)
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var exampleImageView: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(systemName: "sun.max")
        iv.contentMode = .scaleAspectFill
        iv.layer.borderWidth = 5
        iv.clipsToBounds = true
        iv.layer.borderColor = UIColor.white.cgColor
        iv.tintColor = .label
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    
    private let exampleButton: UIButton = {
        let b = UIButton(type: .system)
        b.backgroundColor = .label
        b.layer.cornerRadius = 10
        b.setTitle("Example", for: .normal)
        b.titleLabel?.font = UIFont(name: "Roboto-Medium", size: 24)
        b.tintColor = .green
        b.setImage(UIImage(named: "addWorkout"), for: .normal)
        b.addTarget(self, action: #selector(exampleButtonTapped), for: .touchUpInside)
        b.translatesAutoresizingMaskIntoConstraints = false
        return b
    }()
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setConstraints()
    }
    
    //MARK: - Private methods
    private func setupViews() {
        view.backgroundColor = .red
        
        view.addSubview(exampleImageView)
    }
    
    @objc
    private func exampleButtonTapped() {
    }
    
    //MARK: - Methods
}

//MARK: - Set constraints
extension CategoriesOfQuotesViewController {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            exampleImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            exampleImageView.topAnchor.constraint(equalTo: view.topAnchor),
            exampleImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            exampleImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
        ])
    }
}

//MARK: - ViewControllerPreview
struct ViewControllerPreview: PreviewProvider {
    static var previews: some View {
        VCPreview {CategoriesOfQuotesViewController()}
    }
}

