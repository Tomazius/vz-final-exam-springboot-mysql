package lt.viltiesziedas.filmai.controller;

import lt.viltiesziedas.filmai.model.entity.Filmas;
import lt.viltiesziedas.filmai.model.entity.Komentaras;
import lt.viltiesziedas.filmai.model.entity.Rezisierius;
import lt.viltiesziedas.filmai.model.repository.RezisieriusRepository;
import lt.viltiesziedas.filmai.model.repository.ZanrasRepository;
import lt.viltiesziedas.filmai.model.repository.FilmasRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class FilmasMVController{

    @Autowired
    FilmasRepository filmasRepository;
    @Autowired
    ZanrasRepository zanrasRepository;
    @Autowired
    RezisieriusRepository rezisieriusRepository;

    //@GetMapping("/test/sveikinimas")

    @GetMapping("/filmai/visi_filmai")
    String rodytiVisusFilmus(Model model){
        List<Filmas> visiFilmai = filmasRepository.findAll();
        model.addAttribute("visiFilmai", visiFilmai);
        return "visi_filmai";
    }

    @GetMapping("/filmai/informacija")
    String rodytiFilmoInformacija(Model model, @RequestParam String pavadinimas){
        Filmas filmas = filmasRepository.findByPavadinimas(pavadinimas);
        if(filmas == null){
            System.out.println("knyga nerastas sout");
            model.addAttribute("tekstas", "tokio filmo duomenu bazeje nera");
            return "filmas_nerastas";
        }
        model.addAttribute("pavadinimas", filmas.getPavadinimas());
        model.addAttribute("metai", filmas.getMetai());
        model.addAttribute("filmoRezisierius", filmas.getFilmoRezisierius());
        model.addAttribute("filmoZanrai", filmas.getFilmoZanrai());
        model.addAttribute("trukmeMin", filmas.getTrukmeMin());
        model.addAttribute("imdbRating", filmas.getImdbRating());
        model.addAttribute("aprasymas", filmas.getAprasymas());
        model.addAttribute("id", filmas.getId());
        model.addAttribute("filmoId", filmas.getId());
        model.addAttribute("filmoKomentarai", filmas.getFilmoKomentarai());
        Komentaras komentaras = new Komentaras();
        model.addAttribute("komentaras", komentaras);
        return "filmo_informacija";
    }

    @GetMapping("/filmai/paieska")
    String rastiFilma(Model model){
        return "rasti_filma";
    }

    @GetMapping("/filmai/idejimas")
    String filmoIdejimas(Model model){
        Filmas filmas = new Filmas();
        model.addAttribute("filmas", filmas);
        model.addAttribute("filmoZanrai", zanrasRepository.findAll());
        return "prideti_filma";
    }

    @PostMapping("/filmai/pridetas_filmas")
        String pridetiFilma(@ModelAttribute Filmas pridedamasFilmas, @RequestParam String rastiRezisieriu){
            Rezisierius rezisierius = rezisieriusRepository.findByVardasPavarde(rastiRezisieriu);
            pridedamasFilmas.setFilmoRezisierius(rezisierius);
            filmasRepository.save(pridedamasFilmas);
            return "idetas_filmas";
    }

    @GetMapping("/filmai/filmo_redagavimas/{id}")
        String redaguotiFilma(Model model, @PathVariable int id){
            System.out.println("Belekas");
            Filmas filmas = filmasRepository.findById(id);
            System.out.println("Belekas2");
            model.addAttribute("filmas", filmas);               // paduodam filmas objekt?? d??l vis?? kit?? parametr??, pavadinimas, trukm??, t.t.
            System.out.println("Belekas3");
            model.addAttribute("rastiRezisieriu", filmas.getFilmoRezisierius().getVardasPavarde());         // re??isieri?? reikia atskirai paduoti HTML'ui, kadangi tas HTML'as si??s tolesniai controllerio funkcijai (pridetiFilma), o ta funkcija turi gauti re??isieri?? kaip atskir?? String, o ne filmas objekto viduje.
            System.out.println("Belekas4");
            model.addAttribute("filmoZanrai", zanrasRepository.findAll());
            System.out.println("Belekas5");
            return "filmo_redagavimas.html";            // ??ia blogai buvo, j??s ne ?? t?? puslap?? controller?? nukreip??t
    }

    @PostMapping("/filmai/istrinti_filma/{id}")
        String istrintiFilma(Model model, @PathVariable int id){
        filmasRepository.delete(filmasRepository.findById(id));
        return "istrintas_filmas";
    }
}
