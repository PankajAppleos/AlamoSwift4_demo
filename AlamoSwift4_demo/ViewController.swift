//
//  ViewController.swift
//  AlamoSwift4_demo
//
//  Created by FM-MAC5 on 21/03/19.
//  Copyright © 2019 FM-MAC5. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
      alamofirefun()
//        let urlString = "https://fmtest.dishco.com/shawmanservices/api/TOTickerItem/FunPubGeTickerItems?IntLocRestaurantId=642332&StrLocSourceApp=WLA&StrLocPackageName=ticker.shawman.com.smaaash"
//
//        // root url + controller name + ? + parameters + &
//        let rooturl = "https://fmtest.dishco.com/shawmanservices/api/"
//        let controllerName = "TOTickerItem/FunPubGeTickerItems"
//        //var finalurl = URL(string: rooturl + controllerName + "?")
//
//        var urlComponents = NSURLComponents(string: rooturl+controllerName)!
//        urlComponents.queryItems = [
//            NSURLQueryItem(name: "IntLocRestaurantId", value: String(642332)),
//            NSURLQueryItem(name: "StrLocSourceApp", value: "WLA"),
//             NSURLQueryItem(name: "StrLocPackageName", value: "ticker.shawman.com.smaaash")
//            ] as [URLQueryItem]
//        urlComponents.url // returns https://www.google.de/maps/?q=51.500833,-0.141944&z=6
//
//        //let parameters: Parameters = ["IntLocRestaurantId": 642332, "StrLocSourceApp": "WLA", "StrLocPackageName": "ticker.shawman.com.smaaash"]
//
//        var headers: HTTPHeaders = [
//            "Content-Type": "application/json",
//            "iOSPhone":"EV6FTlgBhOZ6tJhZhz9nfpmeC38PtzRokjjkCwhsKjU="
//        ]
//        Alamofire.request(urlComponents.url!, method:.post, parameters:nil,encoding: JSONEncoding.default, headers:headers).responseJSON { response in
//            switch response.result {
//            case .success:
//                print(response)
//
//            case .failure(let error):break
//                //failure(0,"Error")
//            }
//        }
    }
    func alamofirefun() -> Void {
        let rooturl = "https://fmtest.dishco.com/shawmanservices/api/"
        let controllerName = "TOTickerItem/FunPubGeTickerItems"
        let urlComponents = NSURLComponents(string: rooturl+controllerName)!
        urlComponents.queryItems = [
            NSURLQueryItem(name: "IntLocRestaurantId", value: String(642332)),
            NSURLQueryItem(name: "StrLocSourceApp", value: "WLA"),
            NSURLQueryItem(name: "StrLocPackageName", value: "ticker.shawman.com.smaaash")
            ] as [URLQueryItem]
        urlComponents.url
        var headers: HTTPHeaders = [
            "Content-Type": "application/json",
            "iOSPhone":"EV6FTlgBhOZ6tJhZhz9nfpmeC38PtzRokjjkCwhsKjU="
        ]
        Alamofire.request(urlComponents.url!, method:.post, parameters:nil,encoding: JSONEncoding.default, headers:headers).responseJSON { response in
            switch response.result {
            case .success:
                print(response)
                
            case .failure(let error):break
                
                //failure(0,"Error")
            }
        }
    }
    
}

