const express = require("express");

const router = express.Router();

const characterControllers = require("./controllers/characterControllers");

router.get("/characters", characterControllers.browse);
router.get("/characters/:id", characterControllers.read);

const timelineControllers = require("./controllers/timelineControllers");

router.get("/timeline", timelineControllers.browse);
router.get("/timeline/:id", timelineControllers.read);

const storyControllers = require("./controllers/storyControllers");

router.get("/story", storyControllers.browse);
router.get("/story/:id", storyControllers.read);

const galleryControllers = require("./controllers/galleryControllers");

router.get("/gallery", galleryControllers.browse);

module.exports = router;
