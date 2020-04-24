# CMPM163Labs
CMPM163 - Game Graphics and Real-time Rendering. UC Santa Cruz Spring '20.

Dr. Oskar Elek

This repository contains the projects I've created for this class.

## Lab 2: Intro to Three.js
https://drive.google.com/file/d/1CKSkuJHro8dgk-NTpe80hlE5MIGDCGpD/view?usp=sharing

![alt text](https://github.com/LawTam/CMPM163Labs/blob/master/Lab2/lab2_screenshot.png)

## Lab 3: Shaders in Three.js
https://drive.google.com/file/d/18H5dAxuw8wcNyGABOfExCjOd3HrkzK4h/view?usp=sharing

## Lab 4: Textures and Normal Maps
https://drive.google.com/file/d/1Nt4OpuXDCKjy9xNuZz_cGVwo3deR7SEq/view?usp=sharing
    
### How each cube was made:

A) left cube: uses standard three.js built in texture mapping functionality. The cube is created with MeshPhongMaterial

B) center cube: uses three.js built in texture mapping functionality. Includes a normal map.

C) bottom cube: uses three.js built in texture mapping functionality. Includes a second normal map.

D) right cube: texture is loaded through UV mapping via shaders. 

E) top cube: texture is loaded through UUV mapping via shaders. The fragment shader for this cube is augmented to tile in a 2x2 grid. I achieved this by modifying the varying uv coordinates to fill the bottom left quadrant of a surface which creates a half-sized texture, then using a scalar to achieve the correct mapping coordinate.

### 24. Questions

    a. ceiling(8 * u) - 1 = x
    
    b. ceiling(8 * v) - 1 = y
    
    c. uv(0.375, 0.25) = xy(2, 1) -> white
