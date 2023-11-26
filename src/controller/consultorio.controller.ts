import { RequestHandler } from 'express'
import { Consultorio } from '../models/consultorio.model'

//RequestHandler trae los tipos, no se debe especificar tipos en req, y res
export const getConsultorios: RequestHandler = async (req, res) => {
  try {
    const consultorio = await Consultorio.findAll()

      res.status(200).json({
        message: 'Operación exitosa',
        data: consultorio
      })
  } catch (error) {
    const err = error as Error
    res.status(500).json({
      message: 'Error al obtener los Consultorios',
      error: err.message
    })
  }
}

export const getConsultorioById: RequestHandler = async (req, res) => {
  try {
    const consultorio = await Consultorio.findByPk(req.params.id)

    if(consultorio) {
      res.status(200).json({
        message: 'Consultorio encontrado',
        data: consultorio
      })
    } else {
      res.status(404).json({
        message: 'Consultorio no encontrado'
      })
    }
  } catch (error:any) {
    res.status(500).json({
      message: 'Error al obtener los Consultorio',
      error: error.message
    })
  }
}

export const createConsultorio: RequestHandler = async (req, res) => {
  try {
    // Validar datos antes de crear el paciente
    const { Numero_consultorio, Descripcion_consultorio } = req.body;

    if (!Numero_consultorio || !Descripcion_consultorio) {
      return res.status(400).json({ message: 'Todos los campos son requeridos.' });
    }

    const consultorio = await Consultorio.create(req.body);

    res.status(201).json({
      message: 'consultorio creado!',
      data: consultorio
    });
  } catch (error) {
    const err = error as Error;
    res.status(500).json({
      message: 'No se pudo crear el consultorio',
      error: err.stack
    });
  }
};

export const updateConsultorio: RequestHandler = async (req, res) => {
  try {
    const consultorio = await Consultorio.findByPk(req.params.id)

    if(consultorio){
      await Consultorio.update(req.body, {
        where: {
          Numero_consultorio: req.params.id
        }
      })
      res.status(200).json({
        message: 'consultorio actualizado'
      })
    } else {
      res.status(404).json({
        message: 'consultorio no existe'
      })
    }
  } catch (error:any) {
    res.status(500).json({
      message: 'Error en el consultorio modificado',
      error: error.message
    })
  }
}

export const deleteConsultorio: RequestHandler = async (req, res) => {
  try {
    const consultorio = await Consultorio.findByPk(req.params.id)

    if(consultorio){
      await Consultorio.destroy({
        where: {
          Numero_consultorio: req.params.id
        }
      })
      res.status(200).json({
        message: 'consultorio eliminado'
      })
    } else {
      res.status(404).json({
        message: 'consultorio no existe'
      })
    }
  } catch (error:any) {
    res.status(500).json({
      message: 'Error al eliminar el consultorio',
      error: error.message
    })
  }
}