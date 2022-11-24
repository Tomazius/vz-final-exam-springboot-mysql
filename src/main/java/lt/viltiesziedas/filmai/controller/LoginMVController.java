package lt.viltiesziedas.filmai.controller;

import lt.viltiesziedas.filmai.model.entity.Role;
import lt.viltiesziedas.filmai.model.entity.Vartotojas;
import lt.viltiesziedas.filmai.model.repository.RoleRepository;
import lt.viltiesziedas.filmai.model.repository.VartotojasRepository;
import lt.viltiesziedas.filmai.service.Config;
import org.aspectj.weaver.ast.Var;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.List;

@Controller
public class LoginMVController extends Config {

    @Autowired
    VartotojasRepository vartotojasRepository;
    @Autowired
    RoleRepository roleRepository;
    @Autowired
    PasswordEncoder passwordEncoder;

    @RequestMapping("/")
    String testineFunkcija(Model model, @RequestParam(defaultValue = "belenkas") String vardas){
        model.addAttribute("vardas",vardas);
        return "homepage.html";
    }

    /*@RequestMapping("/login.html")
    public String login(){
        return "login.html";
    }*/

    /*/@RequestMapping("/login-error.html")
    public String loginError(Model model){
        //model.addAttribute("loginError", true);
        return "login.html";
    }/*/

    @GetMapping("/registracija")
    String vartotojoRegistracija(Model model){
        Vartotojas naujasVartotojas = new Vartotojas();
        model.addAttribute("vartotojas", naujasVartotojas);
        return "registracija";
    }

    @PostMapping("/registracijos_patvirtinimas")
        String patvirtintiRegistracija(Model model, String username, @ModelAttribute Vartotojas pridedamasVartotojas){
            if(loginCheck(pridedamasVartotojas.getUsername(), pridedamasVartotojas.getElpastas(), pridedamasVartotojas.getPassword())){
                System.out.println("viskas gerai");
            }
            else if (pridedamasVartotojas.getUsername() == null || pridedamasVartotojas.getElpastas() == null || pridedamasVartotojas.getPassword() == null || pridedamasVartotojas.getVardas() == null || pridedamasVartotojas.getPavarde() == null){
                System.out.println("nesigavo su null");
            }
            else {
            return "bloga_registracija";
            }

            String nvUsername = pridedamasVartotojas.getUsername();
            String nvElpastas = pridedamasVartotojas.getElpastas();
            if(vartotojasRepository.existsByUsername(nvUsername) || vartotojasRepository.existsByElpastas(nvElpastas)){
                return "bloga_registracija2";
            }

            Role vartotojasRole = roleRepository.findByPavadinimas("ROLE_VARTOTOJAS");
            pridedamasVartotojas.setRoles(Arrays.asList(vartotojasRole));
            pridedamasVartotojas.setPassword(passwordEncoder.encode(pridedamasVartotojas.getPassword()));
            pridedamasVartotojas.setEnabled(true);
            pridedamasVartotojas.setTokenExpired(false);
            vartotojasRepository.save(pridedamasVartotojas);
            return "registracijos_patvirtinimas";
    }

    @GetMapping("/asdfasf")
        String pabandymas(String kintamasis){
        System.out.println(kintamasis);
        return "asdfasf";
    }
}
