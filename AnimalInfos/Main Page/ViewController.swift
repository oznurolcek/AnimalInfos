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
        
        for i in 0..<animalViews.count {
            animalImages[i].layer.cornerRadius = 24
        }
        
        setupAnimals()
        
    }
    
    private func setupAnimals() {
        animalViews[0].webLink = "https://en.wikipedia.org/wiki/Cheetah"
        animalViews[0].path = "cheetah"
        
        animalViews[1].webLink = "https://en.wikipedia.org/wiki/Elephant"
        animalViews[1].path = "elephant"
        
        animalViews[2].webLink = "https://en.wikipedia.org/wiki/Giraffe"
        animalViews[2].path = "giraffe"
        
        animalViews[3].webLink = "https://en.wikipedia.org/wiki/Gorilla"
        animalViews[3].path = "gorilla"
        
        animalViews[4].webLink = "https://en.wikipedia.org/wiki/Hippopotamus"
        animalViews[4].path = "hippo"
        
        animalViews[5].webLink = "https://en.wikipedia.org/wiki/Lion"
        animalViews[5].path = "lion"
        
        animalViews[6].webLink = "https://en.wikipedia.org/wiki/Common_ostrich"
        animalViews[6].path = "ostrich"
        
        animalViews[7].webLink = "https://en.wikipedia.org/wiki/Zebra"
        animalViews[7].path = "zebra"

        for i in 0..<animalViews.count {
            animalViews[i].openWebAction = routeInfoVC()
            animalViews[i].openVideoAction = playVideo()
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

    func playVideo() -> (String) -> () {
        return { path in
            if let filePath = Bundle.main.path(forResource: path, ofType: "mp4") {
                let player = AVPlayer(url: URL(fileURLWithPath: filePath))
                
                let playerControl = AVPlayerViewController()
                
                playerControl.player = player
                
                self.present(playerControl, animated: true) {
                    player.play()
                }
            }
        }
    }

    
}


class CustomNavigationController : UINavigationController {
    
}
