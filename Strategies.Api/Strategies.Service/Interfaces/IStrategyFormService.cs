﻿using Strategies.Domain.Models;

namespace Strategies.Service.Interfaces
{
    public interface IStrategyFormService : ICommonService<StrategyForm>
    {
        byte[] GenerateStrategy(int formId);
    }
}
