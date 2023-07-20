import React from "react";
import { Outlet } from "react-router-dom";
import Navbar from "../Navbar/Navbar";
import styles from "./Layout.module.css";

function Layout() {
  return (
    <div className={styles.layoutContainer}>
      <Navbar />

      <div className={styles.layoutContainer}>
        <Outlet />
      </div>
    </div>
  );
}

export default Layout;
