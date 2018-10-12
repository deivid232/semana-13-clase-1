class SalesController < ApplicationController
  attr_accessor :values, :discount
  def new
    @sale = Sale.new
  end
  def create
    @sale = Sale.new(post_params)
  #   @discount = discount
  #   @values =  values
  #
  #   a = @values(@discount*0.01)
  #
  #     @sale.save
  #   redirect_to sales_path
  # end
  private
  def post_params
  params.require(:sale).permit(:cod, :detail, :category, :value, :discount, :tax)
  end
end
end

# El método sales#create debe recibir los parámetros desde el
# formulario y realizar las siguientes instrucciones:
#
# Aplicar el descuento al valor.
#
# Aplicar impuesto al valor resultante para obtener el total:
#
# Si el checkbox NO no fue seleccionado, se debe aplicar un
# impuesto de 19% al valor obtenido después de aplicar el
# descuento y el registro debe ser almacenado con un tax = 19.
#
# Si el checkbox SI no fue seleccionado. Se debe
# omitir este paso y el registro se almacenará con un tax = 0.
#
# Almacenar un nuevo registro de venta.
#
# Crear la ruta, el método y la vista para la página
# de redirección (sales#done).
#
# El método sales#create debe redirigir a sales/done.
# Hint: utiliza el prefijo que arroja rake routes.
#
# La vista done.html.erb debe mostrar un mensaje
# "El registro fue almacenado con éxito!" y luego
# listar en una tabla todos los campos del registro
# ingresado. Finalmente añadir un link 'Volver' que
# apunte a la vista del formulario.
