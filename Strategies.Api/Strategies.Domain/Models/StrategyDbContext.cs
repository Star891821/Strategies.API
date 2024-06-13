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

    public virtual DbSet<AssociatedStructure> AssociatedStructures { get; set; }

    public virtual DbSet<CashFlowRequirement> CashFlowRequirements { get; set; }

    public virtual DbSet<Customer> Customers { get; set; }

    public virtual DbSet<CustomerContactDetail> CustomerContactDetails { get; set; }

    public virtual DbSet<DependantsDetail> DependantsDetails { get; set; }

    public virtual DbSet<EmploymentDetail> EmploymentDetails { get; set; }

    public virtual DbSet<EstatePlanning> EstatePlannings { get; set; }

    public virtual DbSet<ExpectedFutureInflow> ExpectedFutureInflows { get; set; }

    public virtual DbSet<ExpenseDetail> ExpenseDetails { get; set; }

    public virtual DbSet<IncomeDetail> IncomeDetails { get; set; }

    public virtual DbSet<InsuranceDetail> InsuranceDetails { get; set; }

    public virtual DbSet<InvestmentAssetDetail> InvestmentAssetDetails { get; set; }

    public virtual DbSet<LiabilitiesDetail> LiabilitiesDetails { get; set; }

    public virtual DbSet<LifeStyleAssetDetail> LifeStyleAssetDetails { get; set; }

    public virtual DbSet<MstQuestion> MstQuestions { get; set; }

    public virtual DbSet<MstRoleGroup> MstRoleGroups { get; set; }

    public virtual DbSet<MstUser> MstUsers { get; set; }

    public virtual DbSet<MstUserRole> MstUserRoles { get; set; }

    public virtual DbSet<PlannedExpenditure> PlannedExpenditures { get; set; }

    public virtual DbSet<ProfessionalAdvisersDetail> ProfessionalAdvisersDetails { get; set; }

    public virtual DbSet<SrBusinessInsurance> SrBusinessInsurances { get; set; }

    public virtual DbSet<SrChildrensInsurance> SrChildrensInsurances { get; set; }

    public virtual DbSet<SrDebtReduction> SrDebtReductions { get; set; }

    public virtual DbSet<SrDebtRestructuring> SrDebtRestructurings { get; set; }

    public virtual DbSet<SrGearing> SrGearings { get; set; }

    public virtual DbSet<SrIncomeProtectionInsurance> SrIncomeProtectionInsurances { get; set; }

    public virtual DbSet<SrLifeInsurance> SrLifeInsurances { get; set; }

    public virtual DbSet<SrPowerOfAttorney> SrPowerOfAttorneys { get; set; }

    public virtual DbSet<SrSalarySacrifice> SrSalarySacrifices { get; set; }

    public virtual DbSet<SrTpdinsurance> SrTpdinsurances { get; set; }

    public virtual DbSet<SrWill> SrWills { get; set; }

    public virtual DbSet<StrategyForm> StrategyForms { get; set; }

    public virtual DbSet<SuperAssetDetail> SuperAssetDetails { get; set; }

    public virtual DbSet<UserRegistration> UserRegistrations { get; set; }

    public virtual DbSet<WillDetail> WillDetails { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseSqlServer("Server=Dell\\SQLEXPRESS;Initial Catalog=StrategyDB;User Id=sa;Password=sql2019;Trusted_Connection=True;TrustServerCertificate=True;MultipleActiveResultSets=true;Integrated Security=false;");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<AssociatedStructure>(entity =>
        {
            entity.HasKey(e => e.AssociatedStructuresId).HasName("PK__Associat__6BA73EF24B284642");

            entity.Property(e => e.AssociatedStructuresId).HasColumnName("AssociatedStructures_id");
            entity.Property(e => e.AssociatedStructuresDetails)
                .HasMaxLength(155)
                .HasColumnName("AssociatedStructures_details");
            entity.Property(e => e.CreatedAt)
                .HasDefaultValueSql("(getdate())")
                .HasColumnType("datetime")
                .HasColumnName("created_at");
            entity.Property(e => e.CreatedBy).HasColumnName("created_by");
            entity.Property(e => e.DescriptionType)
                .HasMaxLength(255)
                .HasColumnName("Description_Type");
            entity.Property(e => e.FormId).HasColumnName("form_id");
            entity.Property(e => e.IsJoint).HasDefaultValueSql("((0))");
            entity.Property(e => e.ModifiedAt)
                .HasColumnType("datetime")
                .HasColumnName("modified_at");
            entity.Property(e => e.ModifiedBy).HasColumnName("modified_by");
            entity.Property(e => e.Owners).HasMaxLength(50);

            entity.HasOne(d => d.Form).WithMany(p => p.AssociatedStructures)
                .HasForeignKey(d => d.FormId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__Associate__form___797309D9");
        });

        modelBuilder.Entity<CashFlowRequirement>(entity =>
        {
            entity.HasKey(e => e.CashflowId).HasName("PK__CashFlow__F4507463435BF2B1");

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
            entity.HasKey(e => e.CustomerId).HasName("PK__Customer__8CB382B1F10122F5");

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
            entity.Property(e => e.IsPartner).HasDefaultValueSql("((1))");
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
            entity.Property(e => e.TaxResident).HasColumnName("Tax_Resident");
            entity.Property(e => e.Title)
                .HasMaxLength(15)
                .HasColumnName("title");

            entity.HasOne(d => d.Form).WithMany(p => p.Customers)
                .HasForeignKey(d => d.FormId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__Customers__form___7D439ABD");
        });

        modelBuilder.Entity<CustomerContactDetail>(entity =>
        {
            entity.HasKey(e => e.CustomerContactId).HasName("PK__Customer__291D4C16C1845A08");

            entity.Property(e => e.CustomerContactId).HasColumnName("CustomerContact_id");
            entity.Property(e => e.CreatedAt)
                .HasColumnType("datetime")
                .HasColumnName("created_at");
            entity.Property(e => e.CreatedBy).HasColumnName("created_by");
            entity.Property(e => e.CustomerId).HasColumnName("Customer_id");
            entity.Property(e => e.EmailAddress)
                .HasMaxLength(255)
                .HasColumnName("Email_Address");
            entity.Property(e => e.FormId).HasColumnName("form_id");
            entity.Property(e => e.HomeTelephone)
                .HasMaxLength(15)
                .HasColumnName("Home_Telephone");
            entity.Property(e => e.IsPartner).HasDefaultValueSql("((1))");
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
            entity.Property(e => e.PostalCityId)
                .HasMaxLength(200)
                .HasColumnName("Postal_CityId");
            entity.Property(e => e.PostalPostalCode)
                .HasMaxLength(50)
                .HasColumnName("Postal_PostalCode");
            entity.Property(e => e.PostalStateId)
                .HasMaxLength(200)
                .HasColumnName("Postal_StateId");
            entity.Property(e => e.ResidentialAddress)
                .HasMaxLength(255)
                .HasColumnName("Residential_Address");
            entity.Property(e => e.ResidentialCityId)
                .HasMaxLength(200)
                .HasColumnName("Residential_CityId");
            entity.Property(e => e.ResidentialPostalCode)
                .HasMaxLength(50)
                .HasColumnName("Residential_PostalCode");
            entity.Property(e => e.ResidentialStateId)
                .HasMaxLength(200)
                .HasColumnName("Residential_StateId");
            entity.Property(e => e.SkypeName)
                .HasMaxLength(15)
                .HasColumnName("Skype_Name");
            entity.Property(e => e.WorkTelephone)
                .HasMaxLength(15)
                .HasColumnName("Work_Telephone");

            entity.HasOne(d => d.Form).WithMany(p => p.CustomerContactDetails)
                .HasForeignKey(d => d.FormId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__CustomerC__form___7C4F7684");
        });

        modelBuilder.Entity<DependantsDetail>(entity =>
        {
            entity.HasKey(e => e.DependantsDetailsId).HasName("PK__Dependan__4B906EF71EE16E19");

            entity.Property(e => e.DependantsDetailsId).HasColumnName("DependantsDetails_Id");
            entity.Property(e => e.CreatedAt)
                .HasDefaultValueSql("(getdate())")
                .HasColumnType("datetime")
                .HasColumnName("created_at");
            entity.Property(e => e.CreatedBy).HasColumnName("created_by");
            entity.Property(e => e.DependantsDetailsAdditionalInfo)
                .HasMaxLength(255)
                .HasColumnName("DependantsDetails_AdditionalInfo");
            entity.Property(e => e.DependantsDetailsAge).HasColumnName("DependantsDetails_Age");
            entity.Property(e => e.DependantsDetailsDob)
                .HasDefaultValueSql("(getdate())")
                .HasColumnType("datetime")
                .HasColumnName("DependantsDetails_DOB");
            entity.Property(e => e.DependantsDetailsGender)
                .HasMaxLength(150)
                .HasColumnName("DependantsDetails_gender");
            entity.Property(e => e.DependantsDetailsName)
                .HasMaxLength(150)
                .HasColumnName("DependantsDetails_Name");
            entity.Property(e => e.DependantsDetailsRelationship)
                .HasMaxLength(50)
                .HasColumnName("DependantsDetails_relationship");
            entity.Property(e => e.DependantsDetailsSupportAge).HasColumnName("DependantsDetails_SupportAge");
            entity.Property(e => e.FormId).HasColumnName("form_id");
            entity.Property(e => e.IsJoint).HasDefaultValueSql("((0))");
            entity.Property(e => e.ModifiedAt)
                .HasColumnType("datetime")
                .HasColumnName("modified_at");
            entity.Property(e => e.ModifiedBy).HasColumnName("modified_by");
            entity.Property(e => e.Owners).HasMaxLength(50);

            entity.HasOne(d => d.Form).WithMany(p => p.DependantsDetails)
                .HasForeignKey(d => d.FormId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__Dependant__form___7E37BEF6");
        });

        modelBuilder.Entity<EmploymentDetail>(entity =>
        {
            entity.HasKey(e => e.EmpId).HasName("PK__Employme__1299A861BDC6011A");

            entity.Property(e => e.EmpId).HasColumnName("emp_id");
            entity.Property(e => e.CreatedAt)
                .HasDefaultValueSql("(getdate())")
                .HasColumnType("datetime")
                .HasColumnName("created_at");
            entity.Property(e => e.CreatedBy).HasColumnName("created_by");
            entity.Property(e => e.FormId).HasColumnName("form_id");
            entity.Property(e => e.Income).HasMaxLength(255);
            entity.Property(e => e.ModifiedAt)
                .HasColumnType("datetime")
                .HasColumnName("modified_at");
            entity.Property(e => e.ModifiedBy).HasColumnName("modified_by");
            entity.Property(e => e.NameOfEmployer).HasMaxLength(255);
            entity.Property(e => e.Notes).HasMaxLength(255);
            entity.Property(e => e.Occupation).HasMaxLength(255);
            entity.Property(e => e.Pid).HasColumnName("PID");
            entity.Property(e => e.QuestionId).HasColumnName("Question_ID");

            entity.HasOne(d => d.Form).WithMany(p => p.EmploymentDetails)
                .HasForeignKey(d => d.FormId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__Employmen__form___7F2BE32F");
        });

        modelBuilder.Entity<EstatePlanning>(entity =>
        {
            entity.HasKey(e => e.EstatePlanningId).HasName("PK__EstatePl__977D3057185884C2");

            entity.ToTable("EstatePlanning");

            entity.Property(e => e.EstatePlanningId).HasColumnName("EstatePlanning_id");
            entity.Property(e => e.AdvanceCareDirective)
                .HasDefaultValueSql("((0))")
                .HasColumnName("Advance_Care_Directive");
            entity.Property(e => e.BeneficiaryOfYourEstate)
                .HasMaxLength(255)
                .HasColumnName("Beneficiary_Of_Your_Estate");
            entity.Property(e => e.CreatedAt)
                .HasDefaultValueSql("(getdate())")
                .HasColumnType("datetime")
                .HasColumnName("created_at");
            entity.Property(e => e.CreatedBy).HasColumnName("created_by");
            entity.Property(e => e.DateGuardianshipCompleted)
                .HasColumnType("datetime")
                .HasColumnName("Date_Guardianship_Completed");
            entity.Property(e => e.DateOfWill)
                .HasColumnType("datetime")
                .HasColumnName("Date_Of_Will");
            entity.Property(e => e.EnduringGuardianName)
                .HasMaxLength(255)
                .HasColumnName("Enduring_Guardian_Name");
            entity.Property(e => e.ExecutorOfWill)
                .HasMaxLength(255)
                .HasColumnName("Executor_Of_Will");
            entity.Property(e => e.FormId).HasColumnName("form_id");
            entity.Property(e => e.FuneralPlan)
                .HasDefaultValueSql("((0))")
                .HasColumnName("Funeral_Plan");
            entity.Property(e => e.HaveYouAppointedAnEnduringGuardian)
                .HasDefaultValueSql("((0))")
                .HasColumnName("Have_You_Appointed_An_Enduring_Guardian");
            entity.Property(e => e.IsWillCurrent)
                .HasDefaultValueSql("((0))")
                .HasColumnName("Is_Will_Current");
            entity.Property(e => e.LastReviewed)
                .HasMaxLength(255)
                .HasColumnName("Last_Reviewed");
            entity.Property(e => e.ModifiedAt)
                .HasColumnType("datetime")
                .HasColumnName("modified_at");
            entity.Property(e => e.ModifiedBy).HasColumnName("modified_by");
            entity.Property(e => e.Notes).HasMaxLength(255);
            entity.Property(e => e.Owners).HasMaxLength(50);
            entity.Property(e => e.PowerAttorney)
                .HasMaxLength(255)
                .HasColumnName("Power_Attorney");
            entity.Property(e => e.TestamentaryTrust)
                .HasDefaultValueSql("((0))")
                .HasColumnName("Testamentary_Trust");
            entity.Property(e => e.WillExists)
                .HasDefaultValueSql("((0))")
                .HasColumnName("Will_Exists");
            entity.Property(e => e.WillLocation)
                .HasMaxLength(255)
                .HasColumnName("Will_Location");

            entity.HasOne(d => d.Form).WithMany(p => p.EstatePlannings)
                .HasForeignKey(d => d.FormId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__EstatePla__form___00200768");
        });

        modelBuilder.Entity<ExpectedFutureInflow>(entity =>
        {
            entity.HasKey(e => e.ExpectedFutureInflowsId).HasName("PK__Expected__28D8A49134457D01");

            entity.Property(e => e.ExpectedFutureInflowsId).HasColumnName("ExpectedFutureInflows_id");
            entity.Property(e => e.Amount).HasMaxLength(255);
            entity.Property(e => e.CreatedAt)
                .HasDefaultValueSql("(getdate())")
                .HasColumnType("datetime")
                .HasColumnName("created_at");
            entity.Property(e => e.CreatedBy).HasColumnName("created_by");
            entity.Property(e => e.Date).HasColumnType("datetime");
            entity.Property(e => e.Description).HasMaxLength(255);
            entity.Property(e => e.FormId).HasColumnName("form_id");
            entity.Property(e => e.IsJoint).HasDefaultValueSql("((0))");
            entity.Property(e => e.ModifiedAt)
                .HasColumnType("datetime")
                .HasColumnName("modified_at");
            entity.Property(e => e.ModifiedBy).HasColumnName("modified_by");
            entity.Property(e => e.Owners).HasMaxLength(255);
            entity.Property(e => e.QuestionId).HasColumnName("Question_ID");

            entity.HasOne(d => d.Form).WithMany(p => p.ExpectedFutureInflows)
                .HasForeignKey(d => d.FormId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__ExpectedF__form___01142BA1");

            entity.HasOne(d => d.Question).WithMany(p => p.ExpectedFutureInflows)
                .HasForeignKey(d => d.QuestionId)
                .HasConstraintName("FK__ExpectedF__Quest__02FC7413");
        });

        modelBuilder.Entity<ExpenseDetail>(entity =>
        {
            entity.HasKey(e => e.ExpenseDetailsId).HasName("PK__ExpenseD__396FAD4555B747C7");

            entity.Property(e => e.ExpenseDetailsId).HasColumnName("ExpenseDetails_id");
            entity.Property(e => e.Amounts).HasMaxLength(255);
            entity.Property(e => e.CreatedAt)
                .HasDefaultValueSql("(getdate())")
                .HasColumnType("datetime")
                .HasColumnName("created_at");
            entity.Property(e => e.CreatedBy).HasColumnName("created_by");
            entity.Property(e => e.Description).HasMaxLength(255);
            entity.Property(e => e.FormId).HasColumnName("form_id");
            entity.Property(e => e.Frequency).HasMaxLength(255);
            entity.Property(e => e.IsJoint).HasDefaultValueSql("((0))");
            entity.Property(e => e.ModifiedAt)
                .HasColumnType("datetime")
                .HasColumnName("modified_at");
            entity.Property(e => e.ModifiedBy).HasColumnName("modified_by");
            entity.Property(e => e.Owners).HasMaxLength(255);
            entity.Property(e => e.QuestionId).HasColumnName("Question_ID");

            entity.HasOne(d => d.Form).WithMany(p => p.ExpenseDetails)
                .HasForeignKey(d => d.FormId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__ExpenseDe__form___03F0984C");

            entity.HasOne(d => d.Question).WithMany(p => p.ExpenseDetails)
                .HasForeignKey(d => d.QuestionId)
                .HasConstraintName("FK__ExpenseDe__Quest__04E4BC85");
        });

        modelBuilder.Entity<IncomeDetail>(entity =>
        {
            entity.HasKey(e => e.IncomeDetailsId).HasName("PK__IncomeDe__E30F8B6E5C8879AF");

            entity.Property(e => e.IncomeDetailsId).HasColumnName("IncomeDetails_id");
            entity.Property(e => e.Amounts).HasMaxLength(255);
            entity.Property(e => e.CreatedAt)
                .HasDefaultValueSql("(getdate())")
                .HasColumnType("datetime")
                .HasColumnName("created_at");
            entity.Property(e => e.CreatedBy).HasColumnName("created_by");
            entity.Property(e => e.Description).HasMaxLength(255);
            entity.Property(e => e.FormId).HasColumnName("form_id");
            entity.Property(e => e.Frequency).HasMaxLength(255);
            entity.Property(e => e.IsJoint).HasDefaultValueSql("((0))");
            entity.Property(e => e.ModifiedAt)
                .HasColumnType("datetime")
                .HasColumnName("modified_at");
            entity.Property(e => e.ModifiedBy).HasColumnName("modified_by");
            entity.Property(e => e.Owners).HasMaxLength(255);
            entity.Property(e => e.QuestionId).HasColumnName("Question_ID");

            entity.HasOne(d => d.Form).WithMany(p => p.IncomeDetails)
                .HasForeignKey(d => d.FormId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__IncomeDet__form___05D8E0BE");

            entity.HasOne(d => d.Question).WithMany(p => p.IncomeDetails)
                .HasForeignKey(d => d.QuestionId)
                .HasConstraintName("FK__IncomeDet__Quest__06CD04F7");
        });

        modelBuilder.Entity<InsuranceDetail>(entity =>
        {
            entity.HasKey(e => e.InsuranceId).HasName("PK__Insuranc__58B60F457D757375");

            entity.Property(e => e.InsuranceId).HasColumnName("insurance_id");
            entity.Property(e => e.BenefitPeriod)
                .HasMaxLength(250)
                .HasColumnName("benefit_period");
            entity.Property(e => e.Comments).HasMaxLength(255);
            entity.Property(e => e.CreatedAt)
                .HasDefaultValueSql("(getdate())")
                .HasColumnType("datetime")
                .HasColumnName("created_at");
            entity.Property(e => e.CreatedBy).HasColumnName("created_by");
            entity.Property(e => e.FormId).HasColumnName("form_id");
            entity.Property(e => e.InsurerType).HasColumnName("Insurer_Type");
            entity.Property(e => e.IsJoint).HasDefaultValueSql("((0))");
            entity.Property(e => e.ModifiedAt)
                .HasColumnType("datetime")
                .HasColumnName("modified_at");
            entity.Property(e => e.ModifiedBy).HasColumnName("modified_by");
            entity.Property(e => e.OtherDescription)
                .HasMaxLength(250)
                .HasColumnName("other_description");
            entity.Property(e => e.Owners).HasMaxLength(50);
            entity.Property(e => e.PremiumAmount)
                .HasMaxLength(255)
                .HasColumnName("premium_amount");
            entity.Property(e => e.PremiumFrequency)
                .HasMaxLength(200)
                .HasColumnName("premium_frequency");
            entity.Property(e => e.PremiumType)
                .HasMaxLength(255)
                .HasColumnName("premium_type");
            entity.Property(e => e.SumInsured).HasMaxLength(250);
            entity.Property(e => e.Super)
                .HasMaxLength(255)
                .HasColumnName("super");
            entity.Property(e => e.WaitingPeriod)
                .HasMaxLength(250)
                .HasColumnName("waiting_period");

            entity.HasOne(d => d.Form).WithMany(p => p.InsuranceDetails)
                .HasForeignKey(d => d.FormId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__Insurance__form___07C12930");
        });

        modelBuilder.Entity<InvestmentAssetDetail>(entity =>
        {
            entity.HasKey(e => e.InvestmentAssetDetailsId).HasName("PK__Investme__9BA8E40BA2EE678C");

            entity.Property(e => e.InvestmentAssetDetailsId).HasColumnName("InvestmentAssetDetails_id");
            entity.Property(e => e.CreatedAt)
                .HasDefaultValueSql("(getdate())")
                .HasColumnType("datetime")
                .HasColumnName("created_at");
            entity.Property(e => e.CreatedBy).HasColumnName("created_by");
            entity.Property(e => e.CurrentBalance)
                .HasMaxLength(255)
                .HasColumnName("Current_balance");
            entity.Property(e => e.Descriptions).HasMaxLength(255);
            entity.Property(e => e.FormId).HasColumnName("form_id");
            entity.Property(e => e.IsJoint).HasDefaultValueSql("((0))");
            entity.Property(e => e.ModifiedAt)
                .HasColumnType("datetime")
                .HasColumnName("modified_at");
            entity.Property(e => e.ModifiedBy).HasColumnName("modified_by");
            entity.Property(e => e.Owners).HasMaxLength(50);

            entity.HasOne(d => d.Form).WithMany(p => p.InvestmentAssetDetails)
                .HasForeignKey(d => d.FormId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__Investmen__form___08B54D69");
        });

        modelBuilder.Entity<LiabilitiesDetail>(entity =>
        {
            entity.HasKey(e => e.LiabilitiesDetailsId).HasName("PK__Liabilit__A2A7927A57DEC1DF");

            entity.Property(e => e.LiabilitiesDetailsId).HasColumnName("LiabilitiesDetails_id");
            entity.Property(e => e.CreatedAt)
                .HasDefaultValueSql("(getdate())")
                .HasColumnType("datetime")
                .HasColumnName("created_at");
            entity.Property(e => e.CreatedBy).HasColumnName("created_by");
            entity.Property(e => e.FormId).HasColumnName("form_id");
            entity.Property(e => e.InterestRate)
                .HasMaxLength(20)
                .HasColumnName("Interest_Rate");
            entity.Property(e => e.IsJoint).HasDefaultValueSql("((0))");
            entity.Property(e => e.LiabilityType).HasMaxLength(255);
            entity.Property(e => e.ModifiedAt)
                .HasColumnType("datetime")
                .HasColumnName("modified_at");
            entity.Property(e => e.ModifiedBy).HasColumnName("modified_by");
            entity.Property(e => e.OutstandingBalance)
                .HasMaxLength(150)
                .HasColumnName("Outstanding_Balance");
            entity.Property(e => e.Owners).HasMaxLength(50);
            entity.Property(e => e.RepaymentFrequence)
                .HasMaxLength(255)
                .HasColumnName("Repayment_Frequence");

            entity.HasOne(d => d.Form).WithMany(p => p.LiabilitiesDetails)
                .HasForeignKey(d => d.FormId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__Liabiliti__form___09A971A2");
        });

        modelBuilder.Entity<LifeStyleAssetDetail>(entity =>
        {
            entity.HasKey(e => e.LifeStyleAssetDetailsId).HasName("PK__LifeStyl__E73F105B7FB9DB95");

            entity.Property(e => e.LifeStyleAssetDetailsId).HasColumnName("LifeStyleAssetDetails_id");
            entity.Property(e => e.CreatedAt)
                .HasDefaultValueSql("(getdate())")
                .HasColumnType("datetime")
                .HasColumnName("created_at");
            entity.Property(e => e.CreatedBy).HasColumnName("created_by");
            entity.Property(e => e.CurrentBalance)
                .HasMaxLength(255)
                .HasColumnName("Current_balance");
            entity.Property(e => e.Descriptions).HasMaxLength(255);
            entity.Property(e => e.FormId).HasColumnName("form_id");
            entity.Property(e => e.IsJoint).HasDefaultValueSql("((0))");
            entity.Property(e => e.ModifiedAt)
                .HasColumnType("datetime")
                .HasColumnName("modified_at");
            entity.Property(e => e.ModifiedBy).HasColumnName("modified_by");
            entity.Property(e => e.Owners).HasMaxLength(50);

            entity.HasOne(d => d.Form).WithMany(p => p.LifeStyleAssetDetails)
                .HasForeignKey(d => d.FormId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__LifeStyle__form___0A9D95DB");
        });

        modelBuilder.Entity<MstQuestion>(entity =>
        {
            entity.HasKey(e => e.QuestionId).HasName("PK__MstQuest__B0B2E4C6CB6D329B");

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
            entity.HasKey(e => e.RolegroupId).HasName("PK__MstRoleG__680F3A9260166566");

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
                .HasConstraintName("FK__MstRoleGr__role___0B91BA14");
        });

        modelBuilder.Entity<MstUser>(entity =>
        {
            entity.HasKey(e => e.UserId).HasName("PK__MstUsers__B9BE370F93A0D043");

            entity.Property(e => e.UserId).HasColumnName("user_id");
            entity.Property(e => e.CreatedAt)
                .HasColumnType("datetime")
                .HasColumnName("created_at");
            entity.Property(e => e.CreatedBy).HasColumnName("created_by");
            entity.Property(e => e.Enforce2Fa).HasColumnName("enforce2FA");
            entity.Property(e => e.IsLocked).HasDefaultValueSql("((0))");
            entity.Property(e => e.IsUpdated).HasDefaultValueSql("((0))");
            entity.Property(e => e.LastPwdChangedDate).HasColumnType("datetime");
            entity.Property(e => e.LastloginAt)
                .HasColumnType("datetime")
                .HasColumnName("lastlogin_at");
            entity.Property(e => e.ModifiedAt)
                .HasColumnType("datetime")
                .HasColumnName("modified_at");
            entity.Property(e => e.ModifiedBy).HasColumnName("modified_by");
            entity.Property(e => e.Otp)
                .HasMaxLength(10)
                .HasColumnName("OTP");
            entity.Property(e => e.OtpgeneratedDate)
                .HasColumnType("datetime")
                .HasColumnName("OTPGeneratedDate");
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
                .HasConstraintName("FK__MstUsers__role_i__0C85DE4D");
        });

        modelBuilder.Entity<MstUserRole>(entity =>
        {
            entity.HasKey(e => e.RoleId).HasName("PK__MstUserR__760965CC84C7ACA2");

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
            entity.HasKey(e => e.PlannedExpenditureId).HasName("PK__PlannedE__8ACB67C645190D11");

            entity.ToTable("PlannedExpenditure");

            entity.Property(e => e.PlannedExpenditureId).HasColumnName("PlannedExpenditure_id");
            entity.Property(e => e.Amount).HasMaxLength(255);
            entity.Property(e => e.CreatedAt)
                .HasDefaultValueSql("(getdate())")
                .HasColumnType("datetime")
                .HasColumnName("created_at");
            entity.Property(e => e.CreatedBy).HasColumnName("created_by");
            entity.Property(e => e.Date).HasColumnType("datetime");
            entity.Property(e => e.Description).HasMaxLength(255);
            entity.Property(e => e.FormId).HasColumnName("form_id");
            entity.Property(e => e.IsJoint).HasDefaultValueSql("((0))");
            entity.Property(e => e.ModifiedAt)
                .HasColumnType("datetime")
                .HasColumnName("modified_at");
            entity.Property(e => e.ModifiedBy).HasColumnName("modified_by");
            entity.Property(e => e.Owners).HasMaxLength(255);
            entity.Property(e => e.QuestionId).HasColumnName("Question_ID");

            entity.HasOne(d => d.Form).WithMany(p => p.PlannedExpenditures)
                .HasForeignKey(d => d.FormId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__PlannedEx__form___0D7A0286");

            entity.HasOne(d => d.Question).WithMany(p => p.PlannedExpenditures)
                .HasForeignKey(d => d.QuestionId)
                .HasConstraintName("FK__PlannedEx__Quest__0F624AF8");
        });

        modelBuilder.Entity<ProfessionalAdvisersDetail>(entity =>
        {
            entity.HasKey(e => e.ProfessionalAdvisersDetailsId).HasName("PK__Professi__A755D23F95569AEF");

            entity.Property(e => e.ProfessionalAdvisersDetailsId).HasColumnName("ProfessionalAdvisersDetails_id");
            entity.Property(e => e.CreatedAt)
                .HasDefaultValueSql("(getdate())")
                .HasColumnType("datetime")
                .HasColumnName("created_at");
            entity.Property(e => e.CreatedBy).HasColumnName("created_by");
            entity.Property(e => e.EmailAddress)
                .HasMaxLength(80)
                .HasColumnName("Email_Address");
            entity.Property(e => e.FormId).HasColumnName("form_id");
            entity.Property(e => e.IsJoint).HasDefaultValueSql("((0))");
            entity.Property(e => e.ModifiedAt)
                .HasColumnType("datetime")
                .HasColumnName("modified_at");
            entity.Property(e => e.ModifiedBy).HasColumnName("modified_by");
            entity.Property(e => e.Notes).HasMaxLength(250);
            entity.Property(e => e.Owners).HasMaxLength(50);
            entity.Property(e => e.ProfessionalAdvisersDetailsBusinessName)
                .HasMaxLength(122)
                .HasColumnName("ProfessionalAdvisersDetails_BusinessName");
            entity.Property(e => e.ProfessionalAdvisersDetailsName)
                .HasMaxLength(122)
                .HasColumnName("ProfessionalAdvisersDetails_Name");
            entity.Property(e => e.ProfessionalAdvisersDetailsType)
                .HasMaxLength(80)
                .HasColumnName("ProfessionalAdvisersDetails_Type");
            entity.Property(e => e.WorkTelephone)
                .HasMaxLength(80)
                .HasColumnName("Work_Telephone");

            entity.HasOne(d => d.Form).WithMany(p => p.ProfessionalAdvisersDetails)
                .HasForeignKey(d => d.FormId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__Professio__form___10566F31");
        });

        modelBuilder.Entity<SrBusinessInsurance>(entity =>
        {
            entity
                .HasNoKey()
                .ToTable("sr_BusinessInsurance");

            entity.Property(e => e.BusinessInsuranceReview).HasMaxLength(500);
            entity.Property(e => e.SrReferences).HasColumnName("sr_References");
            entity.Property(e => e.StrategyName).HasMaxLength(500);
        });

        modelBuilder.Entity<SrChildrensInsurance>(entity =>
        {
            entity
                .HasNoKey()
                .ToTable("sr_ChildrensInsurance");

            entity.Property(e => e.ChildrensInsuranceReview).HasMaxLength(500);
            entity.Property(e => e.SrReferences).HasColumnName("sr_References");
            entity.Property(e => e.StrategyName).HasMaxLength(500);
        });

        modelBuilder.Entity<SrDebtReduction>(entity =>
        {
            entity
                .HasNoKey()
                .ToTable("sr_DebtReduction");

            entity.Property(e => e.DebtReductionReview).HasMaxLength(500);
            entity.Property(e => e.SrReferences).HasColumnName("sr_References");
            entity.Property(e => e.StrategyName).HasMaxLength(500);
        });

        modelBuilder.Entity<SrDebtRestructuring>(entity =>
        {
            entity
                .HasNoKey()
                .ToTable("sr_DebtRestructuring");

            entity.Property(e => e.DebtRestructuringReview).HasMaxLength(500);
            entity.Property(e => e.SrReferences).HasColumnName("sr_References");
            entity.Property(e => e.StrategyName).HasMaxLength(500);
        });

        modelBuilder.Entity<SrGearing>(entity =>
        {
            entity
                .HasNoKey()
                .ToTable("sr_Gearing");

            entity.Property(e => e.GearingReview).HasMaxLength(500);
            entity.Property(e => e.SrReferences).HasColumnName("sr_References");
            entity.Property(e => e.StrategyName).HasMaxLength(500);
        });

        modelBuilder.Entity<SrIncomeProtectionInsurance>(entity =>
        {
            entity
                .HasNoKey()
                .ToTable("sr_IncomeProtectionInsurance");

            entity.Property(e => e.IncomeProtectionReview).HasMaxLength(500);
            entity.Property(e => e.SrReferences).HasColumnName("sr_References");
            entity.Property(e => e.StrategyName).HasMaxLength(500);
        });

        modelBuilder.Entity<SrLifeInsurance>(entity =>
        {
            entity
                .HasNoKey()
                .ToTable("sr_LifeInsurance");

            entity.Property(e => e.LifeInsuranceReview).HasMaxLength(500);
            entity.Property(e => e.SrReferences).HasColumnName("sr_References");
            entity.Property(e => e.StrategyName).HasMaxLength(500);
        });

        modelBuilder.Entity<SrPowerOfAttorney>(entity =>
        {
            entity
                .HasNoKey()
                .ToTable("sr_PowerOfAttorney");

            entity.Property(e => e.PowerOfAttorneyReview).HasMaxLength(500);
            entity.Property(e => e.SrReferences).HasColumnName("sr_References");
            entity.Property(e => e.StrategyName).HasMaxLength(500);
        });

        modelBuilder.Entity<SrSalarySacrifice>(entity =>
        {
            entity
                .HasNoKey()
                .ToTable("sr_SalarySacrifice");

            entity.Property(e => e.SalarySacrificeReview).HasMaxLength(500);
            entity.Property(e => e.SrReferences).HasColumnName("sr_References");
            entity.Property(e => e.StrategyName).HasMaxLength(500);
        });

        modelBuilder.Entity<SrTpdinsurance>(entity =>
        {
            entity
                .HasNoKey()
                .ToTable("sr_TPDInsurance");

            entity.Property(e => e.SrReferences).HasColumnName("sr_References");
            entity.Property(e => e.StrategyName).HasMaxLength(500);
            entity.Property(e => e.TpdinsuranceReview)
                .HasMaxLength(500)
                .HasColumnName("TPDInsuranceReview");
        });

        modelBuilder.Entity<SrWill>(entity =>
        {
            entity
                .HasNoKey()
                .ToTable("sr_Will");

            entity.Property(e => e.SrReferences).HasColumnName("sr_References");
            entity.Property(e => e.StrategyName).HasMaxLength(500);
            entity.Property(e => e.WillReview).HasMaxLength(500);
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
            entity.Property(e => e.Step).HasColumnName("step");
            entity.Property(e => e.UserId).HasColumnName("user_id");
        });

        modelBuilder.Entity<SuperAssetDetail>(entity =>
        {
            entity.HasKey(e => e.SuperAssetDetailsId).HasName("PK__SuperAss__BDB5E4D4BC1F818E");

            entity.Property(e => e.SuperAssetDetailsId).HasColumnName("SuperAssetDetails_id");
            entity.Property(e => e.Contributions).HasMaxLength(255);
            entity.Property(e => e.CreatedAt)
                .HasDefaultValueSql("(getdate())")
                .HasColumnType("datetime")
                .HasColumnName("created_at");
            entity.Property(e => e.CreatedBy).HasColumnName("created_by");
            entity.Property(e => e.FormId).HasColumnName("form_id");
            entity.Property(e => e.FundBalance)
                .HasMaxLength(255)
                .HasColumnName("Fund_Balance");
            entity.Property(e => e.IsJoint).HasDefaultValueSql("((0))");
            entity.Property(e => e.ModifiedAt)
                .HasColumnType("datetime")
                .HasColumnName("modified_at");
            entity.Property(e => e.ModifiedBy).HasColumnName("modified_by");
            entity.Property(e => e.Owners).HasMaxLength(50);
            entity.Property(e => e.SuperassetType).HasColumnName("Superasset_Type");

            entity.HasOne(d => d.Form).WithMany(p => p.SuperAssetDetails)
                .HasForeignKey(d => d.FormId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__SuperAsse__form___114A936A");
        });

        modelBuilder.Entity<UserRegistration>(entity =>
        {
            entity.HasKey(e => e.RegisterId).HasName("PK__UserRegi__1418262F1D3694F7");

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

        modelBuilder.Entity<WillDetail>(entity =>
        {
            entity.HasKey(e => e.WillId).HasName("PK__WillDeta__F395B5DBB2C9B13C");

            entity.Property(e => e.WillId).HasColumnName("will_id");
            entity.Property(e => e.BeneficiaryOfYourEstate)
                .HasMaxLength(255)
                .HasColumnName("Beneficiary_Of_Your_Estate");
            entity.Property(e => e.CreatedAt)
                .HasColumnType("datetime")
                .HasColumnName("created_at");
            entity.Property(e => e.CreatedBy).HasColumnName("created_by");
            entity.Property(e => e.DateOfWill)
                .HasColumnType("datetime")
                .HasColumnName("Date_Of_Will");
            entity.Property(e => e.ExecutorOfWill)
                .HasMaxLength(255)
                .HasColumnName("Executor_Of_Will");
            entity.Property(e => e.FormId).HasColumnName("form_id");
            entity.Property(e => e.IsWillCurrent)
                .HasMaxLength(255)
                .HasColumnName("Is_Will_Current");
            entity.Property(e => e.ModifiedAt)
                .HasColumnType("datetime")
                .HasColumnName("modified_at");
            entity.Property(e => e.ModifiedBy).HasColumnName("modified_by");
            entity.Property(e => e.Owners).HasMaxLength(100);
            entity.Property(e => e.WillLocation)
                .HasMaxLength(255)
                .HasColumnName("Will_Location");

            entity.HasOne(d => d.Form).WithMany(p => p.WillDetails)
                .HasForeignKey(d => d.FormId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__WillDetai__form___123EB7A3");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
