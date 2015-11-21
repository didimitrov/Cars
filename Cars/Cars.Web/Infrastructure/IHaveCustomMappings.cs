﻿
namespace Cars.Web.Infrastructure
{
    namespace Peek.Web.Infrastructure.Mapping
    {
        using AutoMapper;

        public interface IHaveCustomMappings
        {
            void CreateMappings(IConfiguration configuration);
        }
    }
}
