//
//  ViewController.swift
//  AppMaytinh
//
//  Created by Thanh Dat on 03/04/2023.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet var lblResult: UILabel!
    var soThuNhatDangChuoi = ""
    var soThuNhatDangSo = 0
    var soThuHaiDangChuoi = ""
    var soThuHaiDangSo = 0
    var dangOTrangThaiSoHai = false
    var phepTinh = ""
    var ketQua = 0
    
    @IBAction func btnCaculatorPressed(_ sender: UIButton) {
        
        lblResult.text! += sender.titleLabel!.text!
        
        if sender.titleLabel!.text! == "C" {
            lblResult.text! = ""
        }
        if sender.titleLabel!.text! == "+" {
            phepTinh = "+"
        }
        if sender.titleLabel!.text! == "-" {
            phepTinh = "-"
        }
        if sender.titleLabel!.text! == "*" {
            phepTinh = "*"
        }
        if sender.titleLabel!.text! == "/" {
            phepTinh = "/"
        }
        if sender.titleLabel!.text! == "+" || sender.titleLabel!.text! == "-" || sender.titleLabel!.text! == "*" || sender.titleLabel!.text! == "/" {
            if dangOTrangThaiSoHai {
                lblResult.text! += sender.titleLabel!.text!
            } else {
                soThuNhatDangChuoi += lblResult.text!
                //                cat gia tri o vi tri cuoi cung
                soThuNhatDangChuoi.remove(at: soThuNhatDangChuoi.index(before: soThuNhatDangChuoi.endIndex))
                lblResult.text! = ""
                soThuNhatDangSo = Int(soThuNhatDangChuoi) ?? 0
                dangOTrangThaiSoHai = true
            }
        }
        
        if sender.titleLabel!.text! == "=" {
            soThuHaiDangChuoi += lblResult.text!
            soThuHaiDangChuoi.remove(at: soThuHaiDangChuoi.index(before: soThuHaiDangChuoi.endIndex))
            soThuHaiDangSo = Int(soThuHaiDangChuoi) ?? 0
            tinh(phepTinh: phepTinh)
            soThuNhatDangChuoi = ""
            soThuHaiDangChuoi = ""
        }
        
        func tinh(phepTinh: String){
            if phepTinh == "+" {
                ketQua = soThuNhatDangSo + soThuHaiDangSo
                lblResult.text! = "\(ketQua)"
            }
            if phepTinh == "-" {
                ketQua = soThuNhatDangSo - soThuHaiDangSo
                lblResult.text! = "\(ketQua)"
            }
            if phepTinh == "*" {
                ketQua = soThuNhatDangSo * soThuHaiDangSo
                lblResult.text! = "\(ketQua)"
            }
            if phepTinh == "/" {
                if soThuHaiDangSo == 0 {
                    lblResult.text! = "Lỗi"
                } else {
                    ketQua = soThuNhatDangSo / soThuHaiDangSo
                    lblResult.text! = "\(ketQua)"
                }
            }
            soThuNhatDangSo = ketQua
            dangOTrangThaiSoHai = false
            
        }
    }
    
}
