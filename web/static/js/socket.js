// NOTE: The contents of this file will only be executed if
// you uncomment its entry in "web/static/js/app.js".

// To use Phoenix channels, the first step is to import Socket
// and connect at the socket path in "lib/my_app/endpoint.ex":
import {Socket} from "deps/phoenix/web/static/js/phoenix"

let socket = new Socket("/socket", {params: {token: window.userToken}})
socket.connect()

let channel = socket.channel("mouse:click", {})

channel.on("click", payload => {
  context.fillStyle = "#000000";
  context.beginPath();
  context.arc(payload.body.x, payload.body.y, 50, 0, 2*Math.PI);
  context.fill();
})

channel.join()
  .receive("ok", resp => { console.log("Joined successfully", resp) })
  .receive("error", resp => { console.log("Unable to join", resp) })

export default socket

// ====================================================================

var canvas = document.getElementById("canvas");
canvas.width = canvas.offsetWidth;
canvas.height = canvas.offsetHeight;

var context = canvas.getContext("2d");

function draw(e) {
  var pos = getMousePos(canvas, e);
  context.fillStyle = "#000000";
  context.beginPath();
  context.arc(pos.x, pos.y, 50, 0, 2*Math.PI);
  context.fill();

  channel.push("click", {body: pos});
}

function getMousePos(canvas, evt) {
  var rect = canvas.getBoundingClientRect();
  return {
    x: evt.clientX - rect.left,
    y: evt.clientY - rect.top
  };
}

window.draw = draw;
