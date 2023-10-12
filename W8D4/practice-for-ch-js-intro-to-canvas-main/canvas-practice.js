document.addEventListener('DOMContentLoaded', function() {
  const canvas = document.getElementById('myCanvas');
  canvas.width = 500;
  canvas.height = 500;
  let ctx = canvas.getContext('2d');
  ctx.fillStyle = 'red';
  ctx.fillRect(0, 0, 100, 100);
  ctx.beginPath();
  ctx.arc(200, 200, 20, 0, 2 * Math.PI, true);
  ctx.strokeStyle = 'green';
  ctx.lineWidth = 5;
  ctx.stroke();
  ctx.fillStyle = 'red';
  ctx.fill();
});