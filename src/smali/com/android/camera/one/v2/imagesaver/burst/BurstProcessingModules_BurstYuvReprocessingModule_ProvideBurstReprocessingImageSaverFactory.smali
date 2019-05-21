.class public final Lcom/android/camera/one/v2/imagesaver/burst/BurstProcessingModules_BurstYuvReprocessingModule_ProvideBurstReprocessingImageSaverFactory;
.super Ljava/lang/Object;
.source "BurstProcessingModules_BurstYuvReprocessingModule_ProvideBurstReprocessingImageSaverFactory.java"

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
.field private final reprocessableImageSaverProvider:Ljavax/inject/Provider;
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
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/burst/BurstProcessingModules_BurstYuvReprocessingModule_ProvideBurstReprocessingImageSaverFactory;->reprocessableImageSaverProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p2, p0, Lcom/android/camera/one/v2/imagesaver/burst/BurstProcessingModules_BurstYuvReprocessingModule_ProvideBurstReprocessingImageSaverFactory;->reprocessingParametersProvider:Ljavax/inject/Provider;

    .line 32
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
    .line 46
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/burst/BurstProcessingModules_BurstYuvReprocessingModule_ProvideBurstReprocessingImageSaverFactory;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/one/v2/imagesaver/burst/BurstProcessingModules_BurstYuvReprocessingModule_ProvideBurstReprocessingImageSaverFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 14
    .line 1036
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/burst/BurstProcessingModules_BurstYuvReprocessingModule_ProvideBurstReprocessingImageSaverFactory;->reprocessableImageSaverProvider:Ljavax/inject/Provider;

    .line 1038
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;

    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/burst/BurstProcessingModules_BurstYuvReprocessingModule_ProvideBurstReprocessingImageSaverFactory;->reprocessingParametersProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 1037
    invoke-static {v0, v1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->provideBurstReprocessingImageSaver$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMASR1EPIN4BQ1EDSMSOQJD5N6ER3595MM2PR5ADGNCPBI7D66KOBMC4NNAT39DGNK6RRCDHIM6T39DTN3MAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TKMQOB7CLPM2TJ5E8NK2SRPDPHL6QBECTM6AIBDC5JMAKR1EPIN4EO_(Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;Ljava/util/Collection;)Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1036
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;

    .line 14
    return-object v0
.end method
