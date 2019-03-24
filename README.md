# VIPS wrapper in D

This is a WIP wrapper around the VIPS library for the D Language.  
Sample usage:

```D
import vips.image;

void main(){
    auto image = VImage.fromFile("test.jpg");
    image.rotate(90).saveToFile("rotated.png");
}
```
