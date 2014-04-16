using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(MSD.Startup))]
namespace MSD
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
