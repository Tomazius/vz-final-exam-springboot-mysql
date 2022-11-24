package lt.viltiesziedas.filmai.model.entity;

import javax.persistence.*;
import java.util.Collection;

@Entity
public class Privilegijos {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String pavadinimas;

    @ManyToMany(mappedBy = "privilegijos")
    private Collection<Role> roles;

    public Privilegijos() {
    }

    public Privilegijos(int id, String pavadinimas, Collection<Role> roles) {
        this.id = id;
        this.pavadinimas = pavadinimas;
        this.roles = roles;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPavadinimas() {
        return pavadinimas;
    }

    public void setPavadinimas(String pavadinimas) {
        this.pavadinimas = pavadinimas;
    }

    public Collection<Role> getRoles() {
        return roles;
    }

    public void setRoles(Collection<Role> roles) {
        this.roles = roles;
    }

    @Override
    public String toString() {
        return "Privilegijos{" +
                "id=" + id +
                ", pavadinimas='" + pavadinimas + '\'' +
                ", roles=" + roles +
                '}';
    }
}
