using Application.Interfaces;
using Microsoft.Extensions.DependencyInjection;
using Persistance.Dapper.Repositories;
using System;
using System.Collections.Generic;
using System.Text;

namespace Persistance.Dapper
{
    public static class ServiceRegistration
    {
        public static void AddInfrastructure(this IServiceCollection services)
        {
            services.AddTransient<IProductRepository, ProductRepository>();
            services.AddTransient<IUnitOfWork, UnitOfWork>();
        }
    }
}
