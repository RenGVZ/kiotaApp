import "bootstrap";
import "controllers";
import "../plugins/flatpickr";
import { initSwipe } from "../plugins/swipe";
import { runLoading } from "./loading";

initSwipe();
runLoading();