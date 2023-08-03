import ComposableArchitecture
import SwiftUI

// MARK: - View

public struct ___FILEBASENAMEASIDENTIFIER___: View {
  private let store: StoreOf<___VARIABLE_productName:identifier___>

  public init(store: StoreOf<___VARIABLE_productName:identifier___>) {
    self.store = store
  }

  public var body: some View {
    WithViewStore(self.store, observe: { $0 }) { viewStore in
      List {
        Text("Hello, Male!")
      }
      .task {
        await viewStore
          .send(.onAppear)
          .finish()
      }
    }
  }
}

// MARK: - Preview

struct ___FILEBASENAMEASIDENTIFIER____Previews: PreviewProvider {
  static var previews: some View {
    ___FILEBASENAMEASIDENTIFIER___(store: store)
      .previewLayout(.sizeThatFits)
  }

  static let store = Store(initialState: .init()) {
    ___VARIABLE_productName:identifier___()
  }
}
