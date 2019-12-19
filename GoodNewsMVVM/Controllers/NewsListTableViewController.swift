//
//  NewsListTableViewController.swift
//  GoodNewsMVVM
//
//  Created by APPLE on 2019/12/19.
//  Copyright © 2019 JeongminKim. All rights reserved.
//

import Foundation
import UIKit

class NewsListTableViewController: UITableViewController {
    
    private var articleListVM: ArticleListViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        // 상태바(StatusBar) 제목글씨의 색깔(블랙하면 흰 글씨, 디폴트 하면 검은 글씨 나오네)
        navigationController?.navigationBar.barStyle = .default
        
        // 뷰 제목 크게 만들기
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        // newsapi.org에서 가져 온 API Key
        let url = URL(string: "https://newsapi.org/v2/everything?q=apple&from=2019-12-18&to=2019-12-18&sortBy=popularity&apiKey=6d61b0036eb24a718896dca571428bc2")!
        
        WebService().getArticles(url: url) { articles in
            
            if let articles = articles {
                self.articleListVM = ArticleListViewModel(articles: articles)
                
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
        }
    }

    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // nil일 경우를 대비하기 위해 삼항연산자 사용
        return self.articleListVM == nil ? 0 : self.articleListVM.numberOfSection
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.articleListVM.numberOfRowsInSection(section)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // storyboard에서 ArticleTableViewCell의 Identifier로 "ArticleTableViewCell"을 입력해줘야 작동한다
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ArticleTableViewCell", for: indexPath) as? ArticleTableViewCell else {
            fatalError("ArticleTableViewCell not found")
        }
        
        let articleVM = self.articleListVM.articleAtIndex(indexPath.row)
        
        cell.titleLabel.text = articleVM.title
        cell.descriptionLabel.text = articleVM.description
        return cell
    }
    
}
