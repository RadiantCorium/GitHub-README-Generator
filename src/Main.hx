package;

import sys.FileSystem;
import sys.io.File;
using StringTools;
class Main
{
    static var buffer:String = "";
    public static function main()
    {
        // Sys.println doesn't include any file or line number information.
        Sys.println("Github README Generator");
        Sys.println("=======================");
        Sys.println("NOTE: This is only designed to generate a basic README.md file for a github repository.\nIt is not designed to generate a full README.md file for a github repository.");
        Sys.print("Please enter the name of your project: ");
        buffer += "# " + Sys.stdin().readLine() + "\n";
        Sys.print("Please enter the description of your project: ");
        buffer += "## Description\n" + Sys.stdin().readLine() + "\n";
        Sys.print("Please enter a list of special features, seperated by a comma: ");
        buffer += "## Special Features\n";
        var features:Array<String> = Sys.stdin().readLine().split(",");
        for (feature in features)
        {
            buffer += "- " + feature.trim() + "\n";
        }
        Sys.print("Please enter a list of credits, seperated by a comma: ");
        buffer += "## Credits\n";
        var credits:Array<String> = Sys.stdin().readLine().split(",");
        for (credit in credits)
        {
            buffer += "- " + credit.trim() + "\n";
        }
        Sys.println("Generating README.md...");
        buffer += "\nGenerated using Github README Generator by thepercentageguy\n";
        File.saveContent("./README.md", buffer.trim());
        Sys.println("Your file has been saved to " + FileSystem.fullPath("./README.md"));
    }
}