module Dare

  # loads an image which can be drawn to a canvas
  #
  class Image

    # loads a new image resource
    # image = Dare::Image.new('some_image.png')
    #
    def initialize(path = "", window = Dare.default_canvas)
      @img = `new Image()`
      `#{@img}.src = #{path}`
      @window = window
    end

    # draws image to a canvas at an x and y position
    # x and y represent the top-left corner of the image
    # image.draw(100, 200)
    #
    def draw(x = 0, y = 0)
      `#{@window.canvas.context}.drawImage(#{@img},#{x},#{y})`
    end
  end
end