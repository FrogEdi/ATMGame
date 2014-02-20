package
{
	import flash.display.Bitmap;
	import flash.media.Sound;
	import flash.utils.Dictionary;
	
	import starling.textures.Texture;
	import starling.textures.TextureAtlas;
	import starling.display.Image;
	
	public class Assets
	{
		//img
		[Embed(source="../img/ableGround.png")]
		public static const ableGround:Class;
		[Embed(source="../img/unableGround.png")]
		public static const unableGround:Class;
		[Embed(source="../img/player.png")]
		public static const player:Class;
		[Embed(source="../img/ending.png")]
		public static const ending:Class;
		//img end
		
		//sound
		[Embed(source="../bgm/maze.mp3")]
		public static const maze:Class;
		
		//sound end
		
		private static var gameTextures:Dictionary = new Dictionary();
		private static var gameImages:Dictionary = new Dictionary();
		private static var gameBitmap:Dictionary = new Dictionary();
		private static var gameSounds:Dictionary = new Dictionary();
		
		public static function getBitmap(name:String):Bitmap
		{
			if (gameBitmap[name] == undefined)
			{
				gameBitmap[name] = new Assets[name]();
			}
			return gameBitmap[name];
		}
		
		public static function getTexture(name:String):Texture
		{
			if (gameTextures[name] == undefined)
			{
				var bitmap:Bitmap = new Assets[name]();
				gameTextures[name] = Texture.fromBitmap(bitmap);
			}
			return gameTextures[name];
		}
		public static function getImage(name:String):Image
		{
			if (gameImages[name] == undefined)
			{
				var bitmap:Bitmap = new Assets[name]();
				gameImages[name] = new Image(Texture.fromBitmap(bitmap));
			}
			return gameImages[name];
		}
		public static function getSound(name:String):Sound
		{
			if (gameSounds[name] == undefined)
			{
				var sound:Sound = new Assets[name]();
				gameSounds[name] = sound;
			}
			return gameSounds[name];
		}
	}
}