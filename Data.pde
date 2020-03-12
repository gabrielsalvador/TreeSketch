public void saveData(File file, Tree model) {
  try {
    FileOutputStream fos = new FileOutputStream(file);
    ObjectOutputStream oos = new ObjectOutputStream(fos);
    oos.writeObject(model);
    fos.close();
  } 
  catch (IOException e) {
    e.printStackTrace();
  }
}
 
/**
 * Load the data from disk 
 */
public Tree loadTree(File file) {
  Tree dm = null;
  try {
    FileInputStream fis = new FileInputStream(file);
    ObjectInputStream ois = new ObjectInputStream(fis);
    dm = (Tree) ois.readObject();
    fis.close();
  } 
  catch (IOException e) {
    e.printStackTrace();
  } 
  catch (ClassNotFoundException e) {
    e.printStackTrace();
  }
  return dm;
}
