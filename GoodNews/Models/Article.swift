//
//  Article.swift
//  GoodNews
//
//  Created by Vinnicius Pereira on 11/03/21.
//

import Foundation

struct ArticleList: Decodable{
    let articles: [Article]
    
}

struct Article: Decodable {
    let title: String?
    let description: String?
}
