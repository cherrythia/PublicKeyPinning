//
//  NetworkManager.swift
//  CertificatePinning
//
//  Created by Chia Wei Zheng Terry on 16/5/24.
//

import Foundation
import Alamofire

class NetworkManager {
    
    let url = "https://www.dbs.com.sg/sg-rates-api/v1/api/sgrates/getCurrencyConversionRates?FETCH_LATEST=1715870926778"
    
    let session = Session(configuration: .default, serverTrustManager: ServerTrustManager(allHostsMustBeEvaluated: true, evaluators: [
        "www.dbs.com.sg": PublicKeysTrustEvaluator()
    ]))
    
    init() {
        
    }
    
    func request() {
        let item = Bundle.main.af.certificates
        debugPrint(item)
        
        session.request(url, method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil, interceptor: nil)
            .response { it in
                debugPrint(it)
            }
       }
}
