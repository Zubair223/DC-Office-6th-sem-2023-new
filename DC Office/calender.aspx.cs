﻿
using System;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Collections;
namespace Official_DC_Office
{
    public partial class calender : System.Web.UI.Page
    {

        Hashtable HolidayList;
        protected void Page_Load(object sender, EventArgs e)
        {
            HolidayList = Getholiday();
            Calendar1.Caption = "Calender - Author: Puran Singh Mehra";
            Calendar1.FirstDayOfWeek = FirstDayOfWeek.Sunday;
            Calendar1.NextPrevFormat = NextPrevFormat.ShortMonth;
            Calendar1.TitleFormat = TitleFormat.Month;
            Calendar1.ShowGridLines = true;
            Calendar1.DayStyle.Height = new Unit(50);
            Calendar1.DayStyle.Width = new Unit(150);
            Calendar1.DayStyle.HorizontalAlign = HorizontalAlign.Center;
            Calendar1.DayStyle.VerticalAlign = VerticalAlign.Middle;
            Calendar1.OtherMonthDayStyle.BackColor = System.Drawing.Color.AliceBlue;
        }
        private Hashtable Getholiday()
        {
            Hashtable holiday = new Hashtable();
            holiday["1/6/2022"] = "New Year";
            holiday["6/6/2022"] = "Guru Govind Singh Jayanti";
            holiday["9/6/2022"] = "Muharam (Al Hijra)";
            holiday["12/6/2022"] = "Pongal";
            holiday["17/6/2022"] = "Republic Day";
            holiday["26/6/2022"] = "Maha Shivaratri";
            holiday["27/6/2022"] = "Milad un Nabi (Birthday of the Prophet";
           /* holiday["3/21/2009"] = "Holi";
            holiday["3/21/2009"] = "Telugu New Year";
            holiday["4/3/2009"] = "Ram Navmi";
            holiday["4/7/2009"] = "Mahavir Jayanti";
            holiday["4/10/2009"] = "Good Friday";
            holiday["4/12/2009"] = "Easter";
            holiday["4/14/2009"] = "Tamil New Year and Dr Ambedkar Birth Day";
            holiday["5/1/2009"] = "May Day";
            holiday["5/9/2009"] = "Buddha Jayanti and Buddha Purnima";
            holiday["6/24/2009"] = "Rath yatra";
            holiday["8/13/2009"] = "Krishna Jayanthi";
            holiday["8/14/2009"] = "Janmashtami";
            holiday["8/15/2009"] = "Independence Day";
            holiday["8/19/2009"] = "Parsi New Year";
            holiday["8/23/2009"] = "Vinayaka Chaturthi";
            holiday["9/2/2009"] = "Onam";
            holiday["9/5/2009"] = "Teachers Day";
            holiday["9/21/2009"] = "Ramzan";
            holiday["9/27/2009"] = "Ayutha Pooja";
            holiday["9/28/2009"] = "Vijaya Dasami (Dusherra)";
            holiday["10/2/2009"] = "Gandhi Jayanti";
            holiday["10/17/2009"] = "Diwali & Govardhan Puja";
            holiday["10/19/2009"] = "Bhaidooj";
            holiday["11/2/2009"] = "Guru Nanak Jayanti";
            holiday["11/14/2009"] = "Children's Day";
            holiday["11/28/2009"] = "Bakrid";
            holiday["12/25/2009"] = "Christmas";
            holiday["12/28/2009"] = "Muharram";*/
            return holiday;
        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            if (HolidayList[e.Day.Date.ToShortDateString()] != null)
            {
                Literal literal1 = new Literal();
                literal1.Text = "<br/>";
                e.Cell.Controls.Add(literal1);
                Label label1 = new Label();
                label1.Text = (string)HolidayList[e.Day.Date.ToShortDateString()];
                label1.Font.Size = new FontUnit(FontSize.Small);
                e.Cell.Controls.Add(label1);
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            LabelAction.Text = "Date changed to :" + Calendar1.SelectedDate.ToShortDateString();
            TextBox1.Text = Calendar1.SelectedDate.ToShortDateString();
        }

        protected void Calendar1_VisibleMonthChanged(object sender, MonthChangedEventArgs e)
        {
            LabelAction.Text = "Month changed to :" + e.NewDate.ToShortDateString();
        }
    }
}