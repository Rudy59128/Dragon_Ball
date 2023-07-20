import styles from "./Home.module.css";

function Home() {
  return (
    <div className={styles.homeContainer}>
      <div className={styles.leftSection}>
        <div className={`${styles.cardContainer} ${styles.imageCard}`} />
      </div>
      <div className={styles.rightSection}>
        <h1>Dragon Ball : Projet X</h1>
        <p>
          Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec quis
          eros sed purus tempor euismod. Nulla facilisi. Duis in libero at
          lectus interdum fringilla.
        </p>
      </div>
    </div>
  );
}

export default Home;
