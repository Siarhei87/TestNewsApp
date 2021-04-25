//
//  NewsList.swift
//  TestNewsApp
//
//  Created by Siarhei Dubko on 25.04.21.
//

import Foundation

struct NewsViewModel {
    let news: News
    
    var author: String {
        return news.author ?? "Unknown"
    }
    
    var description: String {
        return news.description ?? ""
    }
    
    var title: String {
        return news.title ?? ""
    }
    
    var url: String {
        return news.url ?? ""
    }
    
    var urlToImage: String {
        return news.urlToImage ?? "https://image.cnbcfm.com/api/v1/image/106865020-1617826665912-Adobe_AnilChakravarthy_2020_5482_1920x1080_HI1.jpg?v=1617826881"
    }
}
