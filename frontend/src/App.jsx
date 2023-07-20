import { RouterProvider, createBrowserRouter } from "react-router-dom";
import Home from "./pages/Home";
import TimelinePage from "./pages/Timeline/TimelinePage";
import CharactersPage from "./pages/Characters/CharactersPage";
import GalleryPage from "./pages/Gallery/GalleryPage";
import AboutUsPage from "./pages/AboutUs/AboutUsPage";
import "./App.css";
import Layout from "./components/Layout/Layout";

const router = createBrowserRouter([
  {
    path: "/",
    element: <Layout />,
    children: [
      {
        path: "/homePage",
        element: <Home />,
      },
      {
        path: "/timelinePage",
        element: <TimelinePage />,
      },
      {
        path: "/charactersPage",
        element: <CharactersPage />,
      },
      {
        path: "/galleryPage",
        element: <GalleryPage />,
      },
      {
        path: "/aboutUsPage",
        element: <AboutUsPage />,
      },
    ],
  },
]);

function App() {
  return (
    <div>
      <RouterProvider router={router} />
    </div>
  );
}

export default App;
