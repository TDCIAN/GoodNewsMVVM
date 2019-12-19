//
//  Article.swift
//  GoodNewsMVVM
//
//  Created by APPLE on 2019/12/19.
//  Copyright © 2019 JeongminKim. All rights reserved.
//

import Foundation

struct ArticleList: Decodable {
    let articles: [Article]
}

struct Article: Decodable {
    let title: String
    let description: String
}
