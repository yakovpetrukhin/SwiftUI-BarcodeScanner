//
//  ContentView.swift
//  SwiftUI-BarcodeScanner
//
//  Created by Yakov Petrukhin on 2023-11-29.
//

import SwiftUI

struct BarcodeScannerView: View {
    
    @StateObject var viewModel = BarcodeScannerViewModel()
    //    @State private var isShowingAlert = false

    
    var body: some View {
        NavigationView {
            VStack {
                ScannerView(scannedCode: $viewModel.scannedCode,
                            alertItem: $viewModel.alertItem)
                    .frame(maxHeight: 300)
                
                Spacer()
                    .frame(height: 60)
                
                Label("Scanned Barcode:", systemImage: "barcode.viewfinder")
                    .font(.title)
            
                Text(viewModel.statusText)
                    .font(.largeTitle)
                    .bold()
                    .foregroundStyle(viewModel.statusTextColor)
                    .padding()
                
//                Button {
//                    isShowingAlert = true
//                } label: {
//                    Text("Tap Me")
//                }
                
            }
            .navigationTitle("Barcode Scanner")
            .alert(item: $viewModel.alertItem) { alertItem in
                Alert(title: Text(alertItem.title), message: Text(alertItem.message), dismissButton: alertItem.dismissButton)
            }
//            .alert(isPresented: $isShowingAlert, content: {
//                Alert(title: Text("Test"), message: Text("This is a test"), dismissButton: .default(Text("Ok")))
//            })
        }
        //my version when i was to make this view myself
//        VStack {
//            HStack {
//                Text("Barcode Scanner")
//                    .font(.title)
//                    .bold()
//    
//                Spacer()
//            }
//            .padding(.top, 40)
//            
//            Spacer()
//            
//            Text("")
//                .frame(width: 500
//                    , height: 300)
//                .background(.black)
//            Spacer()
//            
//            Label("Scanned Barcode:", systemImage: "barcode.viewfinder")
//                .font(.title)
//            
//            Text("Not Yet Scanned")
//                .font(.largeTitle)
//                .bold()
//                .foregroundStyle(.red)
//                .padding(20)
//            
//            Spacer()
//        }
//        .padding()
    }
}

#Preview {
    BarcodeScannerView()
}
