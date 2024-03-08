using NUnitLite;
using TestLib;

namespace ExReadWrite.Test.Steps;
internal class Program
{
    public static int Main(string[] args)
    {
        Connector.ApiKey = "RFhA8QdNDtR/EQ1SHYdz/W5r4g0ou66lo11upCMiOl1no7z6MFfwWEdAxOgv0ylY5wbttKrTgH6J8imRyMaJxw==|lnWnY9rRfCv+EkO9KOg83sRyWI4LLvlsHryWL515BNKl2ZK+kuEatYShuCSjYL7QfeT2qWPT9yioApn9UgO6+H14kTomcVbc";
        return new AutoRun().Execute(args);
    }
}