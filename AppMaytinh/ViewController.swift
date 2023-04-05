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
        var soThuNhat = 0
        var soThuHai = 0
        var dangOTrangThaiThuHai = false
        var phepTinh = ""
    @IBAction func btnCaculatorPressed(_ sender: UIButton) {
        
        print(sender.titleLabel!.text!)
                if sender.titleLabel!.text! == "0" {
                    if dangOTrangThaiThuHai {
                        soThuHai = 0
                    } else {
                        soThuNhat = 0
                        dangOTrangThaiThuHai = true
                    }
                    lblResult.text! = "0"
                }
                if sender.titleLabel!.text! == "1" {
                    if dangOTrangThaiThuHai {
                        soThuHai = 1
                    } else {
                        soThuNhat = 1
                        dangOTrangThaiThuHai = true
                    }
                    lblResult.text! = "1"
                }
                if sender.titleLabel!.text! == "2" {
                    if dangOTrangThaiThuHai {
                        soThuHai = 2
                    } else {
                        soThuNhat = 2
                        dangOTrangThaiThuHai = true
                    }
                    lblResult.text! = "2"
                }
                if sender.titleLabel!.text! == "3" {
                    if dangOTrangThaiThuHai {
                        soThuHai = 3
                    } else {
                        soThuNhat = 3
                        dangOTrangThaiThuHai = true
                    }
                    lblResult.text! = "3"
                }
                if sender.titleLabel!.text! == "4" {
                    if dangOTrangThaiThuHai {
                        soThuHai = 4
                    } else {
                        soThuNhat = 4
                        dangOTrangThaiThuHai = true
                    }
                    lblResult.text! = "4"
                }
                if sender.titleLabel!.text! == "5" {
                    if dangOTrangThaiThuHai {
                        soThuHai = 5
                    } else {
                        soThuNhat = 5
                        dangOTrangThaiThuHai = true
                    }
                    lblResult.text! = "5"
                }
                if sender.titleLabel!.text! == "6" {
                    if dangOTrangThaiThuHai {
                        soThuHai = 6
                    } else {
                        soThuNhat = 6
                        dangOTrangThaiThuHai = true
                    }
                    lblResult.text! = "6"
                }
                if sender.titleLabel!.text! == "7" {
                    if dangOTrangThaiThuHai {
                        soThuHai = 7
                    } else {
                        soThuNhat = 7
                        dangOTrangThaiThuHai = true
                    }
                    lblResult.text! = "7"
                }
                if sender.titleLabel!.text! == "8" {
                    if dangOTrangThaiThuHai {
                        soThuHai = 8
                    } else {
                        soThuNhat = 8
                        dangOTrangThaiThuHai = true
                    }
                    lblResult.text! = "8"
                }
                if sender.titleLabel!.text! == "9" {
                    if dangOTrangThaiThuHai {
                        soThuHai = 9
                    } else {
                        soThuNhat = 9
                        dangOTrangThaiThuHai = true
                    }
                    lblResult.text! = "9"
                }
                if sender.titleLabel!.text! == "C" {
                    lblResult.text! = "0"
                    soThuNhat = 0
                    soThuHai = 0
                    dangOTrangThaiThuHai = false
                }
                if sender.titleLabel!.text! == "+" {
                    phepTinh = "+"
                    lblResult.text! = "+"
                }
                if sender.titleLabel!.text! == "-" {
                    phepTinh = "-"
                    lblResult.text! = "-"
                }
                if sender.titleLabel!.text! == "*" {
                    phepTinh = "*"
                    lblResult.text! = "*"
                }
                if sender.titleLabel!.text! == "/" {
                    phepTinh = "/"
                    lblResult.text! = "/"
                }
                if sender.titleLabel!.text! == "=" {
                    tinh(phepTinhHienTai: phepTinh)
                    }
                }

            func tinh(phepTinhHienTai: String) {
//                switch phepTinhHienTai {
//                case "+":
//                    print ("\(soThuNhat)+\(soThuHai) = \(soThuNhat)+\(soThuHai)")
//                }
                if phepTinhHienTai == "+" {
                let tong = soThuNhat + soThuHai
                lblResult.text! = "\(tong)"
                soThuNhat = tong
                }
                if phepTinhHienTai == "-" {
                let hieu = soThuNhat - soThuHai
                lblResult.text! = "\(hieu)"
                soThuNhat = hieu
                }
            if phepTinhHienTai == "*" {
                let tich = soThuNhat * soThuHai
                lblResult.text! = "\(tich)"
                soThuNhat = tich
                }
            if phepTinhHienTai == "/" {
                let thuong = soThuNhat / soThuHai
                if soThuHai != 0 {
                    lblResult.text! = "\(thuong)"
                    soThuNhat = thuong
                } else {
                    lblResult.text! = "Lỗi"
                    
                }
                }
    }
    
    
}

