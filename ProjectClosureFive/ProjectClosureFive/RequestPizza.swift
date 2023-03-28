//
//  RequestPizza.swift
//  ProjectClosureFive
//
//  Created by Ana Paula Silva de Sousa on 26/03/23.
//

import UIKit
import Alamofire

protocol RequestDelegate: NSObject {
    func finishRequest(arrayPizza: Pizza?)
    func erroRequest()
}

class RequestPizza: NSObject {

    weak var delegate: RequestDelegate?
    
    func requestPizza(completion: @escaping (Pizza?) -> Void ) {
        AF.request("https://p3teufi0k9.execute-api.us-east-1.amazonaws.com/v1/pizza", method: .get).response { response in
            let pizza = try? JSONDecoder().decode(Pizza.self, from: response.data ?? Data())
            
            completion(pizza)
            
            self.delegate?.finishRequest(arrayPizza: pizza)
        }
    }
}
