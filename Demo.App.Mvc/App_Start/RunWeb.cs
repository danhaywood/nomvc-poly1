using Demo.Dom.Claims;
using Demo.Dom.Customers;
using Demo.Dom.Registration;
using NakedObjects.Boot;
using NakedObjects.Core.Context;
using NakedObjects.Core.NakedObjectsSystem;
using NakedObjects.EntityObjectStore;
using NakedObjects.Services;
using NakedObjects.Web.Mvc;
using NakedObjects.Web.Mvc.Helpers;

namespace Demo.App.Mvc.App_Start {
    public class RunWeb : RunMvc {
        protected override NakedObjectsContext Context {
            get { return HttpContextContext.CreateInstance(); }
        }

        protected override IServicesInstaller MenuServices {
            get {
                return new ServicesInstaller(new object[]
                                                 {
                                                     new SimpleRepository<Customer>(),
                                                     new ClaimFactory(),
                                                     new SafeRegistrationFactory()
                                                 });
            }
        }

        protected override IServicesInstaller ContributedActions {
            get { return new ServicesInstaller(new object[] {}); }
        }

        protected override IServicesInstaller SystemServices {
            get { return new ServicesInstaller(new object[]
                                                   {
                                                       new SimpleEncryptDecrypt(), 
                                                       new ObjectFinder()
                                                   }); }
        }

        protected override IObjectPersistorInstaller Persistor {
            get { return new EntityPersistorInstaller(); }
        }
		//For 'Code First' development replace Persistor property with:
        //protected override IObjectPersistorInstaller Persistor {
        //    get {
        //        return new EntityPersistorInstaller {
        //            CodeFirst = true,
        //            CodeFirstConfig = new[] {
        //            new EntityPersistorInstaller.EntityCodeFirstConfig {AssemblyName = "MyModelAssemblyName", DataSource = @".\SqlExpress", DatabaseName = "database1"}}
        //        };
        //    }
        //}
        public static void Run() {
            new RunWeb().Start();
        }
    }
}