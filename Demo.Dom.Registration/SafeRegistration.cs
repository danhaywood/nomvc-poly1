using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using NakedObjects;

namespace Demo.Dom.Registration
{
    public partial class SafeRegistration
    {
    
        #region Primitive Properties
        #region Id (String)
    [MemberOrder(100), StringLength(12)]
        public virtual string  Id {get; set;}

        #endregion
        #region RegisteredOn (DateTime)
    [MemberOrder(110), Mask("d")]
        public virtual System.DateTime  RegisteredOn {get; set;}

        #endregion
        #region Details (String)
    [MemberOrder(120)]
        public virtual string  Details {get; set;}

        #endregion

        #endregion
    }
}
