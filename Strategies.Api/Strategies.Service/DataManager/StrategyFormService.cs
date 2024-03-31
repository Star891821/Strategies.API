using Microsoft.EntityFrameworkCore;
using Strategies.Domain.Models;
using Strategies.Service.Interfaces;

namespace Strategies.Service.DataManager
{
    public class StrategyFormService : GenericService<StrategyForm>, IStrategyFormService
    {
        #region Declarations
        protected StrategyDbContext context;
        #endregion
        #region public methods
        public StrategyFormService(StrategyDbContext context) : base(context)
        {
            this.context = context;
        }

        public override async Task<bool> InsertOrUpdate(StrategyForm entity)
        {
            try
            {
                var exist = getbyID(entity.FormId, null);


                if (exist != null)
                {
                    StrategyForm existingEntity = context.Set<StrategyForm>().Local.FirstOrDefault(e => e.FormId == entity.FormId);

                    if (existingEntity == null)
                    {
                        context.Entry(entity).State = EntityState.Modified;
                    }
                    else
                    {
                        context.Entry(existingEntity).CurrentValues.SetValues(entity);
                        if (existingEntity.Customers.Where(x => x.IsPartner == true).Count() > 0
                            && entity.Customers.Where(x => x.IsPartner == true).Count() == 0)
                        {
                            foreach (var customer in existingEntity.Customers.Where(x => x.IsPartner == true))
                            {
                                entity.Customers.Add(customer);
                            }
                        }
                        if (existingEntity.CustomerContactDetails.Where(x => x.IsPartner == true).Count() > 0
                           && entity.CustomerContactDetails.Where(x => x.IsPartner == true).Count() == 0)
                        {
                            foreach (var customer in existingEntity.CustomerContactDetails.Where(x => x.IsPartner == true))
                            {
                                entity.CustomerContactDetails.Add(customer);
                            }
                        }
                        if (existingEntity.EmploymentDetails.Where(x => x.IsPartner == true).Count() > 0
                           && entity.EmploymentDetails.Where(x => x.IsPartner == true).Count() == 0)
                        {
                            foreach (var customer in existingEntity.EmploymentDetails.Where(x => x.IsPartner == true))
                            {
                                entity.EmploymentDetails.Add(customer);
                            }
                        }
                        UpdateChildEntities(existingEntity.Customers, entity.Customers, (a, b) => a.CustomerId == b.CustomerId);
                        UpdateChildEntities(existingEntity.CustomerContactDetails, entity.CustomerContactDetails, (a, b) => a.CustomerContactId == b.CustomerContactId);
                        UpdateChildEntities(existingEntity.CashFlowRequirements, entity.CashFlowRequirements, (a, b) => a.CashflowId == b.CashflowId);
                        UpdateChildEntities(existingEntity.PlannedExpenditures, entity.PlannedExpenditures, (a, b) => a.PlannedExpenditureId == b.PlannedExpenditureId);
                        UpdateChildEntities(existingEntity.ExpectedFutureInflows, entity.ExpectedFutureInflows, (a, b) => a.ExpectedFutureInflowsId == b.ExpectedFutureInflowsId);
                        UpdateChildEntities(existingEntity.IncomeDetails, entity.IncomeDetails, (a, b) => a.IncomeDetailsId == b.IncomeDetailsId);
                        UpdateChildEntities(existingEntity.ExpenseDetails, entity.ExpenseDetails, (a, b) => a.ExpenseDetailsId == b.ExpenseDetailsId);
                        UpdateChildEntities(existingEntity.EmploymentDetails, entity.EmploymentDetails, (a, b) => a.EmpId == b.EmpId);
                        UpdateChildEntities(existingEntity.LifeStyleAssetDetails, entity.LifeStyleAssetDetails, (a, b) => a.LifeStyleAssetDetailsId == b.LifeStyleAssetDetailsId);
                        UpdateChildEntities(existingEntity.InvestmentAssetDetails, entity.InvestmentAssetDetails, (a, b) => a.InvestmentAssetDetailsId == b.InvestmentAssetDetailsId);
                        UpdateChildEntities(existingEntity.LiabilitiesDetails, entity.LiabilitiesDetails, (a, b) => a.LiabilitiesDetailsId == b.LiabilitiesDetailsId);
                        UpdateChildEntities(existingEntity.SuperAssetDetails, entity.SuperAssetDetails, (a, b) => a.SuperAssetDetailsId == b.SuperAssetDetailsId);
                        UpdateChildEntities(existingEntity.InsuranceDetails, entity.InsuranceDetails, (a, b) => a.InsuranceId == b.InsuranceId);
                        UpdateChildEntities(existingEntity.DependantsDetails, entity.DependantsDetails, (a, b) => a.DependantsDetailsId == b.DependantsDetailsId);
                        UpdateChildEntities(existingEntity.EstatePlannings, entity.EstatePlannings, (a, b) => a.EstatePlanningId == b.EstatePlanningId);
                        UpdateChildEntities(existingEntity.AssociatedStructures, entity.AssociatedStructures, (a, b) => a.AssociatedStructuresId == b.AssociatedStructuresId);
                        UpdateChildEntities(existingEntity.ProfessionalAdvisersDetails, entity.ProfessionalAdvisersDetails, (a, b) => a.ProfessionalAdvisersDetailsId == b.ProfessionalAdvisersDetailsId);


                    }
                }
                else
                {
                    await base.InsertOrUpdate(entity);
                }

                return true;
            }
            catch (Exception ex)
            {
                // Log or handle the specific exception
                return false;
            }
        }

        private void UpdateChildEntities<T>(ICollection<T> existingCollection, ICollection<T> updatedCollection, Func<T, T, bool> areEqual)
    where T : class
        {
            if (existingCollection.Count == 0 && updatedCollection.Count > 0)
            {
                foreach (var updatedItem in updatedCollection)
                {
                    context.Entry(updatedItem).State = EntityState.Added;
                }
            }
            else
            {
                // Delete functionality
                var itemsToRemove = existingCollection
                .Where(existingItem => !updatedCollection.Any(updatedItem => areEqual(existingItem, updatedItem)))
                .ToList();

                foreach (var itemToRemove in itemsToRemove)
                {
                    context.Entry(itemToRemove).State = EntityState.Deleted;
                    existingCollection.Remove(itemToRemove);
                }

                // Update and add new
                foreach (var updatedItem in updatedCollection)
                {
                    var existingItem = existingCollection.FirstOrDefault(e => areEqual(e, updatedItem));

                    if (existingItem != null)
                    {
                        context.Entry(existingItem).CurrentValues.SetValues(updatedItem);
                    }
                    else
                    {
                        existingCollection.Add(updatedItem);
                        context.Entry(updatedItem).State = EntityState.Added;
                    }
                }
            }
          
        }

        private void UpdateSiblingEntities<T>(ICollection<T> existingCollection, ICollection<T> updatedCollection, Func<T, T, bool> areEqual)
   where T : class
        {
            // add new
            foreach (var updatedItem in updatedCollection)
            {
                existingCollection.Add(updatedItem);
                context.Entry(updatedItem).State = EntityState.Added;
            }
        }
        public override async Task<StrategyForm?> GetById(int id)
        {
            try
            {
                return getbyID(id, null);
            }
            catch
            {
                return null;
            }
        }
        public override async Task<List<StrategyForm>> GetAll()
        {
            return await dbSet.Include(a => a.Customers)
                .Include(a => a.CustomerContactDetails)
                .Include(a => a.CashFlowRequirements)
                .Include(a => a.PlannedExpenditures)
                .Include(a => a.ExpectedFutureInflows)
                .ToListAsync();
        }

        public override async Task<List<StrategyForm>> GetbyUserId(int userId)
        {
            return await dbSet.Where(a => a.CreatedBy == userId)
                 .Include(a => a.Customers)
                 .Include(a => a.CustomerContactDetails)
                 .Include(a => a.CashFlowRequirements)
                 .Include(a => a.PlannedExpenditures)
                 .Include(a => a.ExpectedFutureInflows)
                 .ToListAsync();
        }

        private StrategyForm getbyID(int? id, int? UserId, bool userWise = false)
        {
            var admissionForm = new StrategyForm();
            try
            {
                if (userWise)
                {
                    admissionForm = dbSet.Where(x => x.CreatedBy == UserId && x.FormId == id).FirstOrDefault();
                }
                else
                {
                    admissionForm = dbSet.Where(x => x.FormId == id).FirstOrDefault();
                }
                if (admissionForm != null)
                {
                    dbSet.Entry(admissionForm).Collection(adm => adm.Customers).Load();
                    dbSet.Entry(admissionForm).Collection(adm => adm.CustomerContactDetails).Load();
                    dbSet.Entry(admissionForm).Collection(adm => adm.CashFlowRequirements).Load();
                    dbSet.Entry(admissionForm).Collection(adm => adm.PlannedExpenditures).Load();
                    dbSet.Entry(admissionForm).Collection(adm => adm.ExpectedFutureInflows).Load();
                    dbSet.Entry(admissionForm).Collection(adm => adm.IncomeDetails).Load();
                    dbSet.Entry(admissionForm).Collection(adm => adm.ExpenseDetails).Load();
                    dbSet.Entry(admissionForm).Collection(adm => adm.EmploymentDetails).Load();
                    dbSet.Entry(admissionForm).Collection(adm => adm.LifeStyleAssetDetails).Load();
                    dbSet.Entry(admissionForm).Collection(adm => adm.InvestmentAssetDetails).Load();
                    dbSet.Entry(admissionForm).Collection(adm => adm.LiabilitiesDetails).Load();
                    dbSet.Entry(admissionForm).Collection(adm => adm.SuperAssetDetails).Load();
                    dbSet.Entry(admissionForm).Collection(adm => adm.InsuranceDetails).Load();
                    dbSet.Entry(admissionForm).Collection(adm => adm.DependantsDetails).Load();
                    dbSet.Entry(admissionForm).Collection(adm => adm.EstatePlannings).Load();
                    dbSet.Entry(admissionForm).Collection(adm => adm.AssociatedStructures).Load();
                    dbSet.Entry(admissionForm).Collection(adm => adm.ProfessionalAdvisersDetails).Load();
                    // dbSet.Entry(admissionForm).Collection(adm => adm.Disasquentionnaires).Load();
                }

            }
            catch (Exception ex)
            {
                throw ex;
            }
            return admissionForm;
        }

        #endregion
    }
}
