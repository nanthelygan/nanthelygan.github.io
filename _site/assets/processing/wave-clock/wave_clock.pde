// Wave Clock

float _angNoise, _radiusNoise;
float _xNoise, _yNoise;
float _angle = -PI/2;
float _radius;
float _strokeColor = 254;
int _strokeColorIncrement = -1;

float radius = 100;
float diameter = radius*2;
int centX = 250;
int centY = 150;

void setup() {
	size(1000,600);
	strokeWeight(1);
	frameRate(30);
	smooth();
	noFill();
	background(255);

	_angNoise = random(10);
	_radiusNoise = random(10);
	_xNoise = random(10);
	_yNoise = random(10);
}

void draw() {
	
	_radiusNoise += 0.005;
	_radius = (noise(_radiusNoise)*550) + 1;

	_angNoise += 0.005;
	_angle += (noise(_angNoise)*6) -3;

	if (_angle > 360) {
		_angle -= 360;
	}

	if (_angle < 0) {
		_angle += 360;
	}

	_xNoise += 0.01;
	_yNoise += 0.01;

	float centerX = width/2 + (noise(_xNoise)*100) -50;
	float centerY = height/2 + (noise(_yNoise)*100) -50;

	float rad = radians(_angle);
	float x1 = centerX + (_radius * cos(rad));
	float y1 = centerY + (_radius * sin(rad));

	float oppositeRad = rad + PI;
	float x2 = centerX + (_radius * cos(oppositeRad));
	float y2 = centerY + (_radius * sin(oppositeRad));

	_strokeColor += _strokeColorIncrement;

	if (_strokeColor > 254) {
		_strokeColorIncrement = -1;
	}

	if (_strokeColor < 0) {
		_strokeColorIncrement = 1;
	}

	stroke(_strokeColor, 60);

	line(x1, y1, x2, y2);

}