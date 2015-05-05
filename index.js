import raf from 'raf';

export default function debounce(fn){
  let args;
  let next;
  function loop(){
    next = raf(() => {
      next = null;
      fn(...args);
    });
  }
  return {
    fn(...argv){
      if (!next) loop();
      args = argv;
    },
    cancel(){
      if (next) raf.cancel(next);
    }
  }
}
