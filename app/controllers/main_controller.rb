class MainController < UIViewController
  def viewDidLoad
    super
    @image_view = UIImageView.alloc.initWithImage(UIImage.imageNamed("640_1136.png"))
    @image_view.frame = [[0, 0], [UIScreen.mainScreen.bounds.size.width, UIScreen.mainScreen.bounds.size.height]]
    self.view.addSubview(@image_view)
  end
end
