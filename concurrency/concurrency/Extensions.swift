import UIKit
extension NetworkImageOperation: ImageDataProvider {}
extension TiltShiftOperation: ImageDataProvider {
  var image: UIImage? { return outputImage }
}
