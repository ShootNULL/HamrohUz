//
//  Auth.swift
//  Hamroh
//
//  Created by Евгений Парфененков on 11.05.2024.
//

import Foundation

class Auth {
    
    let mainURL = "http://185.247.17.206:9000/api/auth/"
    
    struct User: Codable {
        var name: String
        var contactNumber: String
        var email: String
    }
    
    func getSecret(key: String) -> String? {
        var secret: String? = nil

        let keychainItemIdToken = [kSecClass: kSecClassGenericPassword, kSecReturnAttributes: true,
                              kSecReturnData: true, kSecAttrAccount: key] as [CFString : Any] as CFDictionary
        var refIdToken: AnyObject?
        _ = SecItemCopyMatching(keychainItemIdToken, &refIdToken)
        if let result = refIdToken as? NSDictionary, let passwordData = result[kSecValueData] as? Data {
            let str = String(decoding: passwordData, as: UTF8.self)
            secret = str
        }
        
        return secret
    }

    func setSecret(key: String, value: String) {
        SecItemDelete([kSecClass: kSecClassGenericPassword, kSecAttrAccount: key] as [CFString : Any] as CFDictionary)
        SecItemAdd([kSecValueData: value.data(using: .utf8) ?? "", kSecClass: kSecClassGenericPassword, kSecAttrAccount: key] as [CFString : Any] as CFDictionary, nil)
    }
    
    func clearSecret(key: String) {
        SecItemDelete([kSecClass: kSecClassGenericPassword, kSecAttrAccount: key] as [CFString : Any] as CFDictionary)
    }
    
    func auth(email: String, password: String) {
        
        DispatchQueue.background(background: {

            let url = URL(string: self.mainURL + "login")!
            
//            let json: [String: String] = ["email": "kek", "password": "kek"]
            let json: [String: Any] = ["email": email, "password": password]
            let jsonData = try? JSONSerialization.data(withJSONObject: json)

            var request = URLRequest(url: url)
            request.httpMethod = "POST"
            request.httpBody = jsonData
//            request.setValue("Content-Type", forHTTPHeaderField: "application/json")
//            request.setValue("accept", forHTTPHeaderField: "*/*")
            
            let task = URLSession.shared.dataTask(with: request) {(data, response, error) in
                guard let data = data else { return }
                
                let statusCode = (response as? HTTPURLResponse)?.statusCode
                let stringData = String(data: data, encoding: .utf8)!
                DispatchQueue.main.async(execute: {
                    switch statusCode {
                    case 200:
//                        self.loadUserData(data: data)
                        
//                        let nav = Navigation()
//                        nav.navigateTo(VC: vc, style: .fullScreen)
                        print("kukareku", data)
                    default:
                        print("Error", statusCode, stringData , url, request.httpBody?.base64EncodedString())
                    }
                })
            }

            task.resume()
            
        })
    }
    
    private func loadUserData(data: Data) {
        let decoder = JSONDecoder()
        
        if let jsonData = try? decoder.decode(User.self, from: data) {
            
            setSecret(key: "email", value: jsonData.email)
            setSecret(key: "name", value: String(jsonData.name))
            setSecret(key: "token", value: jsonData.contactNumber)
        }
    }
}
