namespace ExchangeUtils.Tests;

using TestLib;
using TestLib.Archive;
using Scada.SDK.Structs;

internal class Global
{
    /// <summary>
    /// Подключение к БД проекта
    /// </summary>
    internal static DataBaseSql DbConnect { get; set; }

    /// <summary>
    /// Подключение к основному Шлюзу Work
    /// </summary>
    internal static GeneralFunc Gate_Work { get; set; }

    /// <summary>
    /// Подключение к Шлюзу-генератору данных
    /// </summary>
    internal static GeneralFunc Gate_DataSrc { get; set; }

    /// <summary>
    /// Подключение к внешнему Шлюзу-приемнику
    /// </summary>
    internal static GeneralFunc Gate_DataReciv { get; set; }

    /// <summary>
    /// Подключение к Зеркалу основного Шлюза
    /// </summary>
    internal static GeneralFunc MirrorGate_Work { get; set; }

    /// <summary>
    /// Подключение к Зеркалу Шлюза-генератора
    /// </summary>
    internal static GeneralFunc MirrorGate_Src { get; set; }

    /// <summary>
    /// Подключение к Зеркалу внешнего Шлюза-приемника
    /// </summary>
    internal static GeneralFunc MirrorGate_Reciv { get; set; }

    /// <summary>
    /// Подключение к Основному Архиву Work
    /// </summary>
    internal static ArchiveData Archive_Work { get; set; }

    /// <summary>
    /// Подключение к Архиву генератора данных
    /// </summary>
    internal static ArchiveData Archive_DataSrc { get; set; }

    /// <summary>
    /// Подключение к Архиву внешнго Шлюзу-приемнику
    /// </summary>
    internal static ArchiveData Archive_DataReciv { get; set; }

    /// <summary>
    /// Подключение к Зеркалу Основному Архиву Work
    /// </summary>
    internal static ArchiveData MirrorArchive_Work { get; set; }

    /// <summary>
    /// Подключение к Зеркалу Архива генератора данных
    /// </summary>
    internal static ArchiveData MirrorArchive_DataSrc { get; set; }

    /// <summary>
    /// Подключение к Зекралу Архива внешнго Шлюзу-приемнику
    /// </summary>
    internal static ArchiveData MirrorArchive_DataReciv { get; set; }

    internal static GeneralFunc AnyConnect { get; set; }

    internal static string TestName { get; set; } = "ExchUtils";

    internal static UnsolicitedMessage[] EventsMessages { get; set; }
}