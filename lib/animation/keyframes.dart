/*
 * Copyright (c) 2015, Michael Mitterer (office@mikemitterer.at),
 * IT-Consulting and Development Limited.
 * 
 * All Rights Reserved.
 * 
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

/**
 * Predefined set of Keyframes
 */
part of m4d_animation;

const _NoOp = const <int, Map<String, Object>>{
};

const _FadeIn = const <int, Map<String, Object>>{
    0 : const <String, Object>{

        "opacity" : 0},
    100 : const <String, Object>{

        "opacity" : 1}
};

const _FadeOut = const <int, Map<String, Object>>{
    0 : const <String, Object>{

        "opacity" : 1},
    100 : const <String, Object>{

        "opacity" : 0}
};

/// Base-Sample on
/// * [CodePen](http://codepen.io/MikeMitterer/pen/grYEJW)
///
const _BounceInTop = const <int, Map<String, Object>>{
    0 : const <String, Object>{
        "opacity" : 0,
        "transform" : "translateY(-800px)"},

    60 : const <String, Object>{
        "opacity" : 1,
        "transform" : "translateY(30px)"},

    80 : const <String, Object>{
        "opacity" : 0.8,
        "transform" : "translateY(-30px)"},

    100 : const <String, Object>{

        // Final state should be visible
        "opacity" : 1,
        "transform" : "translateY(0)"}
};

const _BounceInBottom = const <int, Map<String, Object>>{
    0 : const <String, Object>{
        "opacity" : 0,
        "transform" : "translateY(800px)"},

    60 : const <String, Object>{
        "opacity" : 1,
        "transform" : "translateY(-30px)"},

    80 : const <String, Object>{
        "transform" : "translateY(30px)"},

    100 : const <String, Object>{

        // Final state should be visible
        "opacity" : 1,
        "transform" : "translateY(0)"}
};

const _BounceInRight = const <int, Map<String, Object>>{
    0 : const <String, Object>{
        "right" : "-200px"},

    30 : const <String, Object>{
        "right" : "100px"},

    60 : const <String, Object>{
        "right" : "-20px"},

    80 : const <String, Object>{
        "right" : "20px"},

    100 : const <String, Object>{

        // Final state should be visible
        "right" : "0"}
};

/*const _BounceInRight = const <int, Map<String, Object>>{
    0 : const <String, Object>{

        "opacity" : 0,
        "transform" : "translateX(300px)"},
    60 : const <String, Object>{

        "opacity" : 1,
        "transform" : "translateX(-30px)"},
    80 : const <String, Object>{

        "transform" : "translateX(10px)"},
    100 : const <String, Object>{

        // Final state should be visible
        "opacity" : 1,
        "transform" : "translateX(0)"}
};*/

/// Base-Sample on
/// * [CodePen](http://codepen.io/MikeMitterer/pen/grYEJW)
///
const _FlushRight = const <int, Map<String, Object>>{
    0 : const <String, Object>{
        "transform" : "translateX(-10px)"},

    60 : const <String, Object>{
        "transform" : "translateX(30px)"},

    80 : const <String, Object>{
        "opacity" : 0.8,
        "transform" : "translateX(-10px)"},

    100 : const <String, Object>{
        "opacity" : 0,
        "transform" : "translateX(100vw)"}
};

/// More on http://codepen.io/MikeMitterer/pen/QjeOov
const _Shrink = const <int, Map<String, Object>>{
    0 : const <String, Object>{
        "opacity" : 1 },

    50 : const <String, Object>{
        "opacity" : 0.5 },

    100 : const <String, Object>{
        "transform" : "scaleY(0.5)",
        "height" : 0,
        "opacity" : 0.2 }
};

/// More on http://codepen.io/MikeMitterer/pen/QjeOov
const _MoveUpAndDisappear = const <int, Map<String, Object>>{
    0 : const <String, Object>{
        "opacity" : 1 },

    10 : const <String, Object>{
        "opacity" : 0.5 },

    90 : const <String, Object>{
        "opacity" : 0.2 },

    100 : const <String, Object>{
        "transform" : "translateY(-100px)",
        "opacity" : 0 }
};