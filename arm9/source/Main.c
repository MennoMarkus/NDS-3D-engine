#include <nds.h>
#include <stdio.h>
#include <malloc.h>
#include <nds/arm9/image.h>

#include "Peanut_pcx.h"

int xRotation, yRotation;
int xSpeed, ySpeed;
int zPosition = -20480;
int texture[1];

bool loadTextures();
bool drawScene();

int main() 
{
	consoleDemoInit();
	iprintf("Console Text");

	// Set main screen to mode 0, 3D
	videoSetMode(MODE_0_3D);
	vramSetBankA(VRAM_A_TEXTURE);

	// Init the geometry engine
	glInit();
	glEnable(GL_TEXTURE_2D);
	glEnable(GL_BLEND);
	glEnable(GL_ANTIALIAS);

	// Setup rear plane
	glClearColor(0, 0, 0, 31);
	glClearPolyID(63);
	glClearDepth(GL_MAX_DEPTH);

	// Setup viewport
	glViewport(0, 0, SCREEN_WIDTH-1, SCREEN_HEIGHT - 1);

	loadTextures();

	// Setup camera
	glMatrixMode(GL_PROJECTION);
	glLoadIdentity();
	gluPerspectivef32(6371, 5461, 410, 409600); // fov: 70, aspect: 256/192, zNear: 0.1, zFar: 100

	// Set material properties
	glMaterialf(GL_AMBIENT, RGB15(16, 16, 16));
	glMaterialf(GL_SPECULAR, BIT(15) | RGB15(8, 8, 8));
	glMaterialf(GL_EMISSION, RGB15(16, 16, 16));
	glMaterialShinyness();

	// Setup lights
	glLight(0, RGB15(31, 31, 31), 0, floattov10(-1.0f), 0);

	glMatrixMode(GL_MODELVIEW);

	while(true) 
	{
		drawScene();
		swiWaitForVBlank();
		glFlush(0);

		scanKeys();
		// Quite
		if (keysDown() & KEY_START) break;
		// Handle key movement
		if (keysHeld() & KEY_R) zPosition -= 2;
		if (keysHeld() & KEY_L) zPosition += 2;
		if (keysHeld() & KEY_UP) ySpeed += 20;
		if (keysHeld() & KEY_DOWN) ySpeed -= 20;
		if (keysHeld() & KEY_LEFT) xSpeed -= 20;
		if (keysHeld() & KEY_RIGHT) xSpeed += 20;
	}

	return 0;
}

bool loadTextures() {
	sImage pcx;
	loadPCX((u8*)Peanut_pcx, &pcx);
	image8to16(&pcx);

	glGenTextures(1, &texture[0]);
	glBindTexture(0, texture[0]);
	glTexImage2D(0, 0, GL_RGB, TEXTURE_SIZE_128, TEXTURE_SIZE_128, 0, TEXGEN_TEXCOORD, pcx.image.data8);

	imageDestroy(&pcx);
	return true;
}

bool drawScene() {
	glColor3b(255, 255, 255);

	// Create model matrix
	glLoadIdentity();
	glTranslatef32(0, 0, zPosition);
	glRotatef32i(xRotation, 4096, 0, 0);
	glRotatef32i(yRotation, 0, 4096, 0);

	// Draw quad
	glPolyFmt(POLY_ALPHA(31) | POLY_CULL_NONE | POLY_FORMAT_LIGHT0);
	glBindTexture(GL_TEXTURE_2D, texture[0]);
	glBegin(GL_QUADS);
		// Front Face
		glNormal3f(0.0f, 0.0f, 1.0f);
		glTexCoord2f32(0, 0); 		glVertex3v16(-4096, -4096,  4096);
		glTexCoord2f32(4096, 0); 	glVertex3v16( 4096, -4096,  4096);
		glTexCoord2f32(4096, 4096); glVertex3v16( 4096,  4096,  4096);
		glTexCoord2f32(0, 4096); 	glVertex3v16(-4096,  4096,  4096);
		// Back Face
		glNormal3f(0.0f, 0.0f, -1.0f);
		glTexCoord2f32(4096, 0); 	glVertex3v16(-4096, -4096, -4096);
		glTexCoord2f32(4096, 4096); glVertex3v16(-4096,  4096, -4096);
		glTexCoord2f32(0, 4096); 	glVertex3v16( 4096,  4096, -4096);
		glTexCoord2f32(0, 0); 		glVertex3v16( 4096, -4096, -4096);
		// Top Face
		glNormal3f(0.0f, 1.0f, 0.0f);
		glTexCoord2f32(0, 4096); 	glVertex3v16(-4096,  4096, -4096);
		glTexCoord2f32(0, 0); 		glVertex3v16(-4096,  4096,  4096);
		glTexCoord2f32(4096, 0); 	glVertex3v16( 4096,  4096,  4096);
		glTexCoord2f32(4096, 4096); glVertex3v16( 4096,  4096, -4096);
		// Bottom Face
		glNormal3f(0.0f, -1.0f, 0.0f);
		glTexCoord2f32(4096, 4096); glVertex3v16(-4096, -4096, -4096);
		glTexCoord2f32(0, 4096); 	glVertex3v16( 4096, -4096, -4096);
		glTexCoord2f32(0, 0); 		glVertex3v16( 4096, -4096,  4096);
		glTexCoord2f32(4096, 0); 	glVertex3v16(-4096, -4096,  4096);
		// Right face
		glNormal3f(1.0f, 0.0f, 0.0f);
		glTexCoord2f32(4096, 0); 	glVertex3v16( 4096, -4096, -4096);
		glTexCoord2f32(4096, 4096); glVertex3v16( 4096,  4096, -4096);
		glTexCoord2f32(0, 4096); 	glVertex3v16( 4096,  4096,  4096);
		glTexCoord2f32(0, 0); 		glVertex3v16( 4096, -4096,  4096);
	glEnd();

	// Draw quad
	glPolyFmt(POLY_ALPHA(15) | POLY_CULL_BACK | POLY_FORMAT_LIGHT0);
	glBegin(GL_QUADS);
		// Left Face
		glNormal3f(-1.0f, 0.0f, 0.0f);
		glTexCoord2f32(0, 0); 		glVertex3v16(-4096, -4096, -4096);
		glTexCoord2f32(4096, 0); 	glVertex3v16(-4096, -4096,  4096);
		glTexCoord2f32(4096, 4096); glVertex3v16(-4096,  4096,  4096);
		glTexCoord2f32(0, 4096); 	glVertex3v16(-4096,  4096, -4096);
	glEnd();

	xRotation += ySpeed;
	yRotation += xSpeed;
	xSpeed = 0;
	ySpeed = 0;
	return true;
}