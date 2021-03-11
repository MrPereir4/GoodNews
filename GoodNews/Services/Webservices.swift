//
//  Webservices.swift
//  GoodNews
//
//  Created by Vinnicius Pereira on 11/03/21.
//

import Foundation

class Webservices{
    
    func getArticles(url: URL, completion: @escaping ([Article]?) -> ()){
        URLSession.shared.dataTask(with: url) { (data, responde, error) in
            
            if let error = error{
                print(error.localizedDescription)
                completion(nil)
            }else if let data = data{
                
                let articlesList = try? JSONDecoder().decode(ArticleList.self, from: data)
                
                if let articlesList = articlesList{
                    completion(articlesList.articles)
                }
                
                print(articlesList?.articles)
                
            }
            completion(nil)

        }.resume()
    }
    
    
}
