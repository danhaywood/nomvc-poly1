using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using NakedObjects;

namespace Demo.Dom.Customers
{
    public partial class BusinessEngagementSummary
    {
    
        #region Primitive Properties
        #region Id (Int32)
    [MemberOrder(100)]
        public virtual int  Id {get; set;}

        #endregion
        #region CustomerId (Int32)
    [MemberOrder(110)]
        public virtual int  CustomerId {get; set;}

        #endregion
        #region Description (String)
    [MemberOrder(120)]
        public virtual string  Description {get; set;}

        #endregion
        #region TypeName (String)
    [MemberOrder(130)]
        public virtual string  TypeName {get; set;}

        #endregion
        #region InstanceIdentifier (String)
    [MemberOrder(140)]
        public virtual string  InstanceIdentifier {get; set;}

        #endregion

        #endregion
        #region Navigation Properties
        #region Customer (Customer)
    		
    [MemberOrder(150)]
    	public virtual Customer Customer {get; set;}

        #endregion

        #endregion
    }
}
