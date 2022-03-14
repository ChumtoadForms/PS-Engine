// PsEngine is a game engine written on Pascal by rogender (also known as keyboardcrash)
// Current version - 0.1
// If you have any questions then feel free to ask them to me (Discord - keyboardcrash#7833)

unit PsEngine;

interface
  uses
    GraphABC, ABCObjects, timers; 
  
  var
    tim:timer;
  
    
  procedure gameSettings(ww:integer;wh:integer;fix:boolean;caption:string);
  procedure drawTexture(x,y:integer;path:string);
  procedure hideCursor();
  procedure MainLoop(ms:integer;upd:procedure);
  procedure InitMouse(mousemv,mousedwn,mouseup:procedure(x,y,mb:integer));
  procedure InitKeyboard(keydwn,keyup:procedure(key:integer));
  

implementation

  procedure gameSettings(ww,wh:integer;fix:boolean;caption:string);
  begin
    setwindowsize(ww,wh);
    setwindowisfixedsize(fix);
    window.Caption:=caption;
  end;
  
  procedure drawTexture(x,y:integer;path:string);
  begin
    var texture:Picture := Picture.Create(path);
    
    texture.Load(path);
    texture.Draw(x,y);
  end;
  
  procedure hideCursor();
  begin
    System.Windows.Forms.Cursor.Hide;
  end;
  
  // Main Timer (Loop)
  procedure MainLoop(ms:integer;upd:procedure);
  begin
    tim:=Timer.Create(ms,upd);
    tim.Start;
  end;
  
  procedure InitMouse(mousemv,mousedwn,mouseup:procedure(x,y,mb:integer));
  begin
    OnMouseMove := mousemv;
    OnMouseDown := mousedwn;
    OnMouseUp   := mouseup;
  end;
  
  procedure InitKeyboard(keydwn,keyup:procedure(key:integer));
  begin
    OnKeyDown := keydwn;
    OnKeyUp   := keyup;
  end;

end.