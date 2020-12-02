module Main where

import Graphics.Image as I

main :: IO ()
main = do
  putStr "Input file name: "
  imageFile <- getLine
  -- let imageFile = "Olivia"
  putStrLn "Operations: half, third, rotate90, flip, rotate180, vertFlip"
  putStr "Choose your operation: "
  choose <- getLine
  img <- I.readImageRGB VU (imageFile ++ ".jpg")

  -- let imageFile = "Olivia.jpg"
  
  case choose of 
    "half" -> I.writeImage (imageFile ++ "_half.jpg") (halfImg img) 
    "third" -> I.writeImage (imageFile ++ "_third.jpg") (thirdImg img)
    "rotate90" -> I.writeImage (imageFile ++ "_rotate90.jpg") (rotate90 img)
    "flip" -> I.writeImage (imageFile ++ "_flipIt.jpg") (flipIt img)
    "rotate180" -> I.writeImage (imageFile ++ "_rotate180.jpg") (rotate180 img)
    "vertFlip" -> I.writeImage (imageFile ++ "_vertFlip.jpg") (flipV img)
    _ -> putStrLn "Invalid option"
  
  
  

halfImg :: Array arr cs e => Image arr cs e -> Image arr cs e

halfImg img = downsample even even img

thirdImg img = downsample third third img
  where third x = x `mod` 3 == 0

flipIt img = flipH img











--1st time saved
-- case choose of 
--   "half" -> I.writeImage "Olivia_half.jpg" (halfImg img)
--   "third" -> I.writeImage "Olivia_third.jpg" (thirdImg img)
--   "rotate90" -> I.writeImage "Olivia_rotate.jpg" (rotate90 img)
--   "flip" -> I.writeImage "Olivia_flip.jpg" (flipIt img)
--   "rotate180" -> I.writeImage "Olivia_flip180.jpg" (rotate180 img)
--   "vertFlip" -> I.writeImage "Olivia_vertical.jpg" (flipV img)
--   _ -> putStrLn "Invalid option"






--second time saving
-- let imageFile = "Olivia"
-- choose <- getLine
-- img <- I.readImageRGB VU (imageFile ++ ".jpg")


-- case choose of 
--   "half" -> I.writeImage (imageFile ++ "_half.jpg") (halfImg img) 
--   "third" -> I.writeImage imageFile (thirdImg img)
--   "rotate90" -> I.writeImage imageFile . rotate90 $ img
--   "flip" -> I.writeImage imageFile (flipIt img)
--   "rotate180" -> I.writeImage imageFile (rotate180 img)
--   "vertFlip" -> I.writeImage imageFile (flipV img)
--   _ -> putStrLn "Invalid option"