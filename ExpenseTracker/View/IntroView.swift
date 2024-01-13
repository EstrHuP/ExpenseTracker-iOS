//
//  IntroView.swift
//  ExpenseTracker
//
//  Created by EstrHuP on 13/1/24.
//

import SwiftUI

struct IntroView: View {
    
    @AppStorage("isFirstTime") private var isFirstTime: Bool = true
    
    var body: some View {
        VStack(spacing: NumberConstants.twentySix) {
            Text("What's New in the \nExpense Tracker")
                .font(.largeTitle.bold())
                .multilineTextAlignment(.center)
                .padding(.top, NumberConstants.sixtySix)
                .padding(.bottom, NumberConstants.thirtySix)
            
            /// Points View
            VStack(alignment: .leading,
                   spacing: NumberConstants.twentySix) {
                PointView(symbol: LocalImageConstants.dollar,
                          title: "Transactions",
                          subTitle: "Keep track of your earnings and expenses.")
                
                PointView(symbol: LocalImageConstants.chartFill,
                          title: "Visual Charts",
                          subTitle: "View your transactions using eye-catchinng graphic representations.")
                
                PointView(symbol: LocalImageConstants.magnifyingglass, 
                          title: "Advance Filters",
                          subTitle: "Find the expenses you want by advance search and filtering.")
            }
            .frame(maxWidth: .infinity, 
                   alignment: .leading)
            .padding(.horizontal,
                     NumberConstants.twentySix)
            
            Spacer(minLength: NumberConstants.ten)
            
            Button {
                isFirstTime = false
            } label: {
                Text("Continue")
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 
                             NumberConstants.fourteen)
                    .background(Color.appTint.gradient,
                                in: .rect(cornerRadius: NumberConstants.twelve))
                    .contentShape(.rect)
            }
        }
        .padding(NumberConstants.sixteen)
    }
    
    /// Point View
    func PointView(symbol: String, title: String, subTitle: String) -> some View {
        HStack(spacing: NumberConstants.ten) {
            Image(systemName: symbol)
                .font(.largeTitle)
                .foregroundStyle(Color.appTint.gradient)
                .frame(width: NumberConstants.fortySix)
            
            VStack(alignment: .leading, spacing: NumberConstants.six) {
                Text(title)
                    .font(.title3)
                    .fontWeight(.semibold)
                
                Text(subTitle)
            }
        }
    }
}

#Preview {
    IntroView()
}
