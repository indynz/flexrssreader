package com.nagpals.flexrssreader.commands{

	import mx.rpc.IResponder;
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.nagpals.flexrssreader.model.RSSReaderModelLocator;
	import com.nagpals.flexrssreader.business.GetFeedDelegate;
	import com.nagpals.flexrssreader.events.GetFeedEvent;
	import mx.collections.ArrayCollection;
	import mx.controls.Alert;
	import mx.utils.StringUtil;

	public class GetFeedCommand implements ICommand, IResponder{
		private var delegate : GetFeedDelegate;
		private var model : RSSReaderModelLocator = RSSReaderModelLocator.getInstance();
	   
	   public function GetFeedCommand(){
	   		delegate = new GetFeedDelegate(this);
	   }
	   
		public function execute( event : CairngormEvent ) : void{
			var feedEvent : GetFeedEvent = GetFeedEvent( event );
			model.feedURI = feedEvent.selecteduri;
			delegate.getFeed();
		}
		   
		public function result( event : Object) : void{
			model.feedVOList 	= event.result.rss.channel.item as ArrayCollection;
			model.feedTitle 	= StringUtil.trim(event.result.rss.channel.title);
			model.feedTitleLink = StringUtil.trim(event.result.rss.channel.link);
		}
				
		public function fault( event : Object ) : void{
			mx.controls.Alert.show("Error in getting feed: " + event.message);
		}

	}
}