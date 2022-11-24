package lt.viltiesziedas.filmai.security;

import lt.viltiesziedas.filmai.model.entity.Privilegijos;
import lt.viltiesziedas.filmai.model.entity.Role;
import lt.viltiesziedas.filmai.model.entity.Vartotojas;
import lt.viltiesziedas.filmai.model.repository.PrivilegijosRepository;
import lt.viltiesziedas.filmai.model.repository.RoleRepository;
import lt.viltiesziedas.filmai.model.repository.VartotojasRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationListener;
import org.springframework.context.event.ContextRefreshedEvent;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;

import javax.transaction.Transactional;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

@Component
public class SetupDataLoader implements ApplicationListener<ContextRefreshedEvent> {

    boolean alreadySetup = true;

    @Autowired
    private VartotojasRepository vartotojasRepository;
    @Autowired
    private RoleRepository roleRepository;
    @Autowired
    private PrivilegijosRepository privilegijosRepository;
    @Autowired
    PasswordEncoder passwordEncoder;

    @Override
    @Transactional
    public void onApplicationEvent(ContextRefreshedEvent event) {

        if(alreadySetup)
            return;
        Privilegijos skaitymoPrivilegija = sukurtiPrivilegijaIfNotFound("SKAITYMO_PRIVILEGIJA");
        Privilegijos rasymoPrivilegija = sukurtiPrivilegijaIfNotFound("RASYMO_PRIVILEGIJA");

        List<Privilegijos> adminPrivilegija = Arrays.asList(skaitymoPrivilegija, rasymoPrivilegija);
        sukurtiRoleIfNotFound("ROLE_ADMIN", adminPrivilegija);
        sukurtiRoleIfNotFound("ROLE_VARTOTOJAS", Arrays.asList(skaitymoPrivilegija));

        Role adminRole = roleRepository.findByPavadinimas("ROLE_ADMIN");
        Vartotojas vartotojas = new Vartotojas();
        vartotojas.setUsername("Test");
        vartotojas.setVardas("Test");
        vartotojas.setPavarde("Test");
        vartotojas.setPassword(passwordEncoder.encode("test"));
        vartotojas.setElpastas("test@test.com");
        vartotojas.setRoles(Arrays.asList(adminRole));
        vartotojas.setEnabled(true);
        vartotojasRepository.save(vartotojas);
        alreadySetup = true;
    }

    @Transactional
    Privilegijos sukurtiPrivilegijaIfNotFound(String pavadinimas){
        Privilegijos privilegija = privilegijosRepository.findByPavadinimas(pavadinimas);
        if (privilegija == null){
            privilegija = new Privilegijos();
            privilegija.setPavadinimas(pavadinimas);
            privilegijosRepository.save(privilegija);
        }
        return privilegija;
    }

    @Transactional
    Role sukurtiRoleIfNotFound(String pavadinimas, Collection<Privilegijos> privilegijos){
        Role role = roleRepository.findByPavadinimas(pavadinimas);
        if (role == null){
            role = new Role();
            role.setPavadinimas(pavadinimas);
            role.setPrivilegijos(privilegijos);
            roleRepository.save(role);
        }
        return role;
    }
}
