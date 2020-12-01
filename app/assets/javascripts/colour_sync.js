/**
 * An element in a web page who's colour will be changed to RGB values
 */
class ColouredNode {
    constructor(element, id) {
        this.element = element;
        this.id = id;
    }

    /**
     * The target element
     */
    getElement() {
        return this.element
    }

    /**
     * The target element's ID
     */
    getId() {
        return this.id
    }
}

//list of nodes
let nodes = []
//current rgb colour
let rgb = [0, 128, 256]
//whether the colour at that index is going up or down
let up = [true, true, true]

/**
 * Add an element and the element's ID to the coloured node list
 * @param element   Target element
 * @param id        Target element ID
 * @returns {ColouredNode}  Returns the coloured node created
 */
function addColourCycleNode(element, id) {
    let node = new ColouredNode(element, id)
    if (!nodes.includes(node)) {
        nodes.push(node)
    }
    return node
}

/**
 * Adds a hover interaction listener for the coloured node
 * @param targetNode The node which will have the listener added to
 */
function addColourHoverListener(targetNode) {
    //on hover of target node...
    $(targetNode.getElement()).hover(
        //calls the cycle function
        function cycle() {
            //iterates the rgb
            for (let i = 0; i < rgb.length; i++) {
                if (up[i]) {
                    rgb[i]++;
                } else {
                    rgb[i]--;
                }
                if (rgb[i] >= 256) {
                    up[i] = false
                } else if (rgb[i] <= 0) {
                    up[i] = true
                }
            }
            //updates the other coloured nodes in the list
            for (let i = 0; i < nodes.length; i++) {
                if (document.getElementById(nodes[i].getId()) != null) { //validation that the element is on the screen
                    document.getElementById(nodes[i].getId()).style.backgroundColor = "rgb(" + rgb[0] + "," + rgb[1] + "," + rgb[2] + ")"
                }
            }
            //if the node is still hovered, call the cycle function again to repeat
            if ($(targetNode.getElement()).is(":hover")) {
                setTimeout(function () {
                    cycle()
                }, 20);
            }
        }
    )
}

