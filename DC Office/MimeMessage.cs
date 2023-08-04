namespace Official_DC_Office
{
    internal class MimeMessage
    {
        public MimeMessage()
        {
        }

        public object To { get; internal set; }
        public string Subject { get; internal set; }
        public TextPart Body { get; internal set; }
        public object From { get; internal set; }
    }
}