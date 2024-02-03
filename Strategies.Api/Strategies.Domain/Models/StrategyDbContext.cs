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

    public virtual DbSet<StrategyForm> StrategyForms { get; set; }

    public virtual DbSet<SuperAssetDetail> SuperAssetDetails { get; set; }

    public virtual DbSet<UserRegistration> UserRegistrations { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseSqlServer("Server=MSI;Initial Catalog=StrategyDB;User Id=sa;Password=1992;Trusted_Connection=True;TrustServerCertificate=True;MultipleActiveResultSets=true;Integrated Security=false;");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<AssociatedStructure>(entity =>
        {
            entity.HasKey(e => e.AssociatedStructuresId).HasName("PK__Associat__6BA73EF2D7F1280E");

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
                .HasConstraintName("FK__Associate__form___367C1819");
        });

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
            entity.Property(e => e.TaxResident).HasColumnName("Tax_Resident");
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
                .HasMaxLength(255)
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
                .HasConstraintName("FK__CustomerC__form___4F7CD00D");
        });

        modelBuilder.Entity<DependantsDetail>(entity =>
        {
            entity.HasKey(e => e.DependantsDetailsId).HasName("PK__Dependan__4B906EF7AEC97D89");

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
                .HasConstraintName("FK__Dependant__form___395884C4");
        });

        modelBuilder.Entity<EmploymentDetail>(entity =>
        {
            entity.HasKey(e => e.EmpId).HasName("PK__Employme__1299A8617CB1D9B4");

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
                .HasConstraintName("FK__Employmen__form___2A164134");
        });

        modelBuilder.Entity<EstatePlanning>(entity =>
        {
            entity.HasKey(e => e.EstatePlanningId).HasName("PK__EstatePl__977D3057C2459697");

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
            entity.Property(e => e.IsJoint).HasDefaultValueSql("((0))");
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
                .HasConstraintName("FK__EstatePla__form___7849DB76");
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
                .HasConstraintName("FK__ExpectedF__form___02084FDA");

            entity.HasOne(d => d.Question).WithMany(p => p.ExpectedFutureInflows)
                .HasForeignKey(d => d.QuestionId)
                .HasConstraintName("FK__ExpectedF__Quest__69FBBC1F");
        });

        modelBuilder.Entity<ExpenseDetail>(entity =>
        {
            entity.HasKey(e => e.ExpenseDetailsId).HasName("PK__ExpenseD__396FAD45E24BAAE4");

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
                .HasConstraintName("FK__ExpenseDe__form___32AB8735");

            entity.HasOne(d => d.Question).WithMany(p => p.ExpenseDetails)
                .HasForeignKey(d => d.QuestionId)
                .HasConstraintName("FK__ExpenseDe__Quest__339FAB6E");
        });

        modelBuilder.Entity<IncomeDetail>(entity =>
        {
            entity.HasKey(e => e.IncomeDetailsId).HasName("PK__IncomeDe__E30F8B6E5BC4178F");

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
                .HasConstraintName("FK__IncomeDet__form___2DE6D218");

            entity.HasOne(d => d.Question).WithMany(p => p.IncomeDetails)
                .HasForeignKey(d => d.QuestionId)
                .HasConstraintName("FK__IncomeDet__Quest__2EDAF651");
        });

        modelBuilder.Entity<InsuranceDetail>(entity =>
        {
            entity.HasKey(e => e.InsuranceId).HasName("PK__Insuranc__58B60F458F92A27F");

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
                .HasConstraintName("FK__Insurance__form___3F115E1A");
        });

        modelBuilder.Entity<InvestmentAssetDetail>(entity =>
        {
            entity.HasKey(e => e.InvestmentAssetDetailsId).HasName("PK__Investme__9BA8E40B6DC2755A");

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
                .HasConstraintName("FK__Investmen__form___41EDCAC5");
        });

        modelBuilder.Entity<LiabilitiesDetail>(entity =>
        {
            entity.HasKey(e => e.LiabilitiesDetailsId).HasName("PK__Liabilit__A2A7927A55ECDEC1");

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
                .HasConstraintName("FK__Liabiliti__form___44CA3770");
        });

        modelBuilder.Entity<LifeStyleAssetDetail>(entity =>
        {
            entity.HasKey(e => e.LifeStyleAssetDetailsId).HasName("PK__LifeStyl__E73F105B0A899DE3");

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
                .HasConstraintName("FK__LifeStyle__form___47A6A41B");
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
                .HasConstraintName("FK__PlannedEx__form___7E37BEF6");

            entity.HasOne(d => d.Question).WithMany(p => p.PlannedExpenditures)
                .HasForeignKey(d => d.QuestionId)
                .HasConstraintName("FK__PlannedEx__Quest__160F4887");
        });

        modelBuilder.Entity<ProfessionalAdvisersDetail>(entity =>
        {
            entity.HasKey(e => e.ProfessionalAdvisersDetailsId).HasName("PK__Professi__A755D23FF68D49A8");

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
                .HasConstraintName("FK__Professio__form___4A8310C6");
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
        });

        modelBuilder.Entity<SuperAssetDetail>(entity =>
        {
            entity.HasKey(e => e.SuperAssetDetailsId).HasName("PK__SuperAss__BDB5E4D4D9E3E3B1");

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
                .HasConstraintName("FK__SuperAsse__form___4D5F7D71");
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
