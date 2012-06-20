## What is this? ##

This is a demonstrator of cluster pattern for NO MVC and Entity Framework.  It shows a 1:m collection, using summary object.

## Entities ##

- Customer cluster
  - Customer
  - BusinessEngagementSummary
    - subtypes, for Claim and for SafeRegistration
  - IBusinessEngagement
- Claim cluster
  - Claim (implements IBusinessEngagement)
- Registrations cluster
  - SafeRegistration (implements IBusinessEngagement)

## Of Note ##

- The ClaimFactory is used to create a Claim; it also posts an summary of the Claim to the Customers cluster (in BusinessEngagementSummary).  Part of this includes the InstanceIdentifier that is used to look up the claim from the summary.

- The subtype tables allow the DBA to set foreign key references between the clusters

- When creating a Claim, the DOM business logic code has to figure out the next Id; this is because the SQL insert doesn't done til the end of the action

- The (framework-provided) ObjectFinder is used to polymorphically look up the related IBusinessEngagement from the BusinessEngagementSummary.
