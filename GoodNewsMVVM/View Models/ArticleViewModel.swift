//
//  ArticleViewModel.swift
//  GoodNewsMVVM
//
//  Created by APPLE on 2019/12/19.
//  Copyright © 2019 JeongminKim. All rights reserved.
//

import Foundation

struct ArticleListViewModel {
    let articles:[Article]
}

extension ArticleListViewModel {
    // 테이블뷰에 보여질 개수
    var numberOfSection: Int {
        return 1
    }
    
    // 몇 줄을 돌려받을 것이냐
    func numberOfRowsInSection(_ section: Int) -> Int {
        return self.articles.count
    }
    
    func articleAtIndex(_ index: Int) -> ArticleViewModel {
        let article = self.articles[index]
        return ArticleViewModel(article)
    }
}

// 특정 뉴스 하나를 디스플레이 하는 것에 대한 책임이 있는 ArticleViewModel
struct ArticleViewModel {
    private let article: Article
}

extension ArticleViewModel {
    init(_ article: Article) {
        self.article = article
    }
}

extension ArticleViewModel {
    var title: String {
        return self.article.title
    }
    
    var description: String {
        return self.article.description
    }
}
