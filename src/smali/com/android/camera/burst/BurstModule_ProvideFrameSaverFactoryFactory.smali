.class public final Lcom/android/camera/burst/BurstModule_ProvideFrameSaverFactoryFactory;
.super Ljava/lang/Object;
.source "BurstModule_ProvideFrameSaverFactoryFactory.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider;"
    }
.end annotation


# instance fields
.field private final imageSaverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private final reprocessingParametersProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/camera/one/v2/core/Request$Parameter",
            "<*>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/camera/one/v2/core/Request$Parameter",
            "<*>;>;>;)V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/camera/burst/BurstModule_ProvideFrameSaverFactoryFactory;->imageSaverProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p2, p0, Lcom/android/camera/burst/BurstModule_ProvideFrameSaverFactoryFactory;->reprocessingParametersProvider:Ljavax/inject/Provider;

    .line 28
    return-void
.end method

.method public static create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/camera/one/v2/core/Request$Parameter",
            "<*>;>;>;)",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Lcom/android/camera/burst/BurstModule_ProvideFrameSaverFactoryFactory;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/burst/BurstModule_ProvideFrameSaverFactoryFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 13
    .line 1032
    iget-object v0, p0, Lcom/android/camera/burst/BurstModule_ProvideFrameSaverFactoryFactory;->imageSaverProvider:Ljavax/inject/Provider;

    .line 1034
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;

    iget-object v1, p0, Lcom/android/camera/burst/BurstModule_ProvideFrameSaverFactoryFactory;->reprocessingParametersProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 1033
    invoke-static {v0, v1}, Lcom/android/camera/burst/BurstFacadeStub;->provideFrameSaverFactory$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMASR1EPIN4BQ1EDSMSOQJD5N6ER3595MM2PR5ADGNCPBI7D66KOBMC4NNAT39DGNK6RRCDHIM6T39DTN3MAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BR2ELP76T1F8PP62RB5ADGNCPBI8PGM6T3FE9SJM___(Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;Ljava/util/Collection;)Lcom/android/camera/memory/MemoryModule;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1032
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/memory/MemoryModule;

    .line 13
    return-object v0
.end method
