package org.aquaanalytics.aqueduct.client;

/** Exception used to report problems in Web Service port wrapper. */
public class AqueductClientException extends Exception {

	private static final long serialVersionUID = 1L;

	public AqueductClientException() {
	}

	public AqueductClientException(String message) {
		super(message);
	}

	public AqueductClientException(Throwable cause) {
		super(cause);
	}

	public AqueductClientException(String message, Throwable cause) {
		super(message, cause);
	}

}
