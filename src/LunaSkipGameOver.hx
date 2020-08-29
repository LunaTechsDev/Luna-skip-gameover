import rm.scenes.Scene_Gameover;
import rm.managers.AudioManager;
import rm.scenes.Scene_Map;
import rm.managers.SceneManager;
import core.Types.JsFn;
import utils.Fn;

class LunaSkipGameOver {
 public static function main() {
  var oldSceneGameOverStart: JsFn = Fn.getPrProp(Scene_Gameover, "start");
  Fn.setPrProp(Scene_Gameover, "start", () -> {
   oldSceneGameOverStart.call(Fn.self);
   AudioManager.stopAll();
   SceneManager.goto(Scene_Map);
  });
 }
}
