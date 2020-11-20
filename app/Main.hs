module Main where

import Graphics.Image as I

main :: IO ()
main = do
  choose <- getLine
  img <- I.readImageRGB VU "Olivia.jpg"

  case choose of 
    "half" -> I.writeImage "Olivia_half.jpg" (halfImg img)
    "third" -> I.writeImage "Olivia_third.jpg" (thirdImg img)
    "rotate90" -> I.writeImage "Olivia_rotate.jpg" (rotate90 img)
    "flip" -> I.writeImage "Olivia_flip.jpg" (flipIt img)
    "rotate180" -> I.writeImage "Olivia_flip180.jpg" (rotate180 img)
    "vertFlip" -> I.writeImage "Olivia_vertical.jpg" (flipV img)
    _ -> putStrLn "Invalid option"
  
  
  

halfImg :: Array arr cs e => Image arr cs e -> Image arr cs e

halfImg img = downsample even even img

thirdImg img = downsample third third img
  where third x = x `mod` 3 == 0

flipIt img = flipH img



















