//
//  ArticleViewModel.swift
//  GoodNews
//
//  Created by Vinnicius Pereira on 11/03/21.
//

import Foundation

struct ArticleListViewModel{
    let articles: [Article]
}

extension ArticleListViewModel{
    var numberOfSections: Int{
        return 1
    }
    
    func numberOfRowsInSection(_ section: Int) -> Int{
        return self.articles.count
    }
    
    func articleAtIndex(_ index: Int) -> ArticleViewModel{
        let article = self.articles[index]
        return ArticleViewModel(article)
    }
}

struct ArticleViewModel {
    private let article: Article
    
}

extension ArticleViewModel {
    init(_ article: Article) {
        self.article = article
    }
}

extension ArticleViewModel {
    var title: String{
        if let artTitle = self.article.title{
            return artTitle
        }
        
        return ""
    }
    
    var description: String {
        if let artDesc = self.article.description{
            return artDesc
        }
        return ""
    }
}
