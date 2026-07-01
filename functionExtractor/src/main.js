import { readdirSync, readFileSync, rmSync, writeFileSync } from "node:fs";
import { join } from "node:path";
import * as nbt from "prismarine-nbt";

const outputPath = "./output";
const structuresPath = "./structures";

for (const filePath of readdirSync(outputPath)) {
    rmSync(join(outputPath, filePath));
}

for (const structurePath of readdirSync(structuresPath)) {
    const fileData = readFileSync(join(structuresPath, structurePath));
    const nbt = await structureToJson(fileData);

    const blockPositionData = nbt.value.structure.value.palette.value.default.value.block_position_data.value;

    const data = Object.entries(blockPositionData)
        .sort((a, b) => parseInt(a[0]) > parseInt(b[0]))
        .map((v) => v[1].value.block_entity_data.value?.Command?.value)
        .filter((v) => v)
        .map((v) => v.startsWith("/") ? v.substring(1, v.length) : v)
        .map((v) => v.replaceAll("run /", "run "));

    writeFileSync(join(outputPath, structurePath.replace(".mcstructure", ".mcfunction")), data.join("\n"));
}

/**
 * Convert a structure to json
 */
async function structureToJson(data) {
    return (await nbt.parse(data)).parsed;
}