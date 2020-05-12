float DistLine(vec3 rayOrigin, vec3 rayDirection, vec3 p){
    return length(cross(p-rayOrigin, rayDirection))/ length(rayDirection);
    // h = ||rd x rop ||/||rd||
}
   
void mainImage( out vec4 fragColor, in vec2 fragCoord ){    
    // Normalized pixel coordinates (from 0 to 1)
    vec2 uv = fragCoord.xy/iResolution.xy;
    uv -= .5;
    uv.x *= iResolution.x/iResolution.y;	// Squares the texture
   
    
    // distance of camera to the center of the screen
    vec3 rayOrigin = vec3(0., 0., -2.);
    
    // the point of intersection - rayOrigin
    // 	this is the vector from some uv to the rayOrigin
    vec3 rayDirection = vec3(uv.x, uv.y, 0.) - rayOrigin;
    
    //---- at this point, we have set up a camera
    float t = iTime;
    
    // test point
    vec3 point = vec3(sin(t), 0., 1.+cos(t));        
    // distance to from the point from the camera->uv ray
    float dist = DistLine(rayOrigin, rayDirection, point); 
    
    // create the circle
    dist = smoothstep(.1, .09, dist);
    
    if(dist == (1., 1., 1., 1.)){
        // Create the background texture (my code)
    	vec4 sampledColor = texture(iChannel0, uv);
        fragColor = vec4(sampledColor);
    }
    else{
        float sampledColor = dist;
        fragColor = vec4(sampledColor);
    }
}