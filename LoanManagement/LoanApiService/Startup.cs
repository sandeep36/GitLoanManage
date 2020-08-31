using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using LoanApiService.Models;
using LoanApiService.Repository;
using LoanUserService.Logger;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.HttpsPolicy;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;
using NLog;
using System.Reflection;
using Microsoft.OpenApi.Models;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.IdentityModel.Tokens;
using System.Text;

namespace LoanApiService
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
          // LogManager.LoadConfiguration(System.String.Concat(Directory.GetCurrentDirectory(), "/NLog.config"));
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.

        public void ConfigureServices(IServiceCollection services)
        {
            services.AddDbContext<UserDatabaseContext>(options => {
                options.UseSqlServer(Configuration.GetConnectionString("DefaultConnection"));
            });
            
            services.AddControllers();
            services.AddOptions();
            services.Configure<Audience>(Configuration.GetSection("Audience"));
            // configure strongly typed settings objects
            /* services.AddAuthentication(JwtBearerDefaults.AuthenticationScheme)
                         .AddJwtBearer(options =>
                         {
                             options.TokenValidationParameters = new TokenValidationParameters
                             {
                                 ValidateIssuer = true,
                                 ValidateAudience = true,
                                 ValidateLifetime = true,
                                 ValidateIssuerSigningKey = true,
                                 ValidIssuer = Configuration["Jwt:Issuer"],
                                 ValidAudience = Configuration["Jwt:Issuer"],
                                 IssuerSigningKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(Configuration["Jwt:Key"]))
                             };
                         });*/
            //for api versioning
            services.AddApiVersioning(x =>
                            {
                                x.DefaultApiVersion = new ApiVersion(1, 0);
                                x.AssumeDefaultVersionWhenUnspecified = true;
                                x.ReportApiVersions = true;
                            });
                        // Register the Swagger generator, defining 1 or more Swagger documents
                        services.AddSwaggerGen(c =>
                        {
                            c.SwaggerDoc("v1", new OpenApiInfo
                            {
                                Version = "v1",
                                Title = "UserService API",
                                Description = "ASP.NET Core Web API",
                   
                            });
                        });
                        services.AddCors();
                        services.AddScoped<IUserService, UserService>();
                        services.AddSingleton<ILoggerManager, LoggerManager>();

                        // Register the Swagger generator, defining 1 or more Swagger documents
                        services.AddSwaggerGen();
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }

            app.UseHttpsRedirection();
            // Enable middleware to serve generated Swagger as a JSON endpoint.
            app.UseSwagger();

            // Enable middleware to serve swagger-ui (HTML, JS, CSS, etc.),
            // specifying the Swagger JSON endpoint.
            app.UseSwaggerUI(c =>
            {
                c.SwaggerEndpoint("/swagger/v1/swagger.json", "V1");
            });
            app.UseRouting();

            app.UseCors(options =>
             options.AllowAnyOrigin()
             .AllowAnyMethod()
             .AllowAnyHeader());

            app.UseAuthentication();
            app.UseAuthorization();

            

            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllers();
            });
        }
    }
}
