package com.nagpals.flexrssreader.control{
	import com.adobe.cairngorm.control.FrontController;
    import com.nagpals.flexrssreader.commands.*;
    import com.nagpals.flexrssreader.events.*;
    
	public class RSSReaderController extends FrontController{
		public function RSSReaderController(){
			this.initialize();
		}
		
		private function initialize() : void{
			this.addCommand(RSSReaderController.GET_FEED,GetFeedCommand);
			this.addCommand(RSSReaderController.SELECT_ITEM,SelectItemCommand);
		}
		
		/* ------------------------------------------------- */
		public static const GET_FEED : String = "getFeed";
		public static const SELECT_ITEM : String = "selectItem";
		
	}
}