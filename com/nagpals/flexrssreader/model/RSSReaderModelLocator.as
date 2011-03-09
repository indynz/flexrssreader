package com.nagpals.flexrssreader.model{

	import com.adobe.cairngorm.model.IModelLocator;
	import com.adobe.cairngorm.CairngormError;
    import com.adobe.cairngorm.CairngormMessageCodes;
    import mx.collections.ArrayCollection;
    import com.nagpals.flexrssreader.vo.ItemVO;
    
    [Bindable]
	public class RSSReaderModelLocator implements IModelLocator{
		/**
		 * Singleton instance of RSSReaderModelLocator
		 */
		private static var instance:RSSReaderModelLocator;
		
		public var feedVOList : ArrayCollection;
		public var itemVO : ItemVO;
		public var feedURI : String;;
		public var feedTitle : String = "Cairngorm RSS Reader";
		public var feedTitleLink : String;

		public function RSSReaderModelLocator(access:Private){
			if (access != null){
				
				if (instance == null){				
					instance = this;
				}
			}
			else{
				
				throw new CairngormError( CairngormMessageCodes.SINGLETON_EXCEPTION, "RSSReaderModelLocator" );
			}
		}
		 
		/**
		 * Returns the Singleton instance of RSSReaderModelLocator
		 */
		public static function getInstance() : RSSReaderModelLocator{

			if (instance == null){
				instance = new RSSReaderModelLocator( new Private );
			}
			return instance;
		}
	}
}

/**
 * Inner class which restricts contructor access to Private
 */
class Private {}

