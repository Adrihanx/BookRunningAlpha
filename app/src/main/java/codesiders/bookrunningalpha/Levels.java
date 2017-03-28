package codesiders.bookrunningalpha;

/**
 * Created by root on 28/03/17.
 */

public class Levels {
    private int No_Nivel;
    private int Vel_Minima;
    private String Objetivo;
    private int id_Historia;

    public int getId_Historia() {
        return id_Historia;
    }

    public void setId_Historia(int id_Historia) {
        this.id_Historia = id_Historia;
    }

    public int getVel_Minima() {
        return Vel_Minima;
    }

    public void setVel_Minima(int vel_Minima) {
        Vel_Minima = vel_Minima;
    }

    public String getObjetivo() {
        return Objetivo;
    }

    public void setObjetivo(String objetivo) {
        Objetivo = objetivo;
    }

    public int getNo_Nivel() {
        return No_Nivel;
    }

    public void setNo_Nivel(int no_Nivel) {
        No_Nivel = no_Nivel;
    }
}
