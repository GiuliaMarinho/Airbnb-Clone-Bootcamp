//
//  ExploreViewScreen.swift
//  AirbnbCloneBootcampGiulia
//
//  Created by Giulia Marinho on 05/08/24.
//

import Foundation
import UIKit

class ExploreScreen: UIView {
    
    lazy var searchBarView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.clipsToBounds = true
        view.layer.cornerRadius = 30      
        view.layer.borderWidth = 1
        
        return view
    }()
    
    init() {
        super.init(frame: .zero)
        backgroundColor = .white
        addElements()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addElements() {
        addSubview(searchBarView)
    }
    
    func configConstraints() {
        NSLayoutConstraint.activate([
            
            
        ])
    }
    
}
