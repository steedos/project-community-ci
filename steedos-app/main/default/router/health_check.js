const express = require("express");
const router = express.Router();

// k8s 健康检查
router.get('/api/health_check', function (req, res) {
    res.send({
        success: true,
    });
});

exports.default = router;