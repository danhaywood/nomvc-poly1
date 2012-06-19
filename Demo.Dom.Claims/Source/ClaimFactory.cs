using System;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Linq.Dynamic;
using Demo.Dom.Customers;
using NakedObjects;

//Namespace must match that of the auto-generated partial class
namespace Demo.Dom.Claims
{
    //Use this partial class to define actions for the Employer class.
    //Also for methods to enrich the behaviour of properties - such as Validate,
    //Default, or Choices and for class-level attributes such as <IconName>.
    public class ClaimFactory 
    {

        public IDomainObjectContainer Container { set; protected get; }

        public Claim NewClaim(Customer customer, string claimName)
        {
            var claim = Container.NewTransientInstance<Claim>();
            claim.Name = claimName;

            // nasty to have to do, but the identity of the claim isn't available to us.
            var nextId = (from c in Container.Instances<Claim>() orderby c.Id descending select c.Id).FirstOrDefault() + 1;
            claim.Id = nextId;
            
            Container.Persist(ref claim);

            var claimSummary = Container.NewTransientInstance<BusinessEngagementSummaryForClaim>();
            claimSummary.Customer = customer;
            claimSummary.ClaimId = claim.Id; 

            claimSummary.Description = "Claim #" + claim.Id;

            claimSummary.TypeName = typeof (Claim).FullName;
            claimSummary.InstanceIdentifier = "" + claim.Id;

            Container.Persist(ref claimSummary);
            customer.BusinessEngagements.Add(claimSummary);

            return claim;
        }
    }

}