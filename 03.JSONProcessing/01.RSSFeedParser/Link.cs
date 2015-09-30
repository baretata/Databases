namespace _01.RSSFeedParser
{
    using System;
    using Newtonsoft.Json;

    public class Link
    {
        [JsonProperty("@href")]
        public string Href { get; set; }
    }
}
