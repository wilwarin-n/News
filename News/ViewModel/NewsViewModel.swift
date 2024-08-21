//
//  NewsViewModel.swift
//  News
//
//  Created by Aydın Kutlu on 19.08.2024.
//

import Foundation

struct NewsTableViewModel {
    
    let newsList : [News]
    
    func numberOfRowsInSection() -> Int {
        return self.newsList.count
    }
    
    func newsAtIndexPath(_ index: Int) -> NewsViewModel{
        let news = self.newsList[index]
        return NewsViewModel(news: news)
    }
}

struct NewsViewModel {
    let news : News
    
    var title: String {
        return self.news.title
    }
    
    var body: String {
        return self.news.body
    }
    
    
}
