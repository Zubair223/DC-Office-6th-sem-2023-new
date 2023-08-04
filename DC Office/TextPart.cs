namespace Official_DC_Office
{
    internal class TextPart
    {
        private object html;

        public TextPart(object html)
        {
            this.html = html;
        }

        public string Text { get; set; }
    }
}