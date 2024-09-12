return {
  version = "1.5",
  luaversion = "5.1",
  tiledversion = "1.8.6",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 16,
  height = 12,
  tilewidth = 40,
  tileheight = 40,
  nextlayerid = 7,
  nextobjectid = 18,
  properties = {
    ["border"] = "castle",
    ["music"] = "jamm_dungeon"
  },
  tilesets = {
    {
      name = "jamm_dungeon",
      firstgid = 1,
      filename = "../../../../tilesets/jamm_dungeon.tsx"
    }
  },
  layers = {
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 16,
      height = 12,
      id = 1,
      name = "Tile Layer 1",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 23, 23, 23, 30, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 0,
        0, 23, 29, 23, 23, 23, 23, 31, 23, 23, 30, 23, 23, 23, 24, 0,
        0, 22, 23, 23, 23, 29, 23, 23, 23, 29, 23, 23, 31, 23, 23, 0,
        0, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 0,
        0, 48, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 39, 0,
        0, 52, 51, 51, 51, 51, 33, 51, 51, 51, 51, 51, 51, 25, 50, 0,
        0, 52, 33, 51, 51, 51, 51, 51, 51, 51, 40, 51, 51, 51, 50, 0,
        0, 52, 51, 51, 51, 51, 51, 51, 51, 51, 51, 51, 51, 51, 50, 0,
        0, 52, 51, 40, 51, 51, 51, 51, 41, 51, 51, 51, 51, 51, 50, 0,
        0, 35, 44, 44, 44, 44, 44, 44, 44, 44, 44, 51, 51, 33, 50, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 52, 51, 51, 50, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 52, 41, 51, 50, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 16,
      height = 12,
      id = 4,
      name = "Tile Layer 2",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 53, 54, 55, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 61, 62, 0, 0, 0, 0,
        0, 0, 0, 7, 0, 20, 21, 0, 0, 67, 68, 69, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 74, 75, 76, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 16,
      height = 12,
      id = 6,
      name = "door_layer",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 71, 72, 73, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 78, 79, 80, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 85, 86, 87, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 2,
      name = "collision",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 2,
          name = "",
          type = "",
          shape = "rectangle",
          x = 600,
          y = 160,
          width = 40,
          height = 320,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 3,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 160,
          width = 40,
          height = 240,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 4,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 400,
          width = 440,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 6,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 0,
          width = 360,
          height = 160,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 7,
          name = "",
          type = "",
          shape = "rectangle",
          x = 480,
          y = 0,
          width = 160,
          height = 160,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 8,
          name = "door_collision",
          type = "",
          shape = "rectangle",
          x = 360,
          y = 120,
          width = 120,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 3,
      name = "markers",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 5,
          name = "entry",
          type = "",
          shape = "point",
          x = 520,
          y = 440,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 13,
          name = "observe",
          type = "",
          shape = "point",
          x = 420,
          y = 200,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 5,
      name = "objects",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 14,
          name = "transition",
          type = "",
          shape = "rectangle",
          x = 360,
          y = 118,
          width = 120,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["facing"] = "down",
            ["map"] = "fwood/dungeon_inside/observe_win",
            ["marker"] = "entry"
          }
        },
        {
          id = 15,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 200,
          y = 120,
          width = 80,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["text1"] = "* My dearest Luthane,[wait:5] an observant individual..",
            ["text2"] = "* You take note of many precious details in your life.",
            ["text3"] = "* As such,[wait:5] here is your trial:",
            ["text4"] = "* Upon pressing this button,[wait:5] you wil be asked 5 questions.",
            ["text5"] = "* Before doing so,[wait:5] however,[wait:5] I urge you to explore.",
            ["text6"] = "* Find as many details as possible.",
            ["text7"] = "* If you get 3 of the questions right, you win."
          }
        },
        {
          id = 16,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 120,
          y = 120,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["cutscene"] = "a_dungeon.observation"
          }
        },
        {
          id = 17,
          name = "transition",
          type = "",
          shape = "rectangle",
          x = 440,
          y = 480,
          width = 160,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["facing"] = "down",
            ["map"] = "fwood/dungeon_inside/observe_hall",
            ["marker"] = "trial"
          }
        }
      }
    }
  }
}
