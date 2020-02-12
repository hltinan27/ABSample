//
//  ViewController.swift
//  ABSample
//
//  Created by Halit inan on 12.02.2020.
//  Copyright © 2020 Halit inan. All rights reserved.
//

import UIKit
import NetworkAPI



class ViewController: UIViewController {

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        var req = CustomRequest()
        req.param = ""
        req.path = ""
        req.baseURL = "https://rss.itunes.apple.com/api/v1/us/movies/top-movies/all/25/explicit.json"

        let container = AppDIContainer.shared.makeCustomContainer()
        container.makeCustomUseCase().execute(requestValue: req) { (response, error) in
            print(response)
         }
        }
    }


