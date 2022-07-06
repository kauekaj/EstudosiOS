//
//  NewsListRepository.swift
//  DioNews
//
//  Created by user220237 on 7/6/22.
//

import Foundation
import OpenGLES

class NewsListRepository {
    
    static var shared: NewsListRepository = {
        let instance = NewsListRepository()
        return instance
    }()
    
    private init() {}
    
    func getNewsList(completion: ([NewsModel]?, Error?) -> Void) {
        if let path = Bundle.main.path(forResource: "NewsList", ofType: "json") {
            do {
                let url = URL(fileURLWithPath: path)
                let data = try Data(contentsOf: url, options: .mappedIfSafe)
                
                
                let decoder = JSONDecoder()
                let newsModelList = try decoder.decode([NewsModel].self, from: data)
                completion(newsModelList, nil)
            } catch {
                completion(nil, error)
            }
        } else {
            //completion(nil, Error())
        }
    }
}
