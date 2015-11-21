using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using AutoMapper;
using Cars.Models;
using Cars.Web.Infrastructure.Peek.Web.Infrastructure.Mapping;

namespace Cars.Web.Models
{
    public class CarInputModel : IMapFrom<Car>
    {
        public int Id { get; set; }

        [Required(ErrorMessage = "Моля, задайте марка")]
        [DisplayName("Марка")]
        [StringLength(50, MinimumLength = 3, ErrorMessage = "Трябва да е между {2} и {1} символа")]
        public string Brand { get; set; }

        [Required(ErrorMessage = "Моля, задайте година")]
        [DisplayName("Година")]
        [Range(1500, 2015, ErrorMessage = "Моля въведете валидна година")]
        public int Year { get; set; }

        [Required(ErrorMessage = "Моля, задайте мощност")]
        [DisplayName("Мощност")]
        [Range(1, 1000, ErrorMessage = "Моля въведете валидна мощност")]
        public int Power { get; set; }

        [Required(ErrorMessage = "Моля, задайте описание")]
        [DisplayName("Описание")]
        [StringLength(50, MinimumLength = 3, ErrorMessage = "Невалидно")]
        [DataType(DataType.MultilineText)]
        public string Description { get; set; }

        [Required(ErrorMessage = "Моля, задайте вносител")]
        [DisplayName("Вносител")]
        [StringLength(50, MinimumLength = 3, ErrorMessage = "Трябва да е между {2} и {1} символа")]
        public string ShipperName { get; set; }

        [ScaffoldColumn(false)]
        public int ShipperId { get; set; }

        public virtual ICollection<Shipper> Shippers { get; set; }

        //public void CreateMappings(IConfiguration configuration)
        //{
        //    configuration.CreateMap<Car, CarInputModel>().ReverseMap()
        //      .ForMember(x => x.ShipperId, options => options.MapFrom(x => x.Shippers.FirstOrDefault(y=>y.Name==ShipperName).Id));
        //}
    }
}