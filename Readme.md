# raf-debounce

Debounces the execution of a function until
the next animation frame.

The supplied function gets called only once. The
last arguments supplied to the debounced function
will be used, which can be called multiple times.

## How to use

```js
import debounce from 'raf-debounce';
const paint = debounce(function(val){
  document.body.innerHTML = val;
});
window.onmousemove = function(){
  paint(ev.clientX);
}
```
