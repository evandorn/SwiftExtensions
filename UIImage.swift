extension UIImage {
  func trim(trimRect: CGRect) -> UIImage {
    if CGRect(origin: CGPoint.zero, size: self.size).contains(trimRect) {
      if let imageRef = self.cgImage?.cropping(to: trimRect) {
        return UIImage(cgImage: imageRef)
      }
    }
    
    UIGraphicsBeginImageContextWithOptions(trimRect.size, true, self.scale)
    self.draw(in: CGRect(x: -trimRect.minX, y: -trimRect.minY, width: self.size.width, height: self.size.height))
    let trimmedImage = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    
    guard let image = trimmedImage else { return self }
    
    return image
  }
  
  var circleMask: UIImage {
    let square = CGSize(width: min(size.width, size.height), height: min(size.width, size.height))
    let imageView = UIImageView(frame: CGRect(origin: CGPoint(x: 0, y: 0), size: square))
    imageView.contentMode = UIViewContentMode.scaleAspectFill
    imageView.image = self
    imageView.layer.cornerRadius = square.width/2
    // imageView.layer.borderColor = UIColor.black.cgColor
    // imageView.layer.borderWidth = 5
    imageView.layer.masksToBounds = true
    UIGraphicsBeginImageContext(imageView.bounds.size)
    imageView.layer.render(in: UIGraphicsGetCurrentContext()!)
    let result = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    return result!
  }
}
