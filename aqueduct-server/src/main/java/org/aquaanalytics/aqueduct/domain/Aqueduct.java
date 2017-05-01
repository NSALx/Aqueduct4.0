package org.aquaanalytics.aqueduct.domain;

/** Domain Root. */
public class Aqueduct {

	// Members ---------------------------------------------------------------

	// For more information regarding concurrent collections, see:
	// https://docs.oracle.com/javase/8/docs/api/java/util/concurrent/package-summary.html#package.description

	// Singleton -------------------------------------------------------------

	/* Private constructor prevents instantiation from other classes */
	private Aqueduct() {
	}

	/**
	 * SingletonHolder is loaded on the first execution of
	 * Singleton.getInstance() or the first access to SingletonHolder.INSTANCE,
	 * not before.
	 */
	private static class SingletonHolder {
		private static final Aqueduct INSTANCE = new Aqueduct();
	}

	public static synchronized Aqueduct getInstance() {
		return SingletonHolder.INSTANCE;
	}

	// reset ---------------------------------------------------------------

	public void reset() {

	}



}