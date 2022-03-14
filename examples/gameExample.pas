uses PsEngine;
var
	ikey:integer;

procedure MouseMove(x,y,mb:integer);
begin
  hideCursor();
end;

procedure MouseDown(x,y,mb:integer);
begin
end;

procedure MouseUp(x,y,mb:integer);
begin
end;

procedure KeyDown(key:integer);
begin
	ikey:=key;
end;

procedure KeyUp(key:integer);
begin
end;

procedure Update();
begin
//Write your code to mainLoop here
  InitMouse(MouseMove,MouseDown,MouseUp);
  InitKeyboard(KeyDown,KeyUp);
  
  case ikey of
	vk_up: ; 	// up arrow
	vk_down: ; 	// down arrow
	vk_right: ; 	// right arrow
	vk_left: ; 	// left arrow
  end;
end;

begin
  gameSettings(640,480,true,'example');
  // to draw picture - drawTexture(x,y,'path');
  
  MainLoop(10,Update);
end.
