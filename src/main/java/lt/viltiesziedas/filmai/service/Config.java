package lt.viltiesziedas.filmai.service;

import org.jetbrains.annotations.NotNull;

public class Config {

    public boolean loginCheck(String username, String elpastas, String password){
        boolean a = usernamePasswordCheck(username, password);
        boolean b = emailSymbolCheck(elpastas);
        boolean c = passwordLengthCheck(password);
        boolean d = pwLowercaseCheck(password);
        boolean e = pwUppercaseCheck(password);
        boolean f = pwDigitCheck(password);
        return a && b && c && d && e && f;
    }

    // Ar slaptažodis nesutampa su username
    public boolean usernamePasswordCheck(@NotNull String username, String password){
        return !username.equalsIgnoreCase(password);
    }

    public boolean emailSymbolCheck(@NotNull String email){
        return email.contains("@") && email.contains(".");
    }

    public boolean passwordLengthCheck(@NotNull String password){
        return password.length() >= 10;
    }

    public  boolean pwLowercaseCheck(@NotNull String password) {
        return !password.equals(password.toUpperCase());
    }

    public boolean pwUppercaseCheck(@NotNull String password){
        return !password.equals(password.toLowerCase());
    }

    public boolean pwDigitCheck(@NotNull String password){
        char[] ch = password.toCharArray();
        boolean arYraSkaicius = false;
        for (char cr: ch){
            if(Character.isDigit(cr)){
                arYraSkaicius = true;
                break;
            }
        }
        return arYraSkaicius;
    }
}
