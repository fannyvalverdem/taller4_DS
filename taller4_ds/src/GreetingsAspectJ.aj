public aspect GreetingsAspectJ {
	long startTime;
    // Define a Pointcut is 
    // collection of JoinPoint call greetings of class HelloAspectJDemo.
    
	
	pointcut callGreetings(): call(* HelloAspectJDemo.greeting()); 
    before() : callGreetings() {
    	startTime = System.currentTimeMillis();
    } 
    after() : callGreetings()  {
    	long estimatedTime = System.currentTimeMillis()-startTime;
        System.out.println(" Tiempo estimado: "+estimatedTime*1000000);
    }  
}  