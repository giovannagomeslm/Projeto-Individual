var express = require("express");
var router = express.Router();

var usuarioController = require("../controllers/usuarioController");

//Recebendo os dados do html e direcionando para a função cadastrar de usuarioController.js
router.post("/cadastrar", function (req, res) {
    usuarioController.cadastrar(req, res);
})

router.post("/autenticar", function (req, res) {
    usuarioController.autenticar(req, res);
}); 

router.post("/salvarPontuacao", function (req, res) {
    usuarioController.salvarPontuacao(req, res);
})
router.get("/capturarPontuacao", function (req, res) {
    usuarioController.capturarPontuacao(req, res);
})

module.exports = router;