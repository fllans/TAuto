namespace ExchangeUtils.Tests;

using NUnitLite;
using TestLib;

internal class Program
{
    public static int Main(string[] args)
    {
        Connector.ApiKey = "5OIa01ByWG//Gs5EAIttVthuuV122qpIvmhLsrsJa3o7mZ1U2DShRIbhQ80uLfMWL/ez9cGRq90TOzzR3rw8ag==|Az8lXJJu5USVnay0ne8bLHLmAKtXQDSgbFBI0vvEcI4/5nQZgDp9n4rILR+Syr4c6wj9mXRRlcG32ZEH+8KRC9UX6RK+og5P";
        return new AutoRun().Execute(args);
    }
}
