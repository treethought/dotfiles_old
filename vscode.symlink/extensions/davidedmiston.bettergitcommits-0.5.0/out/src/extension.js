"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : new P(function (resolve) { resolve(result.value); }).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
Object.defineProperty(exports, "__esModule", { value: true });
const vscode = require("vscode");
const vscode_1 = require("vscode");
const gitHelper_1 = require("./gitHelper");
const os = require("os");
const fs = require("fs");
const path = require("path");
function getStagedFiles(files) {
    let stagedFiles = files.filter(file => file.index !== " ");
    return stagedFiles;
}
function parseStatusInfo(statusSummary) {
    let result = "\n\n";
    result += "# Add a commit message here! \n#\n";
    result += `# Current branch: ${statusSummary.current}\n#\n`;
    let stagedFiles = getStagedFiles(statusSummary.files);
    if (stagedFiles.length === 0) {
        return result;
    }
    result += `# Staged files:\n`;
    stagedFiles.forEach(sf => {
        result += `#    ${sf.path}\n`;
    });
    return result;
}
function getTmpFilePath() {
    return path.normalize(path.join(os.tmpdir(), "COMMIT_EDITMSG"));
}
function deleteTmpFile(path) {
    return new Promise((resolve, reject) => {
        fs.unlink(path, err => {
            if (err)
                reject();
            resolve();
        });
    });
}
function createTmpFile(filePath, contents) {
    return __awaiter(this, void 0, void 0, function* () {
        return new Promise((resolve, reject) => {
            fs.writeFile(filePath, contents, err => {
                if (err) {
                    console.log(`Error writing temp file: ${err}`);
                    reject(err);
                }
                resolve();
            });
        });
    });
}
function showCommitScreen() {
    return __awaiter(this, void 0, void 0, function* () {
        let gh = new gitHelper_1.gitHelper(vscode.workspace.rootPath);
        let status;
        try {
            status = yield gh.status();
            console.log(status);
        }
        catch (e) {
            console.log(e);
            yield vscode.window.showErrorMessage("Error getting git status.");
            return;
        }
        let commitMessageTempFilePath = getTmpFilePath();
        // TODO: add this back in after I work out how to select and delete the status info lines...
        // let commitMessageContents: string = parseStatusInfo(status);
        yield createTmpFile(commitMessageTempFilePath, "");
        let commitDisplay = yield vscode.workspace.openTextDocument(commitMessageTempFilePath);
        let document = yield vscode.window.showTextDocument(commitDisplay);
        // Set a selection with no actual range to move the cursor to the top of the file.
        const position = new vscode_1.Position(0, 0);
        document.selections = [new vscode_1.Selection(position, position)];
    });
}
function executeCommit() {
    return __awaiter(this, void 0, void 0, function* () {
        let activeDocument = vscode.window.activeTextEditor.document;
        if (activeDocument.languageId !== "git-commit") {
            return vscode.window.showErrorMessage("Current buffer is not a git commit message.");
        }
        let commitMessage = activeDocument.getText().split("\n");
        if (commitMessage.every(line => line === "")) {
            return vscode.window.showErrorMessage("You have not supplied a commit message!");
        }
        let gh = new gitHelper_1.gitHelper(vscode.workspace.rootPath);
        let status = yield gh.status();
        if (getStagedFiles(status.files).length === 0) {
            return vscode.window.showErrorMessage("No files are currently staged.");
        }
        // Since we `git commit -F` using the tempfile, need to save our work.
        yield activeDocument.save();
        let commitResult;
        try {
            commitResult = yield gh.commitRaw(activeDocument.fileName);
        }
        catch (e) {
            yield vscode.window.showErrorMessage("Error running commit, please see output console.");
            console.log(e);
            return;
        }
        yield vscode.commands.executeCommand("workbench.action.closeActiveEditor");
    });
}
function activate(context) {
    let showCommitCmd = vscode.commands.registerCommand("bettercommits.showCommitScreen", showCommitScreen);
    let execCommitCmd = vscode.commands.registerCommand("bettercommits.executeCommit", executeCommit);
    context.subscriptions.push(showCommitCmd);
    context.subscriptions.push(execCommitCmd);
}
exports.activate = activate;
// this method is called when your extension is deactivated
function deactivate() { }
exports.deactivate = deactivate;
//# sourceMappingURL=extension.js.map