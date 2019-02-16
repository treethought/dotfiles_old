"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const simpleGit = require("simple-git");
class gitHelper {
    constructor(workingDir) {
        this.repositoryDirectory = workingDir;
        this.sGit = new simpleGit(this.repositoryDirectory);
    }
    status() {
        let git = this.sGit;
        return new Promise(function (resolve, reject) {
            git.status(function (err, status) {
                if (err)
                    return reject(err);
                return resolve(status);
            });
        });
    }
    commit(message) {
        let git = this.sGit;
        return new Promise(function (resolve, reject) {
            git.commit(message, function (err, result) {
                if (err)
                    return reject(err);
                return resolve(result);
            });
        });
    }
    commitRaw(messageFile) {
        let git = this.sGit;
        return new Promise((resolve, reject) => {
            git.raw([
                "commit",
                "-F",
                messageFile
            ], (err, result) => {
                if (err)
                    return reject(err);
                return resolve(result);
            });
        });
    }
}
exports.gitHelper = gitHelper;
//# sourceMappingURL=gitHelper.js.map