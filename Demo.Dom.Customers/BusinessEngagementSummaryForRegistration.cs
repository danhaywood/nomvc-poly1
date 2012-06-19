using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using NakedObjects;

namespace Demo.Dom.Customers
{
    public partial class BusinessEngagementSummaryForRegistration : BusinessEngagementSummary
    {
    
        #region Primitive Properties
        #region RegistrationId (String)
    [MemberOrder(100), Optionally, StringLength(12)]
        public virtual string  RegistrationId {get; set;}

        #endregion

        #endregion
    }
}
