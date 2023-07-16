//
//  Animals.swift
//  AnimalInfos
//
//  Created by Öznur Ölçek on 16.07.2023.
//

import UIKit

class Animals: UIView {
    
    var webLink : String?
    var openWebAction: ((_ url: String) -> ())?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder : NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    private func setupView() {
        if let viewAnimal = Bundle.main.loadNibNamed("Animals", owner: self)?[0] as? UIView {
            viewAnimal.frame = self.bounds
            addSubview(viewAnimal)
        }
    }
    
    @IBAction func openVideoAct(_ sender: Any) {
    }
    
    @IBAction func openWebAct(_ sender: Any) {
        openWebAction?(webLink!)
      
    }
    
}
