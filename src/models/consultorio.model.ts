import { Table, Column, Model, DataType, PrimaryKey } from 'sequelize-typescript';

@Table({
  timestamps: false,
  tableName: 'consultorio'
})
export class Consultorio extends Model {
  @Column({
    type: DataType.INTEGER,
    allowNull: false,
    primaryKey: true
  })
  Numero_consultorio!: number

  @Column({
    type: DataType.STRING,
    allowNull: false,
  })
  Descripcion_consultorio!: string

}