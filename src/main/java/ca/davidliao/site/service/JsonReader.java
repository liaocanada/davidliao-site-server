package ca.davidliao.site.service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.URL;
import java.nio.charset.Charset;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Adapted from https://stackoverflow.com/questions/4308554/simplest-way-to-read-json-from-a-url-in-java
public class JsonReader {

	private static String readAll(Reader rd) throws IOException {
		StringBuilder sb = new StringBuilder();
		int cp;
		while ((cp = rd.read()) != -1) {
			sb.append((char) cp);
		}
		return sb.toString();
	}

	public static JSONArray readJsonArrayFromUrl(String url) throws IOException, JSONException {
		try (InputStream is = new URL(url).openStream()) {
			BufferedReader rd = new BufferedReader(new InputStreamReader(is, Charset.forName("UTF-8")));
			String jsonText = readAll(rd);
			return new JSONArray(jsonText);
		}
	}
}