using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace Strategies.Domain.Models;

public partial class StrategyDbContext : DbContext
{
    public StrategyDbContext()
    {
    }

    public StrategyDbContext(DbContextOptions<StrategyDbContext> options)
        : base(options)
    {
    }

    public virtual DbSet<CashFlowRequirement> CashFlowRequirements { get; set; }

    public virtual DbSet<Customer> Customers { get; set; }

    public virtual DbSet<CustomerContactDetail> CustomerContactDetails { get; set; }

    public virtual DbSet<ExpectedFutureInflow> ExpectedFutureInflows { get; set; }

    public virtual DbSet<MstQuestion> MstQuestions { get; set; }

    public virtual DbSet<MstRoleGroup> MstRoleGroups { get; set; }

    public virtual DbSet<MstUser> MstUsers { get; set; }

    public virtual DbSet<MstUserRole> MstUserRoles { get; set; }

    public virtual DbSet<PlannedExpenditure> PlannedExpenditures { get; set; }

    public virtual DbSet<StrategyForm> StrategyForms { get; set; }

    public virtual DbSet<UserRegistration> UserRegistrations { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseSqlServer("Server=MSI;Initial Catalog=StrategyDB;User Id=sa;Password=1992;Trusted_Connection=True;TrustServerCertificate=True;MultipleActiveResultSets=true;Integrated Security=false;");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<CashFlowRequirement>(entity =>
        {
            entity.HasKey(e => e.CashflowId).HasName("PK__CashFlow__F45074635D682C7E");

            entity.Property(e => e.CashflowId).HasColumnName("cashflow_id");
            entity.Property(e => e.Amount).HasMaxLength(255);
            entity.Property(e => e.CreatedAt)
                .HasDefaultValueSql("(getdate())")
                .HasColumnType("datetime")
                .HasColumnName("created_at");
            entity.Property(e => e.CreatedBy).HasColumnName("created_by");
            entity.Property(e => e.FormId).HasColumnName("form_id");
            entity.Property(e => e.ModifiedAt)
                .HasColumnType("datetime")
                .HasColumnName("modified_at");
            entity.Property(e => e.ModifiedBy).HasColumnName("modified_by");
            entity.Property(e => e.QuestionId).HasColumnName("Question_ID");

            entity.HasOne(d => d.Form).WithMany(p => p.CashFlowRequirements)
                .HasForeignKey(d => d.FormId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__CashFlowR__form___7A672E12");
        });

        modelBuilder.Entity<Customer>(entity =>
        {
            entity.HasKey(e => e.CustomerId).HasName("PK__Customer__8CB382B1F64F9EE0");

            entity.Property(e => e.CustomerId).HasColumnName("Customer_id");
            entity.Property(e => e.CreatedAt)
                .HasDefaultValueSql("(getdate())")
                .HasColumnType("datetime")
                .HasColumnName("created_at");
            entity.Property(e => e.CreatedBy).HasColumnName("created_by");
            entity.Property(e => e.Dob)
                .HasColumnType("datetime")
                .HasColumnName("DOB");
            entity.Property(e => e.FirstName)
                .HasMaxLength(255)
                .HasColumnName("firstName");
            entity.Property(e => e.FormId).HasColumnName("form_id");
            entity.Property(e => e.Gender).HasMaxLength(15);
            entity.Property(e => e.HealthStatus)
                .HasMaxLength(15)
                .HasColumnName("Health_Status");
            entity.Property(e => e.IsPartner).HasDefaultValueSql("((0))");
            entity.Property(e => e.LastloginAt)
                .HasColumnType("datetime")
                .HasColumnName("lastlogin_at");
            entity.Property(e => e.MaritalStatus)
                .HasMaxLength(15)
                .HasColumnName("Marital_Status");
            entity.Property(e => e.MiddleName).HasMaxLength(255);
            entity.Property(e => e.ModifiedAt)
                .HasColumnType("datetime")
                .HasColumnName("modified_at");
            entity.Property(e => e.ModifiedBy).HasColumnName("modified_by");
            entity.Property(e => e.Pid).HasColumnName("PID");
            entity.Property(e => e.PreferredName).HasMaxLength(15);
            entity.Property(e => e.RetirementAge).HasColumnName("Retirement_Age");
            entity.Property(e => e.Surname).HasMaxLength(255);
            entity.Property(e => e.TaxResident)
                .HasMaxLength(25)
                .HasColumnName("Tax_Resident");
            entity.Property(e => e.Title)
                .HasMaxLength(15)
                .HasColumnName("title");

            entity.HasOne(d => d.Form).WithMany(p => p.Customers)
                .HasForeignKey(d => d.FormId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__Customers__form___4E88ABD4");
        });

        modelBuilder.Entity<CustomerContactDetail>(entity =>
        {
            entity.HasKey(e => e.CustomerContactId).HasName("PK__Customer__291D4C16300BE985");

            entity.Property(e => e.CustomerContactId).HasColumnName("CustomerContact_id");
            entity.Property(e => e.CreatedAt)
                .HasColumnType("datetime")
                .HasColumnName("created_at");
            entity.Property(e => e.CreatedBy).HasColumnName("created_by");
            entity.Property(e => e.CustomerId).HasColumnName("Customer_id");
            entity.Property(e => e.EmailAddress)
                .HasMaxLength(20)
                .HasColumnName("Email_Address");
            entity.Property(e => e.FormId).HasColumnName("form_id");
            entity.Property(e => e.HomeTelephone)
                .HasMaxLength(15)
                .HasColumnName("Home_Telephone");
            entity.Property(e => e.IsPartner).HasDefaultValueSql("((0))");
            entity.Property(e => e.MobileTelephone)
                .HasMaxLength(15)
                .HasColumnName("Mobile_Telephone");
            entity.Property(e => e.ModifiedAt)
                .HasColumnType("datetime")
                .HasColumnName("modified_at");
            entity.Property(e => e.ModifiedBy).HasColumnName("modified_by");
            entity.Property(e => e.Pid).HasColumnName("PID");
            entity.Property(e => e.PostalAddress)
                .HasMaxLength(255)
                .HasColumnName("Postal_Address");
            entity.Property(e => e.PostalCityId).HasColumnName("Postal_CityId");
            entity.Property(e => e.PostalPostalCode)
                .HasMaxLength(50)
                .HasColumnName("Postal_PostalCode");
            entity.Property(e => e.PostalStateId).HasColumnName("Postal_StateId");
            entity.Property(e => e.ResidentialAddress)
                .HasMaxLength(255)
                .HasColumnName("Residential_Address");
            entity.Property(e => e.ResidentialCityId).HasColumnName("Residential_CityId");
            entity.Property(e => e.ResidentialPostalCode)
                .HasMaxLength(50)
                .HasColumnName("Residential_PostalCode");
            entity.Property(e => e.ResidentialStateId).HasColumnName("Residential_StateId");
            entity.Property(e => e.SkypeName)
                .HasMaxLength(15)
                .HasColumnName("Skype_Name");
            entity.Property(e => e.WorkTelephone)
                .HasMaxLength(15)
                .HasColumnName("Work_Telephone");

            entity.HasOne(d => d.Form).WithMany(p => p.CustomerContactDetails)
                .HasForeignKey(d => d.FormId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__CustomerC__form___4F7CD00D");
        });

        modelBuilder.Entity<ExpectedFutureInflow>(entity =>
        {
            entity.HasKey(e => e.ExpectedFutureInflowsId).HasName("PK__Expected__28D8A491A4502C1F");

            entity.Property(e => e.ExpectedFutureInflowsId).HasColumnName("ExpectedFutureInflows_id");
            entity.Property(e => e.Amount).HasMaxLength(255);
            entity.Property(e => e.CreatedAt)
                .HasDefaultValueSql("(getdate())")
                .HasColumnType("datetime")
                .HasColumnName("created_at");
            entity.Property(e => e.CreatedBy).HasColumnName("created_by");
            entity.Property(e => e.CustomerId).HasColumnName("Customer_id");
            entity.Property(e => e.Date).HasColumnType("datetime");
            entity.Property(e => e.Description).HasMaxLength(255);
            entity.Property(e => e.FormId).HasColumnName("form_id");
            entity.Property(e => e.ModifiedAt)
                .HasColumnType("datetime")
                .HasColumnName("modified_at");
            entity.Property(e => e.ModifiedBy).HasColumnName("modified_by");
            entity.Property(e => e.PartnerId).HasColumnName("Partner_id");

            entity.HasOne(d => d.Form).WithMany(p => p.ExpectedFutureInflows)
                .HasForeignKey(d => d.FormId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__ExpectedF__form___02084FDA");
        });

        modelBuilder.Entity<MstQuestion>(entity =>
        {
            entity.HasKey(e => e.QuestionId).HasName("PK__MstQuest__B0B2E4C68936DA55");

            entity.Property(e => e.QuestionId).HasColumnName("Question_ID");
            entity.Property(e => e.ActiveYn).HasColumnName("activeYN");
            entity.Property(e => e.CreatedAt)
                .HasDefaultValueSql("(getdate())")
                .HasColumnType("datetime")
                .HasColumnName("created_at");
            entity.Property(e => e.CreatedBy).HasColumnName("created_by");
            entity.Property(e => e.ModifiedAt)
                .HasColumnType("datetime")
                .HasColumnName("modified_at");
            entity.Property(e => e.ModifiedBy).HasColumnName("modified_by");
            entity.Property(e => e.QuestionDescription)
                .HasMaxLength(255)
                .HasColumnName("Question_Description");
            entity.Property(e => e.SectionName)
                .HasMaxLength(255)
                .HasColumnName("Section_Name");
        });

        modelBuilder.Entity<MstRoleGroup>(entity =>
        {
            entity.HasKey(e => e.RolegroupId).HasName("PK__MstRoleG__680F3A921D744EE7");

            entity.Property(e => e.RolegroupId).HasColumnName("rolegroup_id");
            entity.Property(e => e.ActiveYn).HasColumnName("activeYN");
            entity.Property(e => e.CreatedAt)
                .HasDefaultValueSql("(getdate())")
                .HasColumnType("datetime")
                .HasColumnName("created_at");
            entity.Property(e => e.CreatedBy).HasColumnName("created_by");
            entity.Property(e => e.ModifiedAt)
                .HasColumnType("datetime")
                .HasColumnName("modified_at");
            entity.Property(e => e.ModifiedBy).HasColumnName("modified_by");
            entity.Property(e => e.RoleId).HasColumnName("role_id");
            entity.Property(e => e.RolegroupDescription)
                .HasMaxLength(255)
                .HasColumnName("rolegroup_description");
            entity.Property(e => e.RolegroupName)
                .HasMaxLength(255)
                .HasColumnName("rolegroup_name");

            entity.HasOne(d => d.Role).WithMany(p => p.MstRoleGroups)
                .HasForeignKey(d => d.RoleId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__MstRoleGr__role___4BAC3F29");
        });

        modelBuilder.Entity<MstUser>(entity =>
        {
            entity.HasKey(e => e.UserId).HasName("PK__MstUsers__B9BE370FF718ACF2");

            entity.Property(e => e.UserId).HasColumnName("user_id");
            entity.Property(e => e.CreatedAt)
                .HasColumnType("datetime")
                .HasColumnName("created_at");
            entity.Property(e => e.CreatedBy).HasColumnName("created_by");
            entity.Property(e => e.Enforce2Fa).HasColumnName("enforce2FA");
            entity.Property(e => e.LastloginAt)
                .HasColumnType("datetime")
                .HasColumnName("lastlogin_at");
            entity.Property(e => e.ModifiedAt)
                .HasColumnType("datetime")
                .HasColumnName("modified_at");
            entity.Property(e => e.ModifiedBy).HasColumnName("modified_by");
            entity.Property(e => e.RoleId).HasColumnName("role_id");
            entity.Property(e => e.UserGivenName)
                .HasMaxLength(255)
                .HasColumnName("user_givenName");
            entity.Property(e => e.UserLoginType)
                .HasMaxLength(255)
                .HasColumnName("user_loginType");
            entity.Property(e => e.UserPhone)
                .HasMaxLength(15)
                .HasColumnName("user_phone");
            entity.Property(e => e.UserSurname)
                .HasMaxLength(255)
                .HasColumnName("user_surname");
            entity.Property(e => e.Useremail)
                .HasMaxLength(255)
                .HasColumnName("useremail");
            entity.Property(e => e.Username)
                .HasMaxLength(255)
                .HasColumnName("username");
            entity.Property(e => e.Userpassword)
                .HasMaxLength(255)
                .HasColumnName("userpassword");

            entity.HasOne(d => d.Role).WithMany(p => p.MstUsers)
                .HasForeignKey(d => d.RoleId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__MstUsers__role_i__4CA06362");
        });

        modelBuilder.Entity<MstUserRole>(entity =>
        {
            entity.HasKey(e => e.RoleId).HasName("PK__MstUserR__760965CC5F87DAEF");

            entity.Property(e => e.RoleId).HasColumnName("role_id");
            entity.Property(e => e.ActiveYn).HasColumnName("activeYN");
            entity.Property(e => e.CreatedAt)
                .HasDefaultValueSql("(getdate())")
                .HasColumnType("datetime")
                .HasColumnName("created_at");
            entity.Property(e => e.CreatedBy).HasColumnName("created_by");
            entity.Property(e => e.ModifiedAt)
                .HasColumnType("datetime")
                .HasColumnName("modified_at");
            entity.Property(e => e.ModifiedBy).HasColumnName("modified_by");
            entity.Property(e => e.RoleName)
                .HasMaxLength(255)
                .HasColumnName("role_name");
        });

        modelBuilder.Entity<PlannedExpenditure>(entity =>
        {
            entity.HasKey(e => e.PlannedExpenditureId).HasName("PK__PlannedE__8ACB67C663F6F8FA");

            entity.ToTable("PlannedExpenditure");

            entity.Property(e => e.PlannedExpenditureId).HasColumnName("PlannedExpenditure_id");
            entity.Property(e => e.Amount).HasMaxLength(255);
            entity.Property(e => e.CreatedAt)
                .HasDefaultValueSql("(getdate())")
                .HasColumnType("datetime")
                .HasColumnName("created_at");
            entity.Property(e => e.CreatedBy).HasColumnName("created_by");
            entity.Property(e => e.CustomerId).HasColumnName("Customer_id");
            entity.Property(e => e.Date).HasColumnType("datetime");
            entity.Property(e => e.Description).HasMaxLength(255);
            entity.Property(e => e.FormId).HasColumnName("form_id");
            entity.Property(e => e.ModifiedAt)
                .HasColumnType("datetime")
                .HasColumnName("modified_at");
            entity.Property(e => e.ModifiedBy).HasColumnName("modified_by");
            entity.Property(e => e.PartnerId).HasColumnName("Partner_id");

            entity.HasOne(d => d.Form).WithMany(p => p.PlannedExpenditures)
                .HasForeignKey(d => d.FormId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__PlannedEx__form___7E37BEF6");
        });

        modelBuilder.Entity<StrategyForm>(entity =>
        {
            entity.HasKey(e => e.FormId).HasName("PK__Strategy__190E16C9D64462F9");

            entity.Property(e => e.FormId).HasColumnName("form_id");
            entity.Property(e => e.CreatedAt)
                .HasColumnType("datetime")
                .HasColumnName("created_at");
            entity.Property(e => e.CreatedBy).HasColumnName("created_by");
            entity.Property(e => e.FormStatus).HasColumnName("form_status");
            entity.Property(e => e.ModifiedAt)
                .HasColumnType("datetime")
                .HasColumnName("modified_at");
            entity.Property(e => e.ModifiedBy).HasColumnName("modified_by");
        });

        modelBuilder.Entity<UserRegistration>(entity =>
        {
            entity.HasKey(e => e.RegisterId).HasName("PK__UserRegi__1418262F264342CA");

            entity.ToTable("UserRegistration");

            entity.Property(e => e.RegisterId).HasColumnName("register_id");
            entity.Property(e => e.ActiveYn).HasColumnName("activeYN");
            entity.Property(e => e.CreatedAt)
                .HasDefaultValueSql("(getdate())")
                .HasColumnType("datetime")
                .HasColumnName("created_at");
            entity.Property(e => e.CreatedBy).HasColumnName("created_by");
            entity.Property(e => e.Enforce2Fa).HasColumnName("enforce2FA");
            entity.Property(e => e.ModifiedAt)
                .HasColumnType("datetime")
                .HasColumnName("modified_at");
            entity.Property(e => e.ModifiedBy).HasColumnName("modified_by");
            entity.Property(e => e.RegisterEmail)
                .HasMaxLength(255)
                .HasColumnName("register_email");
            entity.Property(e => e.RegisterGivenname)
                .HasMaxLength(255)
                .HasColumnName("register_givenname");
            entity.Property(e => e.RegisterPassword)
                .HasMaxLength(255)
                .HasColumnName("register_password");
            entity.Property(e => e.RegisterPhone)
                .HasMaxLength(15)
                .HasColumnName("register_phone");
            entity.Property(e => e.RegisterSurname)
                .HasMaxLength(255)
                .HasColumnName("register_surname");
            entity.Property(e => e.RegisterType)
                .HasMaxLength(255)
                .HasColumnName("register_type");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
