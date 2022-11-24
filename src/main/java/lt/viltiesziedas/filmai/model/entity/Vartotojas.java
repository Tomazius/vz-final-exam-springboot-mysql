package lt.viltiesziedas.filmai.model.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import java.util.Collection;
import java.util.Set;

@Entity
public class Vartotojas {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String vardas;
    private String pavarde;
    private String elpastas;

    private String username;

    private String password;
    private boolean enabled;
    private boolean tokenExpired;

    @ManyToMany
    @JoinTable(
            name = "roles",
            joinColumns = @JoinColumn(name = "user_id", referencedColumnName = "id"),
            inverseJoinColumns =  @JoinColumn(name = "role_id", referencedColumnName = "id")
    )
    private Collection<lt.viltiesziedas.filmai.model.entity.Role> roles;

    @JsonIgnore
    @OneToMany(mappedBy = "vartotojoKomentaras")
    private Set<Komentaras> vartotojoKomentarai;

    public Vartotojas() {
    }

    public Vartotojas(int id, String username, Set<Komentaras> vartotojoKomentarai, String vardas, String pavarde, String elpastas, String password, boolean enabled, boolean tokenExpired, Collection<lt.viltiesziedas.filmai.model.entity.Role> roles) {
        this.id = id;
        this.username = username;
        this.vartotojoKomentarai = vartotojoKomentarai;
        this.vardas = vardas;
        this.pavarde = pavarde;
        this.elpastas = elpastas;
        this.password = password;
        this.enabled = enabled;
        this.tokenExpired = tokenExpired;
        this.roles = roles;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Set<Komentaras> getVartotojoKomentarai() {
        return vartotojoKomentarai;
    }

    public void setVartotojoKomentarai(Set<Komentaras> vartotojoKomentarai) {
        this.vartotojoKomentarai = vartotojoKomentarai;
    }

    public String getVardas() {
        return vardas;
    }

    public void setVardas(String vardas) {
        this.vardas = vardas;
    }

    public String getPavarde() {
        return pavarde;
    }

    public void setPavarde(String pavarde) {
        this.pavarde = pavarde;
    }

    public String getElpastas() {
        return elpastas;
    }

    public void setElpastas(String elpastas) {
        this.elpastas = elpastas;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }

    public boolean isTokenExpired() {
        return tokenExpired;
    }

    public void setTokenExpired(boolean tokenExpired) {
        this.tokenExpired = tokenExpired;
    }

    public Collection<Role> getRoles() {
        return roles;
    }

    public void setRoles(Collection<Role> roles) {
        this.roles = roles;
    }

    @Override
    public String toString() {
        return "Vartotojas{" +
                "id=" + id +
                ", vardas='" + vardas + '\'' +
                ", pavarde='" + pavarde + '\'' +
                ", elpastas='" + elpastas + '\'' +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", enabled=" + enabled +
                ", tokenExpired=" + tokenExpired +
                ", roles=" + roles +
                ", vartotojoKomentarai=" + vartotojoKomentarai +
                '}';
    }
}

