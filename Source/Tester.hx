package;

import openfl.display.Sprite;
import openfl.display.Bitmap;
import openfl.display.FPS;
import openfl.Assets;

class Tester extends Sprite{
	private var img:Bitmap;
	public function new () {

        super ();

        var t = new TestView();
        addChild(t);
        t.init();

        addChild(new FPS(10, stage.stageHeight - 20, 0x000000));
    }
}