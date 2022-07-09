//
//  NewsListViewController.swift
//  DioNews
//
//  Created by kauekaj on 7/5/22.
//

import UIKit

class NewsListViewController: UIViewController {
    
    @IBOutlet weak var newsListTableView: UITableView!
    
    private var newsList: [NewsModel]? {
        didSet {
            self.newsListTableView.reloadData()
        }
    }
    
    var localDataProvider: NewsListLocalDataProvider?
    var test = ["1", "2", "3"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupTableView()
        self.initLocalDataProvider()
    }

    private func setupTableView() {
        self.newsListTableView.delegate = self
        self.newsListTableView.dataSource = self
        self.newsListTableView.register(UINib(nibName: "NewsTableViewCell", bundle: nil), forCellReuseIdentifier: "NewsTableViewCell")
    }
    
    private func initLocalDataProvider() {
        self.localDataProvider = NewsListLocalDataProvider()
        self.localDataProvider?.delegate = self
        self.localDataProvider?.getNewsList()
    }
    
}

extension NewsListViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "ShowNewsViewController", sender: nil)
    }
}

extension NewsListViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.newsList?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "NewsTableViewCell", for: indexPath) as? NewsTableViewCell else {
            fatalError("Unable to dequeue subclassed cell")
        }
        
        guard let newsList = newsList else {
            fatalError("Does not have a news list")
        }
        cell.news = newsList[indexPath.row]
        return cell
    }
}

extension NewsListViewController: NewsListLocalDataProviderProtocol {
    
    func success(model: Any) {
        self.newsList = model as? [NewsModel]
    }
    
    func errorData(_ provide: GenericDataProvider?, error: Error) {
        print("Erro: \(error.localizedDescription)")
    }
}
