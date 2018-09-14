//
//  ViewController.swift
//  Experiments2
//
//  Created by Harrill, Hayden A. (MU-Student) on 9/14/18.
//  Copyright © 2018 Harrill, Hayden A. (MU-Student). All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var bridgeImageView = UIImageView()
    var dogImageView = UIImageView()
    var catImageView = UIImageView()
    
    var leadingConstraint: NSLayoutConstraint?
    var trailingConstraint: NSLayoutConstraint?
    var topConstraint: NSLayoutConstraint?
    var bottomConstraint: NSLayoutConstraint?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        bridgeImageView.image = UIImage(named: "BayBridge.jpg")
        bridgeImageView.contentMode = .scaleAspectFit
        view.addSubview(bridgeImageView)
        
        bridgeImageView.translatesAutoresizingMaskIntoConstraints = false
        
        dogImageView.image = UIImage(named: "dog.jpeg")
        dogImageView.contentMode = .scaleAspectFit
        view.addSubview(dogImageView)
        
        dogImageView.translatesAutoresizingMaskIntoConstraints = false
        
        catImageView.image = UIImage(named: "cat.jpeg")
        catImageView.contentMode = .scaleAspectFit
        view.addSubview(catImageView)
        
        catImageView.translatesAutoresizingMaskIntoConstraints = false
        
        
        let margins = view.layoutMarginsGuide

        //bridgeImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor) = (view.centerXAnchor / 3)
        
        bridgeImageView.leadingAnchor.constraint(equalTo: margins.leadingAnchor).isActive = true

        bridgeImageView.trailingAnchor.constraint(equalTo: dogImageView.leadingAnchor, constant: -5).isActive = true
        
        bridgeImageView.topAnchor.constraint(equalTo: margins.topAnchor).isActive = true
        
        //bridgeImageView.bottomAnchor.constraint(equalTo: margins.bottomAnchor).isActive = true
        
        bridgeImageView.centerYAnchor.constraint(equalTo: dogImageView.centerYAnchor).isActive = true
        
        bridgeImageView.widthAnchor.constraint(equalTo: catImageView.widthAnchor).isActive = true
        
        
        
        catImageView.leadingAnchor.constraint(equalTo: dogImageView.trailingAnchor, constant: 5).isActive = true
        
        catImageView.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
        
        catImageView.topAnchor.constraint(equalTo: margins.topAnchor).isActive = true
        
        catImageView.centerYAnchor.constraint(equalTo: bridgeImageView.centerYAnchor).isActive = true
        
        catImageView.widthAnchor.constraint(equalTo: dogImageView.widthAnchor).isActive = true
        
        
        
        dogImageView.leadingAnchor.constraint(equalTo: bridgeImageView.trailingAnchor, constant: 5).isActive = true
        
        dogImageView.trailingAnchor.constraint(equalTo: catImageView.leadingAnchor, constant: -5).isActive = true
        
        dogImageView.topAnchor.constraint(equalTo: margins.topAnchor).isActive = true
        
        dogImageView.centerYAnchor.constraint(equalTo: catImageView.centerYAnchor).isActive = true
        
        dogImageView.widthAnchor.constraint(equalTo: bridgeImageView.widthAnchor).isActive = true
    
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

