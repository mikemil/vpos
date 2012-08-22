imageX='plus';
function toggleDisplay(e){
  element = document.getElementById(e).style;
  if (element.display=='none') {element.display='block';}
  else {element.display='none';}
  if (imageX=='plus') {document.getElementById('imagePM').src='../images/minus.png';imageX='minus';}
  else {document.getElementById('imagePM').src='../images/plus.png';imageX='plus';}
}
