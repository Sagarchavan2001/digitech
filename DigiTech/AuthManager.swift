//
//  AuthManager.swift
//  DigiTech
//
//  Created by STC on 03/06/23.
//
import FirebaseAuth
import Foundation
class authManager{
    static let shared = authManager()
    private let auth = Auth.auth()
    private var verificationId : String?
    public func startAuth(phoneNumber : String,completion : @escaping(Bool) -> Void){
        PhoneAuthProvider.provider().verifyPhoneNumber(phoneNumber, uiDelegate: nil){
            [weak self] verificationId,error in
            guard let verificationId = verificationId,error == nil else{
                completion(false)
                
                return
            }
            self?.verificationId = verificationId
            completion(true)
        }
                
    }
    public func verifyCode(smsCode : String,completion : @escaping(Bool) -> Void){
        guard let verificationId = verificationId else{
            completion(false)
            return
        }
        let credentials = PhoneAuthProvider.provider().credential(withVerificationID: verificationId, verificationCode: smsCode)
        auth.signIn(with: credentials){result,error in
            guard result != nil,error == nil else{
                completion(false)
                return
            }
            completion(true)
        }
    }
}
