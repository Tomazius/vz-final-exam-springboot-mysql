package lt.viltiesziedas.filmai.model.entity;

import javax.annotation.processing.Generated;
import javax.persistence.*;
import java.util.Collection;

@Entity
public class Role {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String pavadinimas;

    @ManyToMany(mappedBy = "roles")
    private Collection<Vartotojas> vartotojai;

    @ManyToMany
    @JoinTable(
            name = "roliu_privilegijos",
            joinColumns = @JoinColumn(name = "role_id", referencedColumnName = "id"),
            inverseJoinColumns = @JoinColumn(name = "privilegijos_id", referencedColumnName = "id")
    )
    private Collection<Privilegijos> privilegijos;

    public Role() {
    }

    public Role(int id, String pavadinimas, Collection<Vartotojas> vartotojai, Collection<Privilegijos> privilegijos) {
        this.id = id;
        this.pavadinimas = pavadinimas;
        this.vartotojai = vartotojai;
        this.privilegijos = privilegijos;
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

    public Collection<Vartotojas> getVartotojai() {
        return vartotojai;
    }

    public void setVartotojai(Collection<Vartotojas> vartotojai) {
        this.vartotojai = vartotojai;
    }

    public Collection<Privilegijos> getPrivilegijos() {
        return privilegijos;
    }

    public void setPrivilegijos(Collection<Privilegijos> privilegijos) {
        this.privilegijos = privilegijos;
    }

    @Override
    public String toString() {
        return "Role{" +
                "id=" + id +
                ", pavadinimas='" + pavadinimas + '\'' +
                ", vartotojai=" + vartotojai +
                ", privilegijos=" + privilegijos +
                '}';
    }
}
