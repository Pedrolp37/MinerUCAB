import { pool } from "../databases/BD_Connection.js";

//EMPLEADOS
export const getEmpleado = async (req, res) => {
  try {
    const { rows } = await pool.query(`
        SELECT e.emp_identificacion as dni, e.emp_p_nombre as name, e.emp_p_apellido as lastName, e.emp_telefono as numPhone, e.emp_direccion as address, c.carg_nombre as job
        FROM empleado e, cargo c, cargo_empleado ec
        WHERE e.emp_identificacion = ec.caem_fk_emp_identificacion
        AND c.carg_id = ec.caem_fk_carg_id
    `);
    //el emp_identificacion es el id
    if (!rows.length) {
      return res.status(200).json({ message: "No hay empleados" });
    }
    return res.status(200).json(rows);
  } catch (error) {
    return res.status(500).json(error);
  }
};
//CLIENTES

export const getCliente = async (req, res) => {
  try {
    const { rows } = await pool.query(`
      select cl_identificacion as dni, cl_p_nombre as name, 
      cl_p_apellido as lastname, cl_telefono as numphone, cl_direccion as address
      from cliente
    `);
    return !rows.length ? res.status(200).json({ message: "No hay Clientes" }) : res.status(200).json(rows);
  
  } catch (error) {
    return res.status(500).json(error);
  }
}


//############### ALIADO ###############
export const getAliados = async (req, res) => {
  try {
    const { rows } =await pool.query(`
      SELECT ali_rif as rif,ali_nombre as nombre, ali_direccion as direccion, ali_fecha_creacion as fccreacion, 
      ali_capital as capital, ali_num_telefono as numTelefono,ali_descripcion as descripcion
      FROM aliado_comercial
    `);
    if (!rows.length) {
      return res.status(200).json({ message: "No hay aliados en el sistema" });
    }
    return res.status(200).json(rows);
  } catch (error) {
    return res.status(500).json(error);
  }
};

//############### PROYECTOS #################
export const getProjectsProgress = async (req, res) => {
  try {
    const { rows } = await pool.query(`
      SELECT pro_id, pro_nombre, pro_fecha_fin
      FROM proyecto, estatus, pro_estatus
      WHERE pro_id = proes_pro_id AND est_id = proes_est_id AND est_nombre ='Proceso'
      `
    );
    if (!rows.length) {
      return res.status(200).json({ message: "No hay proyectos en progreso" });
    }
    return res.status(200).json(rows);
  } catch (error) {
    return res.json(error);
  }
};

export const getProjects = async (req, res) => {
  try {
    const { status } = req.params;

    const { rows } = await pool.query(`
      SELECT p.pro_id, p.pro_nombre
      FROM proyecto p,estatus e,pro_estatus pe 
      WHERE p.pro_id = pe.proes_pro_id AND e.est_id = pe.proes_est_id
      AND e.est_nombre = $1 AND e.est_tipo = 'Proyecto'
      `, [status]
    );

    if (!rows.length) {
      return res.status(200).json({ message: `No hay proyectos en ${status}` });
    }
    return res.status(200).json(rows);
  } catch (error) {
    return res.status(404).json(error);
  }
};

// CONFIGURACION
export const getMineralsConfiguration = async (req, res) => {
  try {
    const { rows } = await pool.query(`
        SELECT min_id, min_nombre, COUNT(DISTINCT e.et_id) as "numero etapas", COUNT(a.act_id) as "numero actividades"                             
        FROM mineral left join etapa e ON min_id = e.fk_min_id
        left join actividad a ON e.et_id = a.fk_et_id
        GROUP BY min_id, min_nombre
    `);
    if (!rows.length) {
      return res
        .status(200)
        .json({ message: `No hay minerales en el sistema` });
    }
    return res.status(200).json(rows);
  } catch (error) {
    console.error("Error executing query:", error);
    return res.status(500).json(error);
  }
};

//MINERALES
export const getMineralConfig = async (req, res) => {
  try {
    const { id } = req.params;
    //revisar consulta
    /* const {rows} = await pool.query(`SELECT min_id, min_nombre, et_nombre, et_num_etapa, act_nombre, act_prioridad
                                    FROM mineral, etapa, actividad
                                    WHERE min_id = $1 AND min_id = fk_min_id
                                      AND et_id = fk_et_id`,[id]); */
    //Ambas consultas hacen lo mismo, sin embargo no se si la forma en que trae
    //la infomacion es la que se quiere
    const { rows } = await pool.query(
      `select min_id, min_nombre, et_nombre, et_num_etapa, act.act_nombre, act.act_prioridad
                FROM mineral, etapa, (select fk_et_id, act_nombre, act_prioridad
					                     from actividad) as act
                      WHERE min_id = $1
                      AND min_id = fk_min_id
                      AND et_id = act.fk_et_id`,
      [id]
    );
    //falta traer la informacion de carrgos y rrecursos asociados
    if (!rows.length) {
      return res
        .status(200)
        .json({ message: `No hay minerales en el sistema` });
    }
    return res.status(200).json(rows);
  } catch (error) {
    return res.status(500).json(error);
  }
};

export const getMineralName = async (req, res) => {
  try {
    const { name } = req.params;

    const { rows } = await pool.query(
      `SELECT min_id, min_nombre, COUNT(DISTINCT e.et_id) as "numero etapas", COUNT(a.act_id) as "numero actividades"
                                        FROM mineral left join etapa e ON min_id = e.fk_min_id
                                        left join actividad a ON e.et_id = a.fk_et_id
                                        WHERE min_nombre ILIKE $1
                                        GROUP BY min_id, min_nombre`,
      [name]
    );
    if (!rows.length) {
      return res
        .status(200)
        .json({ message: `No hay mineral por nombre: ${name}` });
    }
    return res.status(200).json(rows);
  } catch (error) {
    return res.status(500).json(error);
  }
};






