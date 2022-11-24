package lt.viltiesziedas.filmai.security;

import lt.viltiesziedas.filmai.model.entity.Privilegijos;
import lt.viltiesziedas.filmai.model.entity.Role;
import lt.viltiesziedas.filmai.model.entity.Vartotojas;
import lt.viltiesziedas.filmai.model.repository.RoleRepository;
import lt.viltiesziedas.filmai.model.repository.VartotojasRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

@Service("userDetailsService")
@Transactional
public class MyUserDetailsService implements UserDetailsService {

    @Autowired
    private VartotojasRepository vartotojasRepository;

    @Autowired
    private MessageSource messages;

    @Autowired
    private RoleRepository roleRepository;

    @Override
    public UserDetails loadUserByUsername(String username)
        throws UsernameNotFoundException{

        Vartotojas vartotojas = vartotojasRepository.findByUsername(username);
        if (vartotojas == null){
            return new org.springframework.security.core.userdetails.User(" ", " ", true, true, true, true, getAuthorities(Arrays.asList(roleRepository.findByPavadinimas("ROLE USER"))));
        }
        return new org.springframework.security.core.userdetails.User(vartotojas.getUsername(), vartotojas.getPassword(), vartotojas.isEnabled(), true, true, true, getAuthorities(vartotojas.getRoles()));
    }

    private Collection<? extends GrantedAuthority> getAuthorities(Collection<Role> roles){
        return getGrantedAuthorities(getPrivileges(roles));
    }

    private List<String> getPrivileges(Collection<Role>roles){
        List<String> privileges = new ArrayList<>();
        List<Privilegijos> collection = new ArrayList<>();
        for (Role role : roles){
            privileges.add(role.getPavadinimas());
            collection.addAll(role.getPrivilegijos());
        }
        for (Privilegijos item : collection){
            privileges.add(item.getPavadinimas());
        }
        return privileges;
    }

    private List<GrantedAuthority> getGrantedAuthorities(List<String> privileges){
        List<GrantedAuthority> authorities = new ArrayList<>();
        for (String privilege : privileges){
            authorities.add(new SimpleGrantedAuthority(privilege));
        }
        return authorities;
    }
}
