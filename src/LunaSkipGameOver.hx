import rm.scenes.Scene_GameOver;
import rm.managers.AudioManager;
import rm.scenes.Scene_Map;
import rm.managers.SceneManager;
import core.Types.JsFn;
import utils.Fn;

class LunaSkipGameOver {
 public static function main() {
  var oldSceneGameOverStart: JsFn = Fn.getPrProp(Scene_GameOver, "start");
  Fn.setPrProp(Scene_GameOver, "start", () -> {
   oldSceneGameOverStart.call(Fn.self);
   AudioManager.stopAll();
   SceneManager.goto(Scene_Map);
  });
 }
}
