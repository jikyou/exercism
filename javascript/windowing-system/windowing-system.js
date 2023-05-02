// @ts-check

/**
 * Implement the classes etc. that are needed to solve the
 * exercise in this file. Do not forget to export the entities
 * you defined so they are available for the tests.
 */

export class Size {

    constructor(width = 80, height = 60) {
        this.width = width
        this.height = height
    }

    resize(newWidth, newHeight) {
        if (newWidth < 1) {
            newWidth = 1
        }
        if (newHeight < 1) {
            newHeight = 1
        }
        this.width = newWidth
        this.height = newHeight
    }

}

export class Position {

    constructor(x = 0, y = 0) {
        this.x = x
        this.y = y
    }

    move(newX, newY) {
        if (newX < 0) {
            newX = 0
        }
        if (newY < 0) {
            newY = 0
        }
        this.x = newX
        this.y = newY
    }

}

export class ProgramWindow {

    constructor() {
        this.screenSize = new Size(800, 600)
        this.size = new Size()
        this.position = new Position()
    }

    /**
     * @param {Size} newSize
     * @returns {void}
     */
    resize(newSize) {
        let maxWidth = this.screenSize.width - this.position.x
        let maxHeight = this.screenSize.height - this.position.y
        if (newSize.width > maxWidth) {
            newSize.width = maxWidth
        }
        if (newSize.height > maxHeight) {
            newSize.height = maxHeight
        }
        this.size.resize(newSize.width, newSize.height)
    }

    /**
     * @param {Position} position
     * @returns {void}
     */
    move(position) {
        let maxX = this.screenSize.width - this.size.width
        let maxY = this.screenSize.height - this.size.height
        if (position.x > maxX) {
            position.x = maxX
        }
        if (position.y > maxY) {
            position.y = maxY
        }
        this.position.move(position.x, position.y)
    }
}

/**
 * @param {ProgramWindow} programWindow
 * @returns {ProgramWindow}
 */
export function changeWindow(programWindow) {
    programWindow.resize(new Size(400, 300))
    programWindow.move(new Position(100, 150))
    return programWindow
}
