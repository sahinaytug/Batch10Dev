public  class Tea {
    public void start(){
        system.debug('Step 1=>We need to collect all raw material');
    }
    public void execute(){
        start();
        system.debug('Step 2=>We need to mix all material');
    }
    public void finish(){
        execute();
        system.debug('Step 3=>Tea is ready....');
    }
   
}
