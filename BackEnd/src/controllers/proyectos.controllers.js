import {pool} from '../databases/BD_Connection.js';

export const getProyecto = async(req,res)=>{
    try{
        const {proyecto_id} = req.body;

        const {rows} = await pool.query(`SELECT p.pro_id, p.pro_nombre, p.pro_fecha_ini, p.pro_fecha_fin,
		                                p.pro_fk_po_id, e.*, a.*
                                    FROM proyecto p, etapa_ej e, actividad_ej a
                                    WHERE p.pro_id = e.fk_pro_id
                                    AND e.etej_id = a.fk_etej_id
                                    AND p.pro_id = $1`,[proyecto_id]);

        return res.status(200).json(rows);
    }catch(error){
        return res.status(500).json(error);
    }
}