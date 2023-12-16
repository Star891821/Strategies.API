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
            CreateMap<CustomerContactDetail, CustomerContactDetailDto>().ReverseMap();
            CreateMap<Partner, PartnerDto>().ReverseMap();
            CreateMap<PartnerContactDetail, PartnerContactDetailDto>().ReverseMap();
        }
    }
}
