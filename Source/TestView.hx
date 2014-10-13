package;

import openfl.display.Sprite;
import openfl.display.Bitmap;
import openfl.display.BitmapData;
import openfl.text.TextField;
import openfl.text.TextFormat;
import openfl.text.TextFormatAlign;
import openfl.text.TextFieldAutoSize;
import openfl.events.Event;
import openfl.events.MouseEvent;
import openfl.events.TouchEvent;
import openfl.media.Sound;
import openfl.Lib;
import openfl.Assets;

class TestView extends Sprite{
	private var headline:TextField;
	private var text:TextField;
	public function new(){
		super();

		headline = new TextField();
		headline.autoSize = TextFieldAutoSize.LEFT;
		var format = new TextFormat(60, 0x000000);
		format.align = TextFormatAlign.LEFT;
		headline.defaultTextFormat = format;
		headline.selectable = false;
		headline.embedFonts = true;
		headline.text = "Headline";
		addChild(headline);


		text = new TextField();
		text.autoSize = TextFieldAutoSize.LEFT;
		var format = new TextFormat(24, 0x000000);
		format.align = TextFormatAlign.LEFT;
		text.defaultTextFormat = format;
		text.selectable = false;
		text.embedFonts = true;
		text.text = "Click the screen to start";
		addChild(text);

		
	}

	public function init():Void{
		headline.x = stage.stageWidth/2 - headline.width/2;
		headline.y = 50;
		text.x = Lib.current.stage.stageWidth/2 - text.width/2;
		text.y = Lib.current.stage.stageHeight - text.height - 50;

	}

}

