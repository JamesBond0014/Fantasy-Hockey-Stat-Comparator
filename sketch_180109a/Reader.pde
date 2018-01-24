
class Reader {
  BufferedReader reader;
  Reader (String _fileName) { 
    reader = createReader (_fileName);
  }
  String getNextLine() {
    try {
      return reader.readLine();
    } 
    catch (IOException e) {
      e.printStackTrace();
      return null;
    }
  }
}