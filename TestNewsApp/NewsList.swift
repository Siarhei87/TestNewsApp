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
        return news.author ?? "Ari Levy"
    }
    
    var description: String {
        return news.description ?? "Anil Chakravarthy joined Adobe in January 2020 to run the digital experience business. Soon, he was meeting all his co-workers and customers over video."
    }
    
    var title: String {
        return news.title ?? "Adobe's newest top executive explains how Covid pandemic changed his first year on the job - CNBC"
    }
    
    var url: String {
        return news.url ?? "https://www.cnbc.com/2021/04/25/adobe-evp-anil-chakravarthy-talks-covid-year-almost-meeting-tom-brady.html"
    }
    
    var urlToImage: String {
        return news.urlToImage ?? "https://image.cnbcfm.com/api/v1/image/106865020-1617826665912-Adobe_AnilChakravarthy_2020_5482_1920x1080_HI1.jpg?v=1617826881"
    }
}
