//using Microsoft.EntityFrameworkCore;
//using Strategies.Domain.Models;
//using Strategies.Service.Interfaces;
//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Text;
//using System.Threading.Tasks;

//namespace Strategies.Service.DataManager
//{
//    public class PartnerService : GenericService<Partner>, IPartnerService
//    {
//        public PartnerService(StrategyDbContext context) : base(context) { }
//        public bool Delete(int id)
//        {
//            throw new NotImplementedException();
//        }

//        public List<Partner>? GetAll()
//        {
//            //using (var dbContext = new StrategyDbContext())
//            //{
//            //    return dbContext.Partners.ToList();
//            //}
//        }

//        public Partner? GetById(int id)
//        {
//            //using (var dbContext = new StrategyDbContext())
//            //{
//            //    return dbContext.Partners.Where(c => c.PartnerId == id).FirstOrDefault();
//            //}
//        }

//        private Partner getbyID(int id)
//        {
//            var admissionForm = new Partner();
//            try
//            {

//                admissionForm = dbSet.Where(x => x.PartnerId == id).FirstOrDefault();


//            }
//            catch (Exception ex)
//            {
//                throw ex;
//            }
//            return admissionForm;
//        }
//        public bool InsertOrUpdate(Partner entity)
//        {

//            try
//            {
//                var exist = getbyID(entity.PartnerId);


//                if (exist != null)
//                {
//                    Partner existingEntity = context.Set<Partner>().Local.FirstOrDefault(e => e.PartnerId == entity.PartnerId);

//                    if (existingEntity == null)
//                    {
//                        context.Entry(entity).State = EntityState.Modified;
//                    }
//                    else
//                    {
//                        context.Entry(existingEntity).CurrentValues.SetValues(entity);

//                    }
//                }

//                return true;
//            }
//            catch (Exception ex)
//            {
//                // Log or handle the specific exception
//                return false;
//            }
//            return true;
//        }

//    }
//}
