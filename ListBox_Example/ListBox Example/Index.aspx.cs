using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ListBox_Example
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSelectTeam_Click(object sender, EventArgs e)
        {
            string strSelectedTeam = dlTeam.SelectedValue;
            int numMemberGreen = lstGreen.Items.Count;
            int numMemberRed = lstRed.Items.Count;
            int totalmember = 6;

            if (strSelectedTeam == "1")
            {
                lblErr.Text = String.Empty;
                lblErr.Visible = false;
                lblErrRed.Text = String.Empty;
                lblErrRed.Visible = false;

                if (numMemberGreen < totalmember)
                {
                    SelectTeamMembers(lstMembers, lstGreen);
                    lblErrGreen.Text = String.Empty;
                    lblErrGreen.Visible = false;

                }

                else
                {
                    lblErrGreen.Text = Label2.Text + " has already reached the maximum(6) number per team.";
                    lblErrGreen.Visible = true;
                }


            }
            else if (strSelectedTeam == "2")
            {
                lblErr.Text = String.Empty;
                lblErr.Visible = false;
                lblErrGreen.Text = String.Empty;
                lblErrGreen.Visible = false;

                if (numMemberRed < totalmember)
                {
                    SelectTeamMembers(lstMembers, lstRed);
                    lblErrRed.Text = String.Empty;
                    lblErrRed.Visible = false;
                }
                else
                {
                    lblErrRed.Text = Label3.Text + " has already reached the maximum(6) number per team.";
                    lblErrRed.Visible = true;
                }
            }
            else
            {
                lblErr.Text = "Please select a team";
                lblErr.Visible = true;
                lblErrGreen.Text = String.Empty;
                lblErrGreen.Visible = false;
                lblErrRed.Text = String.Empty;
                lblErrRed.Visible = false;
            }
        }

        public void SelectTeamMembers(ListBox mainlist, ListBox teamlist)
        {
            string selectedMember = string.Empty;

            for (int i = mainlist.Items.Count - 1; i >= 0; i--)
            {
                if (mainlist.Items[i].Selected)
                {
                    selectedMember = mainlist.Items[i].Text;
                    teamlist.Items.Add(new ListItem(selectedMember));
                    mainlist.Items.Remove(selectedMember);
                    lblErrMember.Text = "";
                    lblErrMember.Visible = false;
                }
                else
                {
                    lblErrMember.Text = "Please select a team member.";
                    lblErrMember.Visible = true;
                }
            }
        }

        protected void btnResetLists_Click(object sender, EventArgs e)
        {
            ResetTeamMember(lstMembers, lstGreen);
            ResetTeamMember(lstMembers, lstRed);
        }

        public void ResetTeamMember(ListBox mainlist, ListBox teamlist)
        {
            string selectedMember = string.Empty;

            for (int i = teamlist.Items.Count - 1; i >= 1; i--)
            {
                selectedMember = teamlist.Items[i].Text;
                mainlist.Items.Add(new ListItem(selectedMember));
                teamlist.Items.Remove(selectedMember);
            }
        }

        protected void dlTeam_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblErr.Text = String.Empty;
            lblErrGreen.Text = String.Empty;
            lblErrRed.Text = String.Empty;
        }

        protected void btnClearSelection_Click(object sender, EventArgs e)
        {
            string selectedMember = string.Empty;

            for (int i = lstMembers.Items.Count - 1; i >= 0; i--)
            {
                if (lstMembers.Items[i].Selected)
                {
                    selectedMember = lstMembers.Items[i].Text;
                    lstMembers.Items.Remove(selectedMember);
                    lblErrMember.Text = "";
                    lblErrMember.Visible = false;
                }
                else
                {
                    lblErrMember.Text = "Please select a member.";
                    lblErrMember.Visible = true;
                }
            }
        }
    }
}