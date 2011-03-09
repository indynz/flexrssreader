package com.nagpals.flexrssreader.business{
	
	import mx.rpc.IResponder;
	import com.adobe.cairngorm.business.ServiceLocator;
	import com.nagpals.flexrssreader.vo.ItemVO;
	
	import mx.collections.ArrayCollection;
	import mx.rpc.AsyncToken;
	import mx.rpc.IResponder;
	import mx.rpc.events.ResultEvent;
	import mx.utils.ObjectUtil;
	import mx.rpc.http.HTTPService;
	
	public class GetFeedDelegate implements IResponder{
		
		private var responder : IResponder;
		private var service :  HTTPService;
				
		public function GetFeedDelegate(responder : IResponder):void {
			this.responder = responder;
			this.service = ServiceLocator.getInstance().getHTTPService("rssService");
		}
		
		public function getFeed() : void {
			var token : AsyncToken = service.send();
			token.addResponder(this);
		}
		
		public function result(info:Object) : void {
			responder.result(info);
		}
		
		public function fault(data:Object) : void {
			responder.fault(data);
		}
	}
}
