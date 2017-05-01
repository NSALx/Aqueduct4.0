package org.aquaanalytics.aqueduct.server;

/** Main class that starts the Aqueduct Web Service. */
public class AqueductApp {

	public static void main(String[] args) throws Exception {
		// Check arguments
		if (args.length == 0 || args.length == 2) {
			System.err.println("Argument(s) missing!");
			System.err.println("Usage: java " + AqueductApp.class.getName() + " wsURL");
			return;
		}
		String uddiURL = null;
		String wsName = null;
		String wsURL = null;

		// Create server implementation object, according to options
		AqueductEndpointManager endpoint = null;
		if (args.length == 1) {
			wsURL = args[0];
			endpoint = new AqueductEndpointManager(wsURL);
		} else if (args.length >= 3) {
			wsURL = args[0];
			uddiURL = args[1];
			wsName = args[2];
			endpoint = new AqueductEndpointManager(uddiURL, wsName, wsURL);
			endpoint.setVerbose(true);
		}

		try {
			endpoint.start();
			endpoint.awaitConnections();
		} finally {
			endpoint.stop();
		}

	}

}
