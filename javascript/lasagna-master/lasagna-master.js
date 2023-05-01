/// <reference path="./global.d.ts" />
// @ts-check

/**
 * Implement the functions needed to solve the exercise here.
 * Do not forget to export them so they are available for the
 * tests. Here an example of the syntax as reminder:
 *
 * export function yourFunction(...) {
 *   ...
 * }
 */

/**
 * @param {number|undefined} remainMin
 * @returns {string} message
 */
export function cookingStatus(remainMin) {
    if (remainMin === undefined) {
        return 'You forgot to set the timer.'
    }
    if (remainMin === 0) {
        return 'Lasagna is done.'
    }
    return 'Not done, please wait.'
}

/**
 * @param {string[]} layers
 * @param {number} layerTime
 * @returns {number} total time
 */
export function preparationTime(layers, layerTime = 2) {
    return layers.length * layerTime
}

/**
 * @param {string[]} layers
 * @returns {{noodles: number, sauce: number}} total time
 */
export function quantities(layers) {
    return {
        noodles: countByLayer("noodles") * 50,
        sauce: countByLayer("sauce") * 0.2,
    }

    function countByLayer(layer) {
        return layers.filter(lay => lay === layer).length
    }
}

/**
 * @param {string[]} friendsList
 * @param {string[]} myList
 * @returns {void}
 */
export function addSecretIngredient(friendsList, myList) {
    if (friendsList.length === 0) {
        throw new Error("friendsList can't empty")
    }
    myList.push(friendsList[friendsList.length - 1])
}

/**
 * @param {{[key: string]: number}} recipe
 * @param {number|undefined} cookNum
 * @returns {object} new recipe
 */
export function scaleRecipe(recipe, cookNum) {
    if (!cookNum) {
        return {}
    }
    let recipeCount = cookNum / 2
    let newRecipe = {}
    for (const ingredient in recipe) {
        if (Object.hasOwnProperty.call(recipe, ingredient)) {
            newRecipe[ingredient] = recipe[ingredient] * recipeCount
        }
    }
    return newRecipe
}
