//
//  InfoViewController.swift
//  AnimalInfos
//
//  Created by Öznur Ölçek on 15.07.2023.
//

import UIKit
import WebKit

class InfoViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    
    var url : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
       webView.load(URLRequest(url: URL(string: url!)!))
    }
    



}
