using AutoMapper;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Http.Features;
using Microsoft.EntityFrameworkCore;
using Microsoft.IdentityModel.Tokens;
using Microsoft.OpenApi.Models;
using Strategies.Api.AutoMapper;
using Strategies.Api.Models.ModelsDto;
using Strategies.Domain.Models;
using Strategies.Service.DataManager;
using Strategies.Service.DataManager.EmailDataManagers;
using Strategies.Service.Interfaces;
using Strategies.Service.Repository;
using System.Text;
using System.Text.Json.Serialization;

var builder = WebApplication.CreateBuilder(args);
// Add services to the container.
var emailConfig = builder.Configuration
    .GetSection("EmailConfiguration")
    .Get<EmailConfiguration>();
builder.Services.AddSingleton(emailConfig);
builder.Services.Configure<FormOptions>(o =>
{
    o.ValueLengthLimit = int.MaxValue;
    o.MultipartBodyLengthLimit = int.MaxValue;
    o.MemoryBufferThreshold = int.MaxValue;
});

builder.Services.AddHttpContextAccessor();
// Add services to the container.

builder.Services.AddControllers();
//JWT Tocken region

builder.Services.AddAuthentication(options =>
{
    options.DefaultAuthenticateScheme = JwtBearerDefaults.AuthenticationScheme;
    options.DefaultChallengeScheme = JwtBearerDefaults.AuthenticationScheme;
    options.DefaultScheme = JwtBearerDefaults.AuthenticationScheme;
}).AddJwtBearer(o =>
{
    o.TokenValidationParameters = new TokenValidationParameters
    {
        ValidIssuer = builder.Configuration["Jwt:Issuer"],
        ValidAudience = builder.Configuration["Jwt:Audience"],
        IssuerSigningKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(builder.Configuration["Jwt:Key"])),
        ValidateIssuer = true,
        ValidateAudience = true,
        ValidateLifetime = false,
        ValidateIssuerSigningKey = true
    };
});
builder.Services.AddAuthorization();
// Add configuration from appsettings.json
builder.Configuration.AddJsonFile("appsettings.json", optional: false, reloadOnChange: true)
    .AddEnvironmentVariables();
// End region
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
//builder.Services.AddSwaggerGen();
builder.Services.AddSwaggerGen(c => {
    c.SwaggerDoc("v1", new OpenApiInfo
    {
        Title = "JWTToken_Auth_API",
        Version = "v1"
    });
    c.AddSecurityDefinition("Bearer", new OpenApiSecurityScheme()
    {
        Name = "Authorization",
        Type = SecuritySchemeType.ApiKey,
        Scheme = "Bearer",
        BearerFormat = "JWT",
        In = ParameterLocation.Header,
        Description = "JWT Authorization header using the Bearer scheme. \r\n\r\n Enter 'Bearer' [space] and then your token in the text input below.\r\n\r\nExample: \"Bearer 1safsfsdfdfd\"",
    });
    c.AddSecurityRequirement(new OpenApiSecurityRequirement {
        {
            new OpenApiSecurityScheme {
                Reference = new OpenApiReference {
                    Type = ReferenceType.SecurityScheme,
                        Id = "Bearer"
                }
            },
            new string[] {}
        }
    });
});
builder.Services.AddDbContext<StrategyDbContext>(options =>
{
    options.UseSqlServer(builder.Configuration.GetConnectionString("StrategyDb"));
    options.EnableSensitiveDataLogging();

});

builder.Services.AddControllers().AddJsonOptions(x =>
                x.JsonSerializerOptions.ReferenceHandler = ReferenceHandler.IgnoreCycles);
//builder.Services.AddTransient<ILoginService, LoginService>();
builder.Services.AddScoped<IStrategyFormUnitOfWork, StrategyFormUnitOfWork>();
builder.Services.AddTransient<IGenericService<CustomerContactDetail>, CustomerContactDetailsService>();
builder.Services.AddTransient<IGenericService<Customer>, CustomerService>();
builder.Services.AddTransient<IGenericService<MstRoleGroup>, MasterRoleGroupsService>();
builder.Services.AddTransient<IUserService<MstUserDto>, MasterUser>();
builder.Services.AddTransient<IGenericService<MstUserRole>, MasterRolesService>();
builder.Services.AddTransient<IGenericService<CashFlowRequirement>, CashFlowRequirementService>();
builder.Services.AddTransient<IGenericService<PlannedExpenditure>, PlannedExpenditureService>();
builder.Services.AddTransient<IGenericService<ExpectedFutureInflow>, ExpectedFutureInflowService>();
builder.Services.AddTransient<IGenericService<MstQuestionDto>, MstQuestionService>();
builder.Services.AddTransient<IEmailSender, EmailSender>();
//builder.Services.AddAutoMapper(AppDomain.CurrentDomain.GetAssemblies());
var mappingConfiguration = new MapperConfiguration(config => config.AddProfile(new AutoMapperProfile()));
IMapper mapper = mappingConfiguration.CreateMapper();
builder.Services.AddSingleton(mapper);

var devCorsPolicy = "devCorsPolicy";
builder.Services.AddCors(options =>
{
    options.AddPolicy(devCorsPolicy, builder =>
    {
        //  builder.WithOrigins("https://localhost:4200").AllowAnyOrigin().AllowAnyMethod().AllowAnyHeader();
        // builder.AllowAnyOrigin().AllowAnyMethod().AllowAnyHeader();
        //builder.SetIsOriginAllowed(origin => new Uri(origin).Host == "localhost");
        //builder.SetIsOriginAllowed(origin => true);

        builder.WithOrigins("*").AllowAnyOrigin().AllowAnyMethod().AllowAnyHeader();
        builder.AllowAnyOrigin().AllowAnyMethod().AllowAnyHeader();
        builder.SetIsOriginAllowed(origin => new Uri(origin).Host == "localhost");
    });
});
var prodCorsPolicy = "prodCorsPolicy";
builder.Services.AddCors(options =>
{
    options.AddPolicy(devCorsPolicy, builder =>
    {
        //  builder.WithOrigins("https://localhost:4200").AllowAnyOrigin().AllowAnyMethod().AllowAnyHeader();
        // builder.AllowAnyOrigin().AllowAnyMethod().AllowAnyHeader();

        builder.WithOrigins("*").AllowAnyOrigin().AllowAnyMethod().AllowAnyHeader();
        builder.AllowAnyOrigin().AllowAnyMethod().AllowAnyHeader();
        builder.SetIsOriginAllowed(origin => new Uri(origin).Host == "localhost");
    });
});


var app = builder.Build();
// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseCors(x => x
               .AllowAnyOrigin()
               .AllowAnyMethod()
               .AllowAnyHeader());
    app.UseSwagger();
    app.UseSwaggerUI();
}
else if (app.Environment.IsProduction())
{
    app.UseCors(x => x
                .AllowAnyOrigin()
                .AllowAnyMethod()
                .AllowAnyHeader());
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseHttpsRedirection();
app.UseAuthentication();
app.UseAuthorization();
IConfiguration configuration = app.Configuration;
IWebHostEnvironment environment = app.Environment;

app.MapControllers();

app.Run();
