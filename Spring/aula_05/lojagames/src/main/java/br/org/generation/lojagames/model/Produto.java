package br.org.generation.lojagames.model;

import java.math.BigDecimal;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Positive;
import javax.validation.constraints.Size;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity                                             		
@Table(name = "tb_produtos")	
public class Produto {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY) 
	private long id;
	
	@NotNull(message = "Nome é obrigatório!")                                       										
	private String nome;
	
	@Size(max=500)
	private String descricao;
	
	@NotNull(message = "Console é obrigatório!")
	private String console;
	
	private int quantidade;
	
	@JsonFormat(shape = JsonFormat.Shape.STRING)
	@NotNull(message = "Preço é obrigatório!")
	@Positive(message = "O preço deve ser maior do que zero!")
	private BigDecimal preco;
	
	private String foto;

	@ManyToOne
	@JsonIgnoreProperties("produto")
	private Categoria categoria;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public String getConsole() {
		return console;
	}

	public void setConsole(String console) {
		this.console = console;
	}

	public int getQuantidade() {
		return quantidade;
	}

	public void setQuantidade(int quantidade) {
		this.quantidade = quantidade;
	}

	public BigDecimal getPreco() {
		return preco;
	}

	public void setPreco(BigDecimal preco) {
		this.preco = preco;
	}

	public String getFoto() {
		return this.foto;
	}

	public void setFoto(String foto) {
		this.foto = foto;
	}

	public Categoria getCategoria() {
		return categoria;
	}

	public void setCategoria(Categoria categoria) {
		this.categoria = categoria;
	}

}