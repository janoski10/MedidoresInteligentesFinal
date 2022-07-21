using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MedidorModel.DAL
{
    public class MedidorDALDB : IMedidorDAL
    {
        private medidores_BDEntities medidorDB = new medidores_BDEntities();

        public void AgregarMedidor(medidor medidor)
        {
            this.medidorDB.medidors.Add(medidor);
            this.medidorDB.SaveChanges();
        }

        public void EliminarMedidor(int id)
        {
            medidor medidor = this.medidorDB.medidors.Find(id);
            this.medidorDB.medidors.Remove(medidor);
            this.medidorDB.SaveChanges();
        }

        public medidor Obtener(int id)
        {
            return this.medidorDB.medidors.Find(id);
        }

        public void Actualizar(medidor m)
        {
            medidor medidor = this.medidorDB.medidors.Find(m.id_medidor);
            medidor.fecha = m.fecha;
            medidor.valor_consumo = m.valor_consumo;
            medidor.nombre = m.nombre;
            this.medidorDB.SaveChanges();
        }

        public List<medidor> ObtenerMedidor()
        {
            return this.medidorDB.medidors.ToList();
        }
    }
}
