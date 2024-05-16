//
//  ViewController.swift
//  CertificatePinning
//
//  Created by Chia Wei Zheng Terry on 16/5/24.
//

import UIKit

class ViewController: UIViewController {
    
    private let network = NetworkManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        testNetworkRequest()
    }
    
    private func testNetworkRequest() {
        network.request()
    }


}

