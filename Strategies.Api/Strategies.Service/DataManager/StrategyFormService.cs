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

                        UpdateChildEntities(existingEntity.Customers, entity.Customers, (a, b) => a.CustomerId == b.CustomerId);
                        UpdateChildEntities(existingEntity.CustomerContactDetails, entity.CustomerContactDetails, (a, b) => a.CustomerContactId == b.CustomerContactId);
                        UpdateChildEntities(existingEntity.Partners, entity.Partners, (a, b) => a.PartnerId == b.PartnerId);
                        UpdateChildEntities(existingEntity.PartnerContactDetails, entity.PartnerContactDetails, (a, b) => a.PartnerContactId == b.PartnerContactId);

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
                .Include(a => a.Partners)
                .Include(a => a.PartnerContactDetails)
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
                    dbSet.Entry(admissionForm).Collection(adm => adm.Partners).Load();
                    dbSet.Entry(admissionForm).Collection(adm => adm.PartnerContactDetails).Load();
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
