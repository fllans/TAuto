namespace ExBinding.Tests;

using TestLib;
using TestLib.Archive;

internal class Global
{
#pragma warning disable CS8618 // Non-nullable field must contain a non-null value when exiting constructor. Consider declaring as nullable.
    internal static ArchiveData ArcWork { get; set; }
    internal static GeneralFunc GateWork { get; set; }
    internal static DataBaseSql DbConnect { get; set; }
    internal static RuntimeRW Runtime { get; set; }
#pragma warning restore CS8618 // Non-nullable field must contain a non-null value when exiting constructor. Consider declaring as nullable.
}