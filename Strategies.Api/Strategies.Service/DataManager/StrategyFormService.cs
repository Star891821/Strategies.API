using iText.Kernel.Pdf;
using iText.Layout.Element;
using Microsoft.EntityFrameworkCore;
using Strategies.Domain.Models;
using Strategies.Service.Interfaces;
using System.Collections.Generic;
using System.Globalization;
using System.Reflection.Metadata;
using iText.Layout;
using Microsoft.EntityFrameworkCore.Metadata.Internal;
using iText.Layout.Properties;

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
                IQueryable<StrategyForm> query = dbSet;
                if (userWise)
                {
                    query = query.Where(x => x.CreatedBy == UserId && x.FormId == id);
                }
                else
                {
                    query = query.Where(x => x.FormId == id);
                }

                // Include related entities
                query = query
                    .Include(adm => adm.Customers)
                    .Include(adm => adm.CustomerContactDetails)
                    .Include(adm => adm.CashFlowRequirements)
                    .Include(adm => adm.PlannedExpenditures)
                    .Include(adm => adm.ExpectedFutureInflows)
                    .Include(adm => adm.IncomeDetails)
                    .Include(adm => adm.ExpenseDetails)
                    .Include(adm => adm.EmploymentDetails)
                    .Include(adm => adm.LifeStyleAssetDetails)
                    .Include(adm => adm.InvestmentAssetDetails)
                    .Include(adm => adm.LiabilitiesDetails)
                    .Include(adm => adm.SuperAssetDetails)
                    .Include(adm => adm.InsuranceDetails)
                    .Include(adm => adm.DependantsDetails)
                    .Include(adm => adm.EstatePlannings)
                    .Include(adm => adm.AssociatedStructures)
                    .Include(adm => adm.ProfessionalAdvisersDetails);

                return query.FirstOrDefault();
            }
            catch (Exception ex)
            {
                // Handle exception appropriately (e.g., log it)
                throw ex;
            }
        }

        public byte[] GenerateStrategy(int formId)
        {
            var result = this.getbyID(formId, null);
            if (result != null)
            {
                if (result.Customers != null && result.Customers.Any())
                {
                    var dob = result.Customers.First().Dob;
                    int age = CalculateAge(dob);

                    // 1. Life Insurance Review

                    // Create a new PDF document
                    string outputFilePath = @"D:\MyProjects\MeritZeal\Code\Strategies.Api\StrategyReview.pdf";
                    PdfDocument pdfDocument = new PdfDocument(new PdfWriter(outputFilePath));
                    iText.Layout.Document document = new iText.Layout.Document(pdfDocument);
                    if (age <= 70)
                    {
                        var srlifeinsurance = context.SrLifeInsurances.FirstOrDefault();
                        GenerateLifeInsuranceReview(result, pdfDocument, document, srlifeinsurance);
                    }

                    if (age <= 65)
                    {
                        var srTpdinsurances = context.SrTpdinsurances.FirstOrDefault();
                        GenerateTPDInsuranceReview(result, pdfDocument, document, srTpdinsurances);
                    }

                    // Close the document
                    document.Close();
                }
            }
            return null;
        }

        private void GenerateLifeInsuranceReview(StrategyForm result, PdfDocument pdfDocument, iText.Layout.Document document, SrLifeInsurance srLifeInsurance)
        {       
            // Add content to the PDF
            Paragraph header = new Paragraph(srLifeInsurance.StrategyName + " Review")
                .SetTextAlignment(iText.Layout.Properties.TextAlignment.CENTER)
                .SetFontSize(18);

            Paragraph clientInfo = new Paragraph($"\"{result.Customers.First().FirstName}\"" + " " + srLifeInsurance.LifeInsuranceReview)
                .SetMarginTop(20);

            Paragraph additionalConditions = new Paragraph("Additional Conditions:")
                .SetBold()
                .SetMarginTop(10);

            string[] conditions = srLifeInsurance.AdditionalConditions.Split(new string[] { "\\n" }, StringSplitOptions.RemoveEmptyEntries);
            List list = new List()
                .SetMarginTop(10);

            list.SetListSymbol("");
            list.SetSymbolIndent(0);

            foreach (string condition in conditions)
            {
                list.Add(new ListItem(condition.Trim()));
            }

            Paragraph notes = new Paragraph("NOTES:")
                .SetBold()
                .SetMarginTop(10);

            List notesList = new List()
               .SetMarginTop(10);

            notesList.SetListSymbol("");
            string[] srnotes = srLifeInsurance.Notes.Split(new string[] { "\\n" }, StringSplitOptions.RemoveEmptyEntries);

            foreach (string note in srnotes)
            {
                notesList.Add(new ListItem(note.Trim()));
            }

            Paragraph references = new Paragraph("References:")
                .SetBold()
                .SetMarginTop(10);

            string[] srreferences = srLifeInsurance.SrReferences.Split(new string[] { "," }, StringSplitOptions.RemoveEmptyEntries);
            List referencesList = new List()
                .SetMarginTop(10);

            //referencesList.SetListSymbol("•");
            //referencesList.SetSymbolIndent(0);

            foreach (string reference in srreferences)
            {
                referencesList.Add(new ListItem(" " + reference.Trim()));
            }

            // Add all elements to the document
            document.Add(header);
            document.Add(clientInfo);
            document.Add(additionalConditions);
            document.Add(list);
            document.Add(notes);
            document.Add(notesList);
            document.Add(references);
            document.Add(referencesList);

        }

        private void GenerateTPDInsuranceReview(StrategyForm result, PdfDocument pdfDocument, iText.Layout.Document document, SrTpdinsurance srTpdinsurance)
        {
            // Add content to the PDF
            Paragraph header = new Paragraph(srTpdinsurance.StrategyName + " Review")
                .SetTextAlignment(iText.Layout.Properties.TextAlignment.CENTER)
                .SetFontSize(18)
                .SetMarginTop(40);

            Paragraph clientInfo = new Paragraph($"\"{result.Customers.First().FirstName}\"" + " " + srTpdinsurance.TpdinsuranceReview)
                .SetMarginTop(20);

            Paragraph additionalConditions = new Paragraph("Additional Conditions:")
                .SetBold()
                .SetMarginTop(10);

            string[] conditions = srTpdinsurance.AdditionalConditions.Split(new string[] { "\\n" }, StringSplitOptions.RemoveEmptyEntries);
            List list = new List()
                .SetMarginTop(10);

            list.SetListSymbol("");
            list.SetSymbolIndent(0);

            foreach (string condition in conditions)
            {
                list.Add(new ListItem(condition.Trim()));
            }

            Paragraph notes = new Paragraph("NOTES:")
                .SetBold()
                .SetMarginTop(10);

            List notesList = new List()
               .SetMarginTop(10);

            //notesList.SetListSymbol("•");
            notesList.SetListSymbol("");
            string[] srnotes = srTpdinsurance.Notes.Split(new string[] { "\\n" }, StringSplitOptions.RemoveEmptyEntries);

            foreach (string note in srnotes)
            {
                notesList.Add(new ListItem(note.Trim()));
            }

            Paragraph references = new Paragraph("References:")
                .SetBold()
                .SetMarginTop(10);

            string[] srreferences = srTpdinsurance.SrReferences.Split(new string[] { "," }, StringSplitOptions.RemoveEmptyEntries);
            List referencesList = new List()
                .SetMarginTop(10);

            //referencesList.SetListSymbol("•");
            //referencesList.SetSymbolIndent(0);

            foreach (string reference in srreferences)
            {
                referencesList.Add(new ListItem(" " + reference.Trim()));
            }

            // Add all elements to the document
            document.Add(header);
            document.Add(clientInfo);
            document.Add(additionalConditions);
            document.Add(list);
            document.Add(notes);
            document.Add(notesList);
            document.Add(references);
            document.Add(referencesList);

            
        }

        #endregion        

        public static int CalculateAge(DateTime dob)
        {
            DateTime today = DateTime.Today;
            int age = today.Year - dob.Year;

            // Check if the date has occurred this year
            if (dob.Date > today.AddYears(-age))
            {
                age--;
            }

            return age;
        }
    }
}
