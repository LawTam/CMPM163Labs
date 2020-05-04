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

E) top cube: texture is loaded through UV mapping via shaders. The fragment shader for this cube is coded to tile the texture in a 2x2 pattern. I achieved this by minimizing the texture to map only to the bottom left quadrant, which is also the smallest quadrant. After understanding that the fragment shader just returned the color do be assigned to a vUv coordinate, I realized that if I found a way to map each fragment shader's varying vUv coordinate in the other quadrants to their match their "twin" pixel in the bottom left quadrant, I could repeat the same tile in the other quadrants. So, I simply saved a "translated" value respective to the vUv coordinated and used that to get a texel from texture2D() and assign that color to gl_fragColor. This way, I repeated a pattern in a 2x2 pattern.

### 24. Questions

    a. ceiling(8 * u) - 1 = x
    
    b. ceiling(8 * v) - 1 = y
    
    c. uv(0.375, 0.25) = xy(2, 1) -> white
    
## Lab 5: Choose your own adventure
I chose to take the ThreeJS adventure and learn a little more about particle programming.

Part 1: Traveling through a particle universe

https://drive.google.com/file/d/1sJzLMWiDCcdm_ymW1CflXCsYbpGyzIhj/view?usp=sharing

Part 2: Particle Explosion

https://drive.google.com/file/d/1YBG9HyTkNHaiVgOgm1I0q5a6FgU_no19/view?usp=sharing

Part 3: Particle wave

https://drive.google.com/file/d/13PIX6PbnTn_pOQKThQi5BdZyRZJvqzZ9/view?usp=sharing
