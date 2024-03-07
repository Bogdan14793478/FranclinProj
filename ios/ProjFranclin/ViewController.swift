//
//  ViewController.swift
//  ProjFranclin
//
//  Created by Богдан on 3/7/24.
//

import UIKit
import React

class ViewController: UIViewController {
    
    var label = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        initialSetup()
    }
    
    override func loadView() {
        loadReactNativeView()
    }

    func loadReactNativeView() {
        let jsCodeLocation = URL(string: "http://localhost:8081/index.bundle?platform=ios")!
        let rootView = RCTRootView(
            bundleURL: jsCodeLocation,
            moduleName: "RNHighScores",
            initialProperties: nil,
            launchOptions: nil
        )
        self.view = rootView
    }

}

private extension ViewController {
    func initialSetup() {
        setupUI()
    }
    
    func setupUI() {
        label.text = "Its Swift text"
        label.font = .systemFont(ofSize: 22, weight: .bold)
        label.textColor = .black
        
        let labelFrame = CGRect(x: 30, y: 200, width: 200, height: 23)
        
        label.frame = labelFrame
        
        view.addSubview(label)
    }
}

