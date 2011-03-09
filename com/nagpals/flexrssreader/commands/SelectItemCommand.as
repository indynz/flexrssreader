package com.nagpals.flexrssreader.commands{

	import mx.rpc.IResponder;
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.nagpals.flexrssreader.model.RSSReaderModelLocator;
	import com.nagpals.flexrssreader.events.SelectItemEvent;
	import com.nagpals.flexrssreader.vo.ItemVO;

	public class SelectItemCommand implements ICommand, IResponder{
		
		private var model : RSSReaderModelLocator = RSSReaderModelLocator.getInstance();
   
		public function SelectItemCommand():void{
			
		}
		   
		public function execute( event : CairngormEvent ) : void{
			var newItemVO : ItemVO = new ItemVO;
			var feed : SelectItemEvent 	= SelectItemEvent( event );
			
			newItemVO.title						= feed.selectedItem.title;
			newItemVO.description				= feed.selectedItem.description;
			newItemVO.link						= feed.selectedItem.link;
			
			model.itemVO 					= newItemVO;
		}
		   
		public function result( event : Object) : void{
		}
		
		public function fault( event : Object ) : void{
		}

	}
}