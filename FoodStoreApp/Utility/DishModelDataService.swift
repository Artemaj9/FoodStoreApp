//
//  DishModelDataService.swift
//  FoodStoreApp
//
//  Created by Artem on 28.06.2023.
//

import Foundation
import Combine

class DishModelDataService {
    
    static let instance = DishModelDataService() //Singleton
    
    @Published var dishModels: [DishModel] = []
    var cancellables = Set<AnyCancellable>()
    
    private init() {
        downloadData()
    }
    
    func downloadData () {
        
        guard let url = URL(string: "https://run.mocky.io/v3/aba7ecaa-0a70-453b-b62d-0e326c859b3b") else {return}
        URLSession.shared.dataTaskPublisher(for: url)
            .subscribe(on: DispatchQueue.global(qos: .background))
            .receive(on: DispatchQueue.main)
            .tryMap(handleOutput)
            .decode(type: [DishModel].self, decoder: JSONDecoder())
            .sink { (completion) in
                switch completion {
                case .finished:
                    break
                case .failure (let error):
                    print("Error downloading data. \(error)")
                }
            } receiveValue: { [weak self] (returnedDishModels) in
                self?.dishModels = returnedDishModels
            }
            .store(in: &cancellables)
    
    }
    
    private func handleOutput(output: URLSession.DataTaskPublisher.Output) throws -> Data {
        
        guard
            let response = output.response as? HTTPURLResponse,
            response.statusCode >= 200 && response.statusCode < 300 else {
            throw URLError(.badServerResponse)
        }
        return output.data
    }
    
}
