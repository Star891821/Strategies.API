﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Strategies.Service.Repository
{
    public interface IGenericService<T>
    {
        List<T>? GetAll();
        T? GetById(int id);
        bool InsertOrUpdate(T entity);
        bool Delete(int id);

    }
}
