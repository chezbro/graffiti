class MainController < UIViewController
  def viewDidLoad
    super

    @image_view = UIImageView.alloc.initWithImage(UIImage.imageNamed("640_1136.png"))
    @image_view.frame = [[0, 0], [UIScreen.mainScreen.bounds.size.width, UIScreen.mainScreen.bounds.size.height]]
    self.view.addSubview(@image_view)

    capture_button_image = UIImage.imageNamed("capture_button.png")
    near_button_image = UIImage.imageNamed("near_button.png")
    popular_button_image = UIImage.imageNamed("popular_button.png")
    artists_button_image = UIImage.imageNamed("artists_button.png")

    @capture_button = UIButton.buttonWithType(UIButtonTypeCustom)
    @capture_button.frame = [[50,260],[221,53]]
    @capture_button.setBackgroundImage(capture_button_image, forState:UIControlStateNormal)
    @capture_button.addTarget(self, action: "open_capture", forControlEvents: UIControlEventTouchUpInside)

    @near_button = UIButton.buttonWithType(UIButtonTypeCustom)
    @near_button.frame = [[50,320],[221,53]]
    @near_button.setBackgroundImage(near_button_image, forState:UIControlStateNormal)
    @near_button.addTarget(self, action: "open_button", forControlEvents: UIControlEventTouchUpInside)

    @popular_button = UIButton.buttonWithType(UIButtonTypeCustom)
    @popular_button.frame = [[50,380],[221,53]]
    @popular_button.setBackgroundImage(popular_button_image, forState:UIControlStateNormal)
    @popular_button.addTarget(self, action: "open_button", forControlEvents: UIControlEventTouchUpInside)

    @artists_button = UIButton.buttonWithType(UIButtonTypeCustom)
    @artists_button.frame = [[50,440],[221,53]]
    @artists_button.setBackgroundImage(artists_button_image, forState:UIControlStateNormal)
    @artists_button.addTarget(self, action: "open_button", forControlEvents: UIControlEventTouchUpInside)

    self.view.addSubview(@capture_button)
    self.view.addSubview(@near_button)
    self.view.addSubview(@popular_button)
    self.view.addSubview(@artists_button)

  end

  def open_button
    @view_button = UIAlertView.alloc.initWithTitle("Hello",
      message:"hi",
      delegate:nil,
      cancelButtonTitle: "ok",
      otherButtonTitles:nil)
    @view_button.show
  end

  def open_capture
    BW::Device.camera.send(:rear).picture(media_types: [:image]) do |result|
      image_view = build_image_view(result[:original_image])
      self.view.addSubview(image_view)
      #imageData = UIImage.UIImageJPEGRepresentation(image_view.image, 1)
    end
  end

  def build_image_view(image)
    image_view = UIImageView.alloc.initWithImage(image)
    image_view.frame = [CGPointZero, self.view.frame.size]
    image_view.center = [self.view.frame.size.width / 2, self.view.frame.size.height / 2]
    image_view
  end

end
