class MainController < UIViewController
  def viewDidLoad
    super
    image = (568 == UIScreen.mainScreen.bounds.size.height) ? ("640_1136.png") : ("640_1136.png")
    image_view = UIImageView.alloc.initWithImage(UIImage.imageNamed(image))

    self.view.addSubview(image_view)


  end
end
