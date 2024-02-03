using AutoMapper;
using Strategies.Api.Models.ModelsDto;
using Strategies.Domain.Models;

namespace Strategies.Api.AutoMapper
{
    public class AutoMapperProfile : Profile
    {
        public AutoMapperProfile()
        {
            CreateMap<StrategyForm, StrategyFormDto>().ReverseMap();
            CreateMap<Customer, CustomerDto>().ReverseMap();
           
            CreateMap<LifeStyleAssetDetail, LifeStyleAssetDetailDto>().ReverseMap();
            CreateMap<InvestmentAssetDetail, InvestmentAssetDetailDto>().ReverseMap();
            CreateMap<LiabilitiesDetail, LiabilitiesDetailDto>().ReverseMap();
            CreateMap<SuperAssetDetail, SuperAssetDetailDto>().ReverseMap();
            CreateMap<InsuranceDetail, InsuranceDetailDto>().ReverseMap();
            CreateMap<DependantsDetail, DependantsDetailDto>().ReverseMap();
            CreateMap<EstatePlanning, EstatePlanningDto>().ReverseMap();
            CreateMap<AssociatedStructure, AssociatedStructureDto>().ReverseMap();
            CreateMap<ProfessionalAdvisersDetail, ProfessionalAdvisersDetailDto>().ReverseMap();
          //  CreateMap<Disasquentionnaire, DisasquentionnaireDto>().ReverseMap();
            CreateMap<WillDetail, WillDetailDto>().ReverseMap();

            CreateMap<CustomerContactDetail, CustomerContactDetailDto>().ReverseMap();
            CreateMap<ExpenseDetail, ExpenseDetailDto>().ReverseMap();
            CreateMap<IncomeDetail, IncomeDetailDto>().ReverseMap();
            CreateMap<EmploymentDetail, EmploymentDetailDto>().ReverseMap();
            CreateMap<CashFlowRequirement, CashFlowRequirementDto>().ReverseMap();
            CreateMap<ExpectedFutureInflow, ExpectedFutureInflowDto>().ReverseMap();
            CreateMap<PlannedExpenditure, PlannedExpenditureDto>().ReverseMap();
            CreateMap<MstQuestion, MstQuestionDto>().ReverseMap();
            CreateMap<MstUser, MstUserDto>().ReverseMap();
        }
    }
}
