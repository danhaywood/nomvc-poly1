using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using NakedObjects;

namespace Demo.Dom.Customers
{
    public partial class BusinessEngagementSummaryForClaim : BusinessEngagementSummary
    {
    
        #region Primitive Properties
        #region ClaimId (Int32)
    [MemberOrder(100), Optionally]
        public virtual Nullable<int>  ClaimId {get; set;}

        #endregion

        #endregion
    }
}
