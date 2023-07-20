import React from "react";
import { NavLink, Link } from "react-router-dom";
import styles from "./Navbar.module.css";

function Navbar() {
  return (
    <div className={styles.navbarContainer}>
      <div className={styles.logoContainer}>DBPX</div>
      <div className={styles.pageLinksContainer}>
        <NavLink
          to="/homePage"
          className={({ isActive }) =>
            isActive ? styles.activeLink : styles.pendingLink
          }
        >
          <div className={styles.textContainer}>Accueil</div>
        </NavLink>
        <NavLink
          to="/timelinePage"
          className={({ isActive }) =>
            isActive ? styles.activeLink : styles.pendingLink
          }
        >
          <div className={styles.textContainer}>Chronologie</div>
        </NavLink>
        <NavLink
          to="/charactersPage"
          className={({ isActive }) =>
            isActive ? styles.activeLink : styles.pendingLink
          }
        >
          <div className={styles.textContainer}>Personnages</div>
        </NavLink>
      </div>
      <div className={styles.separator} />
      <div className={styles.newsContainer}>
        <NavLink
          to="/galleryPage"
          className={({ isActive }) =>
            isActive ? styles.activeLink : styles.pendingLink
          }
        >
          <div className={styles.textContainer}>Galerie</div>
        </NavLink>
      </div>
      <div className={styles.logoutContainer}>
        <Link to="/aboutUsPage" className={styles.logoutLink}>
          <div className={styles.textContainer}>A propos</div>
        </Link>
      </div>
    </div>
  );
}

export default Navbar;
