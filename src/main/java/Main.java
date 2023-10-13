import Controllers.PetController;
import Models.base.Pet;
import Services.IRepository;
import Services.PetRepository;
import Views.ConsoleMenu;

public class Main {
    public static void main(String[] args) throws Exception {

        IRepository <Pet> myFarm = new PetRepository();
        PetController controller = new PetController(myFarm);
        new ConsoleMenu (controller).start();
    }
}    