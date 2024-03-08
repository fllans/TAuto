
using NUnit.Allure.Attributes;
using NUnit.Framework;

[assembly: Parallelizable(ParallelScope.Fixtures)]
[assembly: LevelOfParallelism(5)]
namespace ExchangeUtils.Tests.Features;

[TestFixture]
[AllureFeature]
[AllureDisplayIgnored]
[Parallelizable]
[Order(500)]
public partial class _00_SetUpTestFeature
{

}

[TestFixture]
[AllureFeature]
[AllureDisplayIgnored]
[Parallelizable]
[Order(1000)]
public partial class cpu850_RedFeature
{

}

[TestFixture]
[AllureFeature]
[AllureDisplayIgnored]
[Parallelizable]
[Order(3000)]
public partial class GwExFeature
{

}

[TestFixture]
[AllureFeature]
[AllureDisplayIgnored]
[Parallelizable]
[Order(5000)]
public partial class GwEx2Feature
{

}

[TestFixture]
[AllureFeature]
[AllureDisplayIgnored]
[Parallelizable]
[Order(7000)]
public partial class IcoreFeature
{

}

[TestFixture]
[AllureFeature]
[AllureDisplayIgnored]
[Parallelizable]
[Order(9000)]
public partial class iec104Feature
{

}

[TestFixture]
[AllureFeature]
[AllureDisplayIgnored]
[Parallelizable]
[Order(11000)]
public partial class ISaComClustFeature
{

}

[TestFixture]
[AllureFeature]
[AllureDisplayIgnored]
[Parallelizable]
[Order(13000)]
public partial class ISaComRedFeature
{

}

[TestFixture]
[AllureFeature]
[AllureDisplayIgnored]
[Parallelizable]
[Order(15000)]
public partial class OpcDaProxyFeature
{

}

[TestFixture]
[AllureFeature]
[AllureDisplayIgnored]
[Parallelizable]
[Order(17000)]
public partial class OpcUAFeature
{

}

[TestFixture]
[AllureFeature]
[AllureDisplayIgnored]
[Parallelizable]
[Order(19000)]
public partial class OpcUaParamFeature
{

}

[TestFixture]
[AllureFeature]
[AllureDisplayIgnored]
[Parallelizable]
[Order(21000)]
public partial class SNMPFeature
{

}
