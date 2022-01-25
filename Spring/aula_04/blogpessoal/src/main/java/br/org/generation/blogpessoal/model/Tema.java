package br.org.generation.blogpessoal.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name = "tb_temas")
public class Tema{
	    
	    @Id	
		@GeneratedValue(strategy = GenerationType.IDENTITY)
		private long id;
		
		@NotNull(message = "O atributo Descrição deve ser obrigatório")
		private String descricao;
		
		/**
		 *  A Annotation @OneToMany(mappedBy = "tema", cascade = CascadeType.ALL): indica 
		 *  que a Classe Tema terá um relacionamento do tipo One To Many (Um para Muitos) com a Classe 
		 *  Tema
		 *  
		 *  mappedBy = "tema": Indica qual Objeto seráutilizado como "chave estrangeira" no relacionamento,
		 *  em nosso exemplo será o objeto tema inserido na Classe Postagem
		 * 
		 *  cascade = CascadeType.ALL: Indica que toda e qualquer mudança efetuada num objeto da Classe 
		 *  Tema se propagará para todos os respectivos objetos associados.
		 *  Exemplo: Se eu apagar um tema, todas as postagens associadas ao tema apagado também serão apagadas.
		 * 
		 *  @JsonIgnoreProperties("postagem"): Annotation (Anotação), que desabilita a recursividade
		 *  infinita durante a exibição dos dados no formato JSON
		 *  
		 *  private List<Postagem> postagem: Collection do tipo List composta por Objetos do tipo Postagem 
		 *  que listará todas as postagens associadas com os respectivos temas
		 */
		@OneToMany(mappedBy = "tema", cascade = CascadeType.ALL)
		@JsonIgnoreProperties("tema")
		private List<Postagem> postagem;
		
		public long getId() {
			return id;
		}

		public void setId(long id) {
			this.id = id;
		}

		public String getDescricao() {
			return descricao;
		}

		public void setDescricao(String descricao) {
			this.descricao = descricao;
		}

		public List<Postagem> getPostagem() {
			return postagem;
		}

		public void setPostagem(List<Postagem> postagem) {
			this.postagem = postagem;
		}
		
		
}