.class public final Lcom/android/camera/one/v2/imagesaver/tuning/TuningModules_NullTuningModule_ProvideDataCollectorFactory;
.super Ljava/lang/Object;
.source "TuningModules_NullTuningModule_ProvideDataCollectorFactory.java"

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
.field private final loggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final noopWriterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/tuning/ProductionNoopImageWriter;",
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
            "Lcom/android/camera/one/v2/imagesaver/tuning/ProductionNoopImageWriter;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataLogger;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningModules_NullTuningModule_ProvideDataCollectorFactory;->noopWriterProvider:Ljavax/inject/Provider;

    .line 21
    iput-object p2, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningModules_NullTuningModule_ProvideDataCollectorFactory;->loggerProvider:Ljavax/inject/Provider;

    .line 22
    return-void
.end method

.method public static create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/tuning/ProductionNoopImageWriter;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataLogger;",
            ">;)",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 35
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningModules_NullTuningModule_ProvideDataCollectorFactory;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/one/v2/imagesaver/tuning/TuningModules_NullTuningModule_ProvideDataCollectorFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 8
    .line 1026
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningModules_NullTuningModule_ProvideDataCollectorFactory;->noopWriterProvider:Ljavax/inject/Provider;

    .line 1028
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagesaver/tuning/ProductionNoopImageWriter;

    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningModules_NullTuningModule_ProvideDataCollectorFactory;->loggerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataLogger;

    .line 1027
    invoke-static {v0, v1}, Lcom/android/camera/one/v2/imagesaver/tuning/DebugOutputFileManager$Factory;->provideDataCollector(Lcom/android/camera/one/v2/imagesaver/tuning/ProductionNoopImageWriter;Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataLogger;)Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollector;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1026
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollector;

    .line 8
    return-object v0
.end method
