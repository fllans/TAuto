namespace ExBinding.Tests;

using NUnitLite;
using TestLib;

internal class Program
{
    public static int Main(string[] args)
    {
        Connector.ApiKey = "y4imIiolOXohi5LkzKYBItuEjLIFWzSO6x91X8Tif54M+aYoqz0LcLYZCf8rAgXnlnkN4TRQCi2eog2Itqo25Q==|Wi+18KUPRtF/HgghcWdwp5VCB7EUZgBS1BhMH3q+/woeouF5enal9WgJBzDhM5hGuHpKNVXX970zNy4x5QWHmq4zUabhTkt1";
        return new AutoRun().Execute(args);
    }
}
