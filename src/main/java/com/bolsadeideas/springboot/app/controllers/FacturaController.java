package com.bolsadeideas.springboot.app.controllers;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import com.bolsadeideas.springboot.app.models.entity.Cliente;
import com.bolsadeideas.springboot.app.models.entity.Factura;
import com.bolsadeideas.springboot.app.models.entity.ItemFactura;
import com.bolsadeideas.springboot.app.models.entity.Producto;
import com.bolsadeideas.springboot.app.models.service.IClienteService;

@Controller
@RequestMapping("/factura")
@SessionAttributes("factura")
public class FacturaController {
	
	@Autowired
	private IClienteService clienteService;

	@GetMapping("/form/{clienteId}")

	public String crear(@PathVariable(value = "clienteId") Long clienteId,
			Map<String, Object> model,
			RedirectAttributes flash) {

		Cliente cliente = clienteService.findOne(clienteId);
		if (cliente == null) {
			flash.addFlashAttribute("error", "No hay cliente ");
			return "redirect:/listar";
			
		}
		Factura factura =new Factura();
		factura.setCliente(cliente);
		model.put("factura", factura);
		model.put("titulo", "Crear Factura");
				
		return "factura/form";
	}
	
	@GetMapping(value="/cargar-productos/{term}", produces={"application/json"})
	public @ResponseBody List<Producto> cargaProductos(@PathVariable String term){
		
		return clienteService.findByNombre(term);
	}

	@PostMapping("/form")
	public String guardar(Factura factura,
	@RequestParam(name="item_id[]", required= false )Long[] itemId,
	@RequestParam(name="cantidad[]",required= false) Integer[] cantidad,
	RedirectAttributes flash, SessionStatus status)
	{
		for(int i=0; i<itemId.length; i++) {
			Producto producto =clienteService.findProductoById(itemId[i]);
			
			ItemFactura linea= new ItemFactura();
			linea.setCantidad(cantidad[i]);
			linea.setProducto(producto);
			factura.addItemFactura(linea);
			
			
		}
		
		clienteService.saveFactura(factura);
		
		status.setComplete();
		flash.addFlashAttribute("success", "Factura creada correctamente");
		
	
		return "redirect:/ver/" + factura.getCliente().getId();
		
		
	}
	
}
