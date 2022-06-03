//Membuat Animasi 3D Bola Berwarna Menggunakan Processing

float spin = 0.0;

void setup()
{
size(640, 360, P3D);
noStroke();
}

void draw()
{
background(0);


// Orange point light on the right pointLight(150, 100, 0, // Color
pointLight(150, 100, 0, // Color
200, -150, 0); // Position

 // Blue directional light from the left
directionalLight(0, 102, 255, // Color
1, 0, 0); // The x-, y-, z-axis direction

// Yellow spotlight from the front spotLight(255, 255, 109, // Color

spotLight(255, 255, 109, // Color
0, 40, 200, // Position
0, -0.5, -0.5, // Direction
PI / 2, 2); // Angle, concentration

spin += 0.01;



pushMatrix();
float dirY = (mouseY / float(height) - 0.5) * 2;
float dirX = (mouseX / float(width) - 0.5) * 2;
directionalLight(204, 204, 204, -dirX, -dirY, -1);
translate(width/2 - 100, height/2, 0);
rotateX(PI/9); rotateY(PI/5 + spin); sphere(100); popMatrix();


translate(width/2, height/2, 0);

}
