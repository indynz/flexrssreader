package com.nagpals.flexrssreader.events{
	
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.nagpals.flexrssreader.vo.ItemVO;
	import com.nagpals.flexrssreader.control.RSSReaderController;
	
	import mx.collections.ArrayCollection;
	
	public class GetFeedEvent extends CairngormEvent {
		
		public var selecteduri : String;
		
		public function GetFeedEvent(selecteduri:String){
			super(RSSReaderController.GET_FEED);
			this.selecteduri = selecteduri;
		}

	}	
}