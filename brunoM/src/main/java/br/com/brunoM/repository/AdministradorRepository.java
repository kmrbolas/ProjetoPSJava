package br.com.brunoM.repository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import br.com.brunoM.model.AdministradorModel;

@Repository
public class AdministradorRepository {
	
	private static final String FIND = "SELECT * FROM USUARIO WHERE ID = ?";
	private static final String FIND_BY_EMAIL = "SELECT * FROM USUARIO WHERE EMAIL = ?";
	private static final String SAVE = "INSERT INTO USUARIO (NOME, EMAIL, SENHA, TIPO) VALUES (?, ?, ?, ?)";
	private static final String UPDATE = "UPDATE USUARIO SET NOME = ?, EMAIL = ?, SENHA = ?, TIPO = ? WHERE ID = ?";
	private static final String DELETE = "DELETE FROM USUARIO WHERE ID = ?";
	
	@Autowired
	public JdbcTemplate jdbcTemplate;
	
	public AdministradorRepository() {
		
	}	
	
	//Método para retornar administrador por ID
	public AdministradorModel findById(Long id) {
		
		AdministradorModel administrador = this.jdbcTemplate.queryForObject(FIND, new BeanPropertyRowMapper<AdministradorModel>(AdministradorModel.class), id);
		
		return administrador;
	}
	
	//Método para retornar administrador por Email
	public AdministradorModel findByEmail(String email) {
		
		AdministradorModel administrador = this.jdbcTemplate.queryForObject(FIND_BY_EMAIL, new BeanPropertyRowMapper<AdministradorModel>(AdministradorModel.class), email);
		
		return administrador;
	}
	
	//Método para inserir um novo administrador no banco de dados
	public void save(AdministradorModel administrador) {
		this.jdbcTemplate.update(SAVE, 
				administrador.getNome(), 
				administrador.getEmail(),
				administrador.getSenha(),
				administrador.getTipo());
	}
	
	//Método para atualizar os dados do administrador
	public void update(AdministradorModel administrador) {
		this.jdbcTemplate.update(UPDATE,
				administrador.getNome(), 
				administrador.getEmail(),
				administrador.getSenha(),
				administrador.getTipo(),
				administrador.getId());
	}
	
	//Método para excluir um administrador
	public void delete(Long id) {
		this.jdbcTemplate.update(DELETE, id);
	}
	
}
