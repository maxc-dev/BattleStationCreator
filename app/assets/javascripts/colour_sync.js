class ColouredNode {
    constructor(element, id) {
        this.element = element;
        this.id = id;
    }

    getElement() {
        return this.element
    }

    getId() {
        return this.id
    }
}

let nodes = []
let rgb = [0, 128, 256]
let up = [true, true, true]

function addColourCycleNode(element, id) {
    let node = new ColouredNode(element, id)
    if (!nodes.includes(node)) {
        nodes.push(node)
    }
    return node
}

function addColourHoverListener(targetNode) {
    $(targetNode.getElement()).hover(
        function cycle() {
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
            for (let i = 0; i < nodes.length; i++) {
                if (document.getElementById(nodes[i].getId()) != null) {
                    document.getElementById(nodes[i].getId()).style.backgroundColor = "rgb(" + rgb[0] + "," + rgb[1] + "," + rgb[2] + ")"
                }
            }
            if ($(targetNode.getElement()).is(":hover")) {
                setTimeout(function () {
                    cycle()
                }, 20);
            }
        }
    )
}

