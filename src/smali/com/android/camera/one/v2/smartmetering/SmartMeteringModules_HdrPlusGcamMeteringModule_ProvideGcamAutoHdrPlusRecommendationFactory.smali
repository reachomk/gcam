.class public final Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_HdrPlusGcamMeteringModule_ProvideGcamAutoHdrPlusRecommendationFactory;
.super Ljava/lang/Object;
.source "SmartMeteringModules_HdrPlusGcamMeteringModule_ProvideGcamAutoHdrPlusRecommendationFactory.java"

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
.field private final aeResultsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/google/googlex/gcam/AeResults;",
            ">;>;"
        }
    .end annotation
.end field

.field private final oneCameraCharacteristicsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            ">;"
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
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/google/googlex/gcam/AeResults;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_HdrPlusGcamMeteringModule_ProvideGcamAutoHdrPlusRecommendationFactory;->oneCameraCharacteristicsProvider:Ljavax/inject/Provider;

    .line 25
    iput-object p2, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_HdrPlusGcamMeteringModule_ProvideGcamAutoHdrPlusRecommendationFactory;->aeResultsProvider:Ljavax/inject/Provider;

    .line 26
    return-void
.end method

.method public static create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Lcom/google/googlex/gcam/AeResults;",
            ">;>;)",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_HdrPlusGcamMeteringModule_ProvideGcamAutoHdrPlusRecommendationFactory;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_HdrPlusGcamMeteringModule_ProvideGcamAutoHdrPlusRecommendationFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 11
    .line 1030
    iget-object v0, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_HdrPlusGcamMeteringModule_ProvideGcamAutoHdrPlusRecommendationFactory;->oneCameraCharacteristicsProvider:Ljavax/inject/Provider;

    .line 1032
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/OneCameraCharacteristics;

    iget-object v1, p0, Lcom/android/camera/one/v2/smartmetering/SmartMeteringModules_HdrPlusGcamMeteringModule_ProvideGcamAutoHdrPlusRecommendationFactory;->aeResultsProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/async/Observable;

    .line 1031
    invoke-static {v0, v1}, Lcom/android/camera/one/v2/smartmetering/AutoFlashHdrPlusDecider;->provideGcamAutoHdrPlusRecommendation(Lcom/android/camera/one/OneCameraCharacteristics;Lcom/google/android/apps/camera/async/Observable;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1030
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/Observable;

    .line 11
    return-object v0
.end method
