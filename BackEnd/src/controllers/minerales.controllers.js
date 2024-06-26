import {pool} from '../databases/BD_Connection.js';

/*

* GET: Mineral --> Actualizar Procesos

*/

export const getMinerales = async (req, res) => {

    try {
      const {rows} = await pool.query(`
        select min_id as id, min_nombre as nombre, met_tipo_metal as  tipometal, 
        min_tipo as tipomineral, min_medicion as medicion, min_formula_quimica as form_quimica, 
        min_pureza_ideal as pur_ideal, met_maleabilidad as maleabilidad,
        met_dureza as dureza, nmet_aislante as aislante
        from mineral
      `);
      
      return !rows.length ? res.status(200).json({ message: "No hay Minerales" }) : res.status(200).json(rows);
    } catch (error) {
      return res.status(500).json(error);
    }
  
};


/*

* Create: Mineral --> Actualizar Procesos
*/
export const createMineral = async (req,res)=>{
  try{
    const {nombre,medicion,formulaQ,pureza,maleabilidad,dureza,tipo_metal,aislante,min_tipo} = req.body;

    await pool.query(`INSERT INTO MINERAL (min_nombre,min_medicion,min_formula_quimica,min_pureza_ideal,
                                            met_maleabilidad,met_dureza,met_tipo_metal,nmet_aislante,min_tipo)
                      VALUES($1,$2,$3,$4,$5,$6,$7,$8,$9)`,[nombre,medicion,formulaQ,
                                                          pureza,maleabilidad,dureza,tipo_metal,
                                                          aislante,min_tipo]);

      res.status(201).json({message: "mineral creado"});
  }catch(error){
    return res.status(500).json(error);
  }

};

export const eliminarMineral = async (req, res) => {
    try{
      const {id} = req.params;

        await pool.query('CALL eliminar_mineral($1)',[id]);

        return res.status(200).json({ message: 'Mineral eliminado correctamente' });
    }catch(error){
       // Verifica si el error es específico del procedimiento almacenado
       if (error.code === 'P0001') {
        // Captura el mensaje de error y envía una respuesta personalizada
        const errorMessage = error.message; // Puedes ajustar esto según el formato que desees
        return res.status(404).json({ error: errorMessage });
    } else {
        // Otra excepción no relacionada con el procedimiento almacenado
        return res.status(500).json({ error: 'Error al eliminar el mineral' });
    }
    }
};  