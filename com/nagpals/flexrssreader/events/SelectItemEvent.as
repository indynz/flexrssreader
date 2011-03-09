package com.nagpals.flexrssreader.events{
	
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.nagpals.flexrssreader.vo.ItemVO;
	import com.nagpals.flexrssreader.control.RSSReaderController;
	
	import mx.collections.ArrayCollection;
	
	public class SelectItemEvent extends CairngormEvent {

		public var selectedItem : Object;

		public function SelectItemEvent(selectedItem:Object){
			super(RSSReaderController.SELECT_ITEM);
			this.selectedItem = selectedItem;
		}

	}	
}