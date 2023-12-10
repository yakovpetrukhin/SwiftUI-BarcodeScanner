//
//  BarcodeScannerVeiwModel.swift
//  SwiftUI-BarcodeScanner
//
//  Created by Yakov Petrukhin on 2023-12-02.
//

import SwiftUI

final class BarcodeScannerViewModel: ObservableObject {
    
    @Published var scannedCode: String = ""
    @Published var alertItem: AlertItem?
    
    var statusText: String {
        scannedCode.isEmpty ? "Not Yet Scanned" : scannedCode // return is omitted because code is one line
    }
    
    var statusTextColor: Color {
        scannedCode.isEmpty ? .red : .green
    }
}


