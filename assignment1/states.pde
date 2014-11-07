//--------------------- Draw Pause ---------------------------
void draw_pause() {
	menu.B4.draw_button(midX,midY,"PAUSE");
}

// --------------- Draw quit to menu confirmation -------------
void quit_dialogue() {
	menu.B5.draw_button(midX,midY,"Enter to Quit");

	if(keyPressed && key == ENTER) {
		status = 0;
	}
}

void level_dialogue() {

}

// ---------------------- Game over screen --------------------------
void draw_gameover() {
	image(end_background,0,0);
	textSize(80);
	fill(200);
	textAlign(CENTER);
	text("GAME OVER", midX, midY-100);
	textSize(40);
	text("Press Space", midX, midY+50);

	if(keyPressed && key == ' '){
		status = 0;
	}
}