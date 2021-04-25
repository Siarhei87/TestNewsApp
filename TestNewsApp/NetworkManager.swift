//
//  NetworkManager.swift
//  TestNewsApp
//
//  Created by Siarhei Dubko on 25.04.21.
//

import Foundation

class NetworkManager {
    private let baseUrlString = "https://newsapi.org/v2/"
    private let usTopHeadline = "top-headlines?country=us"
    
    func getNews(completion: @escaping (([News]?) -> Void)) {
        let urlString = "\(baseUrlString)\(usTopHeadline)&apiKey=\(API.key)"
        guard let url = URL(string: urlString) else  {
            completion(nil)
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard error == nil, let data = data else {
                completion(nil)
                return
            }
            
            let newsRes = try? JSONDecoder().decode(NewsEnvelope.self, from: data)
            newsRes == nil ? completion(nil) : completion(newsRes!.articles)
        } .resume()
        
    }
}
