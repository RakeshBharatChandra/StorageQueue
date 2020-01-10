using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.WindowsAzure;
using Microsoft.WindowsAzure.Storage;
using Microsoft.WindowsAzure.Storage.Queue;
using Microsoft.WindowsAzure.ServiceRuntime;

namespace Queue
{
    public partial class Queue : System.Web.UI.Page
    {
        CloudQueue queue;
        protected void Page_Load(object sender, EventArgs e)
        {
            CloudStorageAccount sa = CloudStorageAccount.Parse(RoleEnvironment.GetConfigurationSettingValue("Que"));
            CloudQueueClient client = sa.CreateCloudQueueClient();
            queue = client.GetQueueReference("sendmsg");
            queue.CreateIfNotExists();
        }
        protected void submit_Click(object sender, EventArgs e)
        {
            string id = mid.Text;
            string key = sub.Text;
            string ping = msg.Text;
            CloudQueueMessage qmsg = new CloudQueueMessage(id + "#" + key + "#" + ping);
            queue.AddMessage(qmsg);
        }
    }
}