<?php

define('ROOT', realpath(dirname(__FILE__) . '/../') . '/');

// move everything to the target dir
$sCommand = escapeshellarg(ROOT . 'ssl/out/*.baf ' . ROOT . 'scripts/');

print "Moving files...\n";
print myExec($sCommand);

print "Done!\n";

/* extra functions */

function myExec($sCmd, $bAndRedirect = true) {
    if ($bAndRedirect) {
        $sTemp = tempnam(sys_get_temp_dir(), "out");
        shell_exec($sCmd . " > $sTemp 2>&1");
        $sRealOutput = file_get_contents($sTemp);

        unlink($sTemp);

        return $sRealOutput;
    } else {
        shell_exec($sCmd);
        return "";
    }
}

/*
 * simple interface for command line arguments
 */
class Arguments {
    public static $oInstance;

    public static function getInstance()
    {
        return Arguments::$oInstance
            ? Arguments::$oInstance
            : Arguments::$oInstance = new Arguments();
    }

    public function getArgumentByKey($sGivenKey, $sDefault = "")
    {
        global $argv;

        if ($argv) {
            foreach ($argv as $sKey => $sArg) {
                if ($sGivenKey == $sArg) {
                    return $argv[$sKey + 1];
                }
            }
        }

        return $sDefault;
    }

    public static function getArgumentByName($sGivenKey, $sDefault = "") {
        return self::getInstance()->getArgumentByKey($sGivenKey, $sDefault);
    }

    public function doesKeyExist($sGivenKey)
    {
        global $argv;

        return in_array($sGivenKey, $argv);
    }
}