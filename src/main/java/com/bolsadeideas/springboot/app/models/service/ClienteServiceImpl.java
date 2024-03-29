package com.bolsadeideas.springboot.app.models.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bolsadeideas.springboot.app.models.dao.IClienteDao;
import com.bolsadeideas.springboot.app.models.dao.IFacturaDao;
import com.bolsadeideas.springboot.app.models.dao.IProductoDao;
import com.bolsadeideas.springboot.app.models.entity.Cliente;
import com.bolsadeideas.springboot.app.models.entity.Factura;
import com.bolsadeideas.springboot.app.models.entity.Producto;


@Service
public class ClienteServiceImpl implements IClienteService{

	@Autowired
	private IClienteDao clienteDao;
	@Autowired
	private IProductoDao productoDao;
	
	@Autowired
	private IFacturaDao facturaDao;

	@Override
	@Transactional(readOnly = true)
	public List<Cliente> findAll() {
		// TODO Auto-generated method stub
		return (List<Cliente>) clienteDao.findAll();
	}

	@Override
	@Transactional
	public void save(Cliente cliente) {
		clienteDao.save(cliente);
		
	}

	@Override
	@Transactional(readOnly = true)
	public Cliente findOne(Long id) {
	
		return clienteDao.findOne(id);
	}

	@Override
	@Transactional
	public void delete(Long id) {
		clienteDao.delete(id);
		
	}

	@Override
	public Page<Cliente> findAll(Pageable pageable) {
		
		return clienteDao.findAll(pageable);
	}

	@Override
	public List<Producto> findByNombre(String term) {
		
		return productoDao.findByNombre(term);
	}

	@Override
	@Transactional
	public void saveFactura(Factura factura) {
		
		facturaDao.save(factura);
	}

	@Override
	public Producto findProductoById(Long id) {
		
		return productoDao.findOne(id);
		
	}

	


	

	


	}


