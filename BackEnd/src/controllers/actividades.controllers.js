import {pool} from '../databases/BD_Connection.js';


export const deleteActividad = async (req, res)=>{
    try{
    const {actividad_id} = req.params;

    await pool.query('CALL eliminar_actividad($1)',[actividad_id]);

    res.status(200).json({message: "Actividad elimnada correctamente"});
    }catch(error){
        return res.status(500).json({message: error});
    }
};