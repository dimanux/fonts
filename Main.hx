package ;

import nme.Assets;
import nme.display.Sprite;
import nme.events.Event;
import nme.Lib;
import nme.text.Font;
import nme.text.TextField;
import nme.text.TextFormat;

@:font("cheese.ttf")
class CheeseFont extends Font { }

class Main extends Sprite 
{
	public function new() 
	{
		super();	
		addEventListener(Event.ADDED_TO_STAGE, added);
	}

	function added(e) 
	{
		removeEventListener(Event.ADDED_TO_STAGE, added);
		
		var tf1 = new TextField();
		tf1.x = 0;
		tf1.y = 0;
		tf1.width = 200;
		tf1.height = 200;
		tf1.embedFonts = true;
		tf1.defaultTextFormat = new TextFormat(Assets.getFont("cheese").fontName, 52, 0);
		tf1.text = "Line1\nLine2";
		addChild(tf1);
		
		Font.registerFont(CheeseFont);
		
		var tf2 = new TextField();
		tf2.x = 200;
		tf2.y = 0;
		tf2.width = 200;
		tf2.height = 200;
		tf2.embedFonts = true;
		tf2.defaultTextFormat = new TextFormat((new CheeseFont()).fontName, 52, 0);
		tf2.text = "Line1\nLine2";
		addChild(tf2);
	}
	
	public static function main() 
	{
		// static entry point
		Lib.current.stage.align = nme.display.StageAlign.TOP_LEFT;
		Lib.current.stage.scaleMode = nme.display.StageScaleMode.NO_SCALE;
		Lib.current.addChild(new Main());
	}
}
