//
//  ViewController.swift
//  AnimalInfos
//
//  Created by Öznur Ölçek on 15.07.2023.
//

import UIKit

import AVKit
import AVFoundation

class ViewController: UIViewController {

    
    

    @IBOutlet var animalViews: [Animals]!
    
    @IBOutlet var animalImages: [UIImageView]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Animals"
        
        for i in 0..<animalImages.count {
            animalImages[i].layer.cornerRadius = 24
        }
        
        setupAnimals()
        
    }
    
    private func setupAnimals() {
        animalViews[0].webLink = "https://en.wikipedia.org/wiki/Cheetah"
        animalViews[1].webLink = "https://en.wikipedia.org/wiki/Elephant"
        animalViews[2].webLink = "https://en.wikipedia.org/wiki/Giraffe"
        animalViews[3].webLink = "https://en.wikipedia.org/wiki/Gorilla"
        animalViews[4].webLink = "https://en.wikipedia.org/wiki/Hippopotamus"
        animalViews[5].webLink = "https://en.wikipedia.org/wiki/Lion "
        animalViews[6].webLink = "https://en.wikipedia.org/wiki/Zebra"
        animalViews[7].webLink = "https://en.wikipedia.org/wiki/Common_ostrich"
        
        for i in 0..<animalViews.count {
            animalViews[i].openWebAction = routeInfoVC()
        }
        
    }
    
    func routeInfoVC() -> (String) -> () {
       return { url in
              let storyboard = UIStoryboard(name: "InfoViewController", bundle: nil)
              
              if let infoVC = storyboard.instantiateViewController(withIdentifier: "InfoViewController") as? InfoViewController {
                  infoVC.url = url
                  self.navigationController?.pushViewController(infoVC, animated: true)
              }
        }
    }


    
}

