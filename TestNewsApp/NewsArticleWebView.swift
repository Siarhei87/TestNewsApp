//
//  NewsArticleWebView.swift
//  TestNewsApp
//
//  Created by Siarhei Dubko on 25.04.21.
//

import SwiftUI

struct NewsArticleWebView: View {
    
    var newsUrl: String
    
    var body: some View {
        SwiftUIWebView(urlString: newsUrl)
            .padding(.top, 20)
    }
}
