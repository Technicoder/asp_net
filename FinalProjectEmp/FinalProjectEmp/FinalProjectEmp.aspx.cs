using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProjectEmp
{
    public partial class FinalProjectEmp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SetFocus(txtEmpFname);
            }
        }
        /// <summary>
        /// Clears the information on the fields
        /// </summary>
        public void Clear_Screen()
        {
            //clear the input fields
            txtEmpFname.Text = string.Empty;
            txtEmpLname.Text = string.Empty;
            txtNumHours.Text = string.Empty;
            txtHourlyRate.Text = string.Empty;

            //clear the output fields
            txtEmpNameOut.Text = string.Empty;
            txtNumHoursOut.Text = string.Empty;
            txtHourlyRateOut.Text = string.Empty;
            txtTaxOut.Text = string.Empty;
            txtNetPayOut.Text = string.Empty;
            txtRegPayOut.Text = string.Empty;
            txtOverHourOut.Text = string.Empty;
            txtOverPayOut.Text = string.Empty;

            //clear error messages
            lblErrorFName.Text = String.Empty;
            lblErrorLName.Text = String.Empty;
            lblErrorHours.Text = String.Empty;
            lblErrorRate.Text = String.Empty;

            //makes the output fields disapper
            Label5.Visible = false;
            txtEmpNameOut.Visible = false;
            Label6.Visible = false;
            txtNumHoursOut.Visible = false;
            Label7.Visible = false;
            txtHourlyRateOut.Visible = false;
            Label11.Visible = false;
            txtRegPayOut.Visible = false;
            Label10.Visible = false;
            txtOverHourOut.Visible = false;
            Label12.Visible = false;
            txtOverPayOut.Visible = false;
            Label9.Visible = false;
            txtTaxOut.Visible = false;
            Label8.Visible = false;
            txtNetPayOut.Visible = false;

            SetFocus(txtEmpFname);
        }

        /// <summary>
        /// It converts the first character of the string to uppercase
        /// </summary>
        /// <param name="text"></param>
        /// <returns></returns>
        public string UpperCaseFirstChar(string text)
        {
            return (text[0].ToString().ToUpper() + text.Substring(1, text.Length - 1));
        }

        /// <summary>
        /// Calculates the regular salary of an employee
        /// </summary>
        /// <param name="hours"></param>
        /// <param name="rate"></param>
        /// <returns></returns>
        public decimal CalculateRegPay(decimal hours, decimal rate)
        {
            return hours * rate;
        }

        /// <summary>
        /// Validates the string if it can be converted to decimal
        /// </summary>
        /// <param name="strInput"></param>
        /// <returns></returns>
        public bool Validate_Decimal(string strInput)
        {
            decimal decInput = 0.0M;
            try
            {
                decInput = Convert.ToDecimal(strInput);
                return true;
            }
            catch
            {
                return false;
            }

        }

        /// <summary>
        /// Validates the inputted first and last name
        /// </summary>
        /// <param name="strVal"></param>
        /// <param name="txtbox"></param>
        /// <returns></returns>
        public bool Validate_Name(string strVal, TextBox txtbox)
        {
            bool returnVal = false;

            strVal = strVal.Replace("0", "");
            strVal = strVal.Replace("1", "");
            strVal = strVal.Replace("2", "");
            strVal = strVal.Replace("3", "");
            strVal = strVal.Replace("4", "");
            strVal = strVal.Replace("5", "");
            strVal = strVal.Replace("6", "");
            strVal = strVal.Replace("7", "");
            strVal = strVal.Replace("8", "");
            strVal = strVal.Replace("9", "");

            strVal = strVal.Replace("~", "");
            strVal = strVal.Replace("!", "");
            strVal = strVal.Replace("@", "");
            strVal = strVal.Replace("#", "");
            strVal = strVal.Replace("$", "");
            strVal = strVal.Replace("%", "");
            strVal = strVal.Replace("^", "");
            strVal = strVal.Replace("&", "");
            strVal = strVal.Replace("*", "");
            strVal = strVal.Replace("(", "");
            strVal = strVal.Replace(")", "");
            strVal = strVal.Replace("_", "");
            strVal = strVal.Replace("+", "");
            strVal = strVal.Replace("{", "");
            strVal = strVal.Replace("}", "");
            strVal = strVal.Replace("|", "");
            strVal = strVal.Replace(":", "");
            strVal = strVal.Replace("\"", "");
            strVal = strVal.Replace("<", "");
            strVal = strVal.Replace(">", "");
            strVal = strVal.Replace("?", "");
            strVal = strVal.Replace("`", "");
            strVal = strVal.Replace("-", "");
            strVal = strVal.Replace("=", "");
            strVal = strVal.Replace("[", "");
            strVal = strVal.Replace("]", "");
            strVal = strVal.Replace("\\", "");
            strVal = strVal.Replace(";", "");
            strVal = strVal.Replace("'", "");
            strVal = strVal.Replace(",", "");
            strVal = strVal.Replace(".", "");
            strVal = strVal.Replace("/", "");

            txtbox.Text = strVal;

            if (strVal.Length > 0)
            {
                returnVal = true;
            }
            else
            {
                returnVal = false;
            }
            return returnVal;

        }


        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            //declare, initialize variables and uses Trim() to remove leading and trailing spaces
            string strEmpFName = txtEmpFname.Text.Trim();
            string strEmpLName = txtEmpLname.Text.Trim();
            string strNumHours = txtNumHours.Text.Trim();
            string strHourlyRate = txtHourlyRate.Text.Trim();

            string strTaxDeduct = string.Empty;
            string strGrossPay = string.Empty;
            string strNetPay = string.Empty;
            string strRegPay = string.Empty;
            string strOverHour = string.Empty;
            string strOverPay = string.Empty;

            decimal decNumHours = 0.0M;
            decimal decHourlyRate = 0.0M;
            decimal decGrossPay = 0.0M;
            decimal decTaxDeduct = 0.0M;
            decimal decTaxRate = .24M;
            decimal decNetPay = 0.0M;

            decimal decRegHour = 40.0M;
            decimal decRegPay = 0M;
            decimal decOverHour = 0M;
            decimal decOverPay = 0M;
            decimal decOverRate = 1.50M;

            bool flagHours = false;
            bool flagRate = false;
            bool flagFirstName = false;
            bool flagLastName = false;

            //validate first name
            if (!Validate_Name(strEmpFName, txtEmpFname))
            {
                lblErrorFName.Text = "Invalid First name";
                lblErrorFName.Visible = true;
                flagFirstName = true; //this is a red flag meaning the input is incorrect
            }
            else
            {
                lblErrorFName.Text = String.Empty;
                lblErrorFName.Visible = false;
                flagFirstName = false; //this means that the input is correct

                //convert first name to lowercase
                strEmpFName = txtEmpFname.Text.ToLower();

                //convert the first character of first name to uppercase
                strEmpFName = UpperCaseFirstChar(strEmpFName);
            }

            //validate last name
            if (!Validate_Name(strEmpLName, txtEmpLname))
            {
                lblErrorLName.Text = "Invalid Last name";
                lblErrorLName.Visible = true;
                flagLastName = true; //this is a red flag meaning the input is incorrect
            }
            else
            {
                lblErrorLName.Text = String.Empty;
                lblErrorLName.Visible = false;
                flagLastName = false;  //this means that the input is correct

                //convert last name to lowercase
                strEmpLName = txtEmpLname.Text.ToLower();

                //convert the first character of the last name to uppercase
                strEmpLName = UpperCaseFirstChar(strEmpLName);
            }

            //validates if Number of Hours is decimal

            if (!Validate_Decimal(strNumHours))
            {
                lblErrorHours.Text = "Invalid format. Please enter a number.";
                lblErrorHours.Visible = true;
                flagHours = true;  //this is a red flag meaning the input is incorrect
            }
            else
            {
                lblErrorHours.Text = String.Empty;
                lblErrorHours.Visible = false;
                flagHours = false;  //this means that the input is correct

                decNumHours = Convert.ToDecimal(strNumHours);

                if (decNumHours < 0 || decNumHours > 80)
                {
                    lblErrorHours.Text = "Number of hours must be 0 - 80.";
                    lblErrorHours.Visible = true;
                    flagHours = true; //this is a red flag meaning the input is incorrect
                }
                else
                {
                    lblErrorHours.Text = String.Empty;
                    lblErrorHours.Visible = false;
                    flagHours = false;  //this means that the input is correct
                }
            }

            //validates if Rate per hour is decimal
            if (!Validate_Decimal(strHourlyRate))
            {
                lblErrorRate.Text = "Invalid format. Please enter a number.";
                lblErrorRate.Visible = true;
                flagRate = true; //this is a red flag meaning the input is incorrect
            }
            else
            {
                lblErrorRate.Text = String.Empty;
                lblErrorRate.Visible = false;
                flagRate = false; //this means that the input is correct

                decHourlyRate = Convert.ToDecimal(strHourlyRate);

                if (decHourlyRate < 1)
                {
                    lblErrorRate.Text = "Hourly rate must be greater than 0.";
                    lblErrorRate.Visible = true;
                    flagRate = true; //this is a red flag meaning the input is incorrect
                }
                else
                {
                    lblErrorRate.Text = String.Empty;
                    lblErrorRate.Visible = false;
                    flagRate = false; //this means that the input is correct
                }
            }
            //
            if (!flagHours && !flagRate && !flagFirstName && !flagLastName)
            {
                //check if the number of hours worked is more than 40 hours
                if (decNumHours > decRegHour)
                {
                    decOverHour = decNumHours - decRegHour;
                    decRegPay = CalculateRegPay(decRegHour, decHourlyRate);
                    decOverPay = decOverHour * (decHourlyRate * decOverRate);
                    decGrossPay = decRegPay + decOverPay;
                }
                else
                {
                    //calculate regular and gross pay
                    decRegPay = CalculateRegPay(decNumHours, decHourlyRate);
                    decGrossPay = decRegPay;
                }


                //calculate tax
                decTaxDeduct = decGrossPay * decTaxRate;

                //calculate net pay
                decNetPay = decGrossPay - decTaxDeduct;

                //convert decimal to string
                strTaxDeduct = decTaxDeduct.ToString("c");
                strGrossPay = decGrossPay.ToString("c");
                strNetPay = decNetPay.ToString("c");
                strHourlyRate = decHourlyRate.ToString("c");
                strRegPay = decRegPay.ToString("c");
                strOverHour = decOverHour.ToString();
                strOverPay = decOverPay.ToString("c");

                //display to textbox
                txtEmpNameOut.Text = strEmpFName + " " + strEmpLName;
                txtNumHoursOut.Text = strNumHours;
                txtHourlyRateOut.Text = strHourlyRate;
                txtTaxOut.Text = strTaxDeduct;
                txtNetPayOut.Text = strNetPay;
                txtRegPayOut.Text = strRegPay;
                txtOverHourOut.Text = strOverHour;
                txtOverPayOut.Text = strOverPay;

                //show all the output labels and fields
                Label5.Visible = true;
                txtEmpNameOut.Visible = true;
                Label6.Visible = true;
                txtNumHoursOut.Visible = true;
                Label7.Visible = true;
                txtHourlyRateOut.Visible = true;
                Label11.Visible = true;
                txtRegPayOut.Visible = true;
                Label10.Visible = true;
                txtOverHourOut.Visible = true;
                Label12.Visible = true;
                txtOverPayOut.Visible = true;
                Label9.Visible = true;
                txtTaxOut.Visible = true;
                Label8.Visible = true;
                txtNetPayOut.Visible = true;
            }
            else
            {
                //clear the output fields
                txtEmpNameOut.Text = string.Empty;
                txtNumHoursOut.Text = string.Empty;
                txtHourlyRateOut.Text = string.Empty;
                txtTaxOut.Text = string.Empty;
                txtNetPayOut.Text = string.Empty;
                txtRegPayOut.Text = string.Empty;
                txtOverHourOut.Text = string.Empty;
                txtOverPayOut.Text = string.Empty;
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            Clear_Screen();
        }
    }
}