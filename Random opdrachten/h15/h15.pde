class student {
    String naam;
    int leeftijd;
    String klas;
    String aanwezigheid;

    student(String naam, int leeftijd, String klas, String aanwezigheid) {
        this.naam = naam;
        this.leeftijd = leeftijd;
        this.klas = klas;
        this.aanwezigheid = aanwezigheid;
    }

    void information() {
        println("naam: " + naam);
        println("leeftijd: " + leeftijd); 
        println("klas: " + klas);
        println("aanwezigheid " + aanwezigheid);
    }
}

void setup(){
 student student1  = new student("Yara", 18, "MSDSDO3D", "93%");
 student1.information();
 
 println("");
 
 student student2 = new student("Nino", 22, "MSDSDO3D", "100%");
 student2.information();
}
