.class public final Lcom/android/camera/one/v2/imagesaver/tuning/TuningModules_NexusTuningModule_ProvideDataCollectorFactory;
.super Ljava/lang/Object;
.source "TuningModules_NexusTuningModule_ProvideDataCollectorFactory.java"

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
.field private final rawWriterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/tuning/RawWriter;",
            ">;"
        }
    .end annotation
.end field

.field private final tuningDataWriterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataWriter;",
            ">;"
        }
    .end annotation
.end field

.field private final yuvWriterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/tuning/YuvWriter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/tuning/RawWriter;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/tuning/YuvWriter;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataWriter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningModules_NexusTuningModule_ProvideDataCollectorFactory;->rawWriterProvider:Ljavax/inject/Provider;

    .line 24
    iput-object p2, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningModules_NexusTuningModule_ProvideDataCollectorFactory;->yuvWriterProvider:Ljavax/inject/Provider;

    .line 26
    iput-object p3, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningModules_NexusTuningModule_ProvideDataCollectorFactory;->tuningDataWriterProvider:Ljavax/inject/Provider;

    .line 27
    return-void
.end method

.method public static create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR55668OB7CTIN4BR9DPQ6ASJEC5M2UHJ1CDQ6USJP7C______(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/tuning/RawWriter;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/tuning/YuvWriter;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataWriter;",
            ">;)",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningModules_NexusTuningModule_ProvideDataCollectorFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/camera/one/v2/imagesaver/tuning/TuningModules_NexusTuningModule_ProvideDataCollectorFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 8
    .line 1031
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningModules_NexusTuningModule_ProvideDataCollectorFactory;->rawWriterProvider:Ljavax/inject/Provider;

    .line 1033
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagesaver/tuning/RawWriter;

    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningModules_NexusTuningModule_ProvideDataCollectorFactory;->yuvWriterProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/imagesaver/tuning/YuvWriter;

    iget-object v2, p0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningModules_NexusTuningModule_ProvideDataCollectorFactory;->tuningDataWriterProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataWriter;

    .line 1032
    invoke-static {v0, v1, v2}, Lcom/android/camera/one/v2/imagesaver/tuning/DebugOutputFileManager$Factory;->provideDataCollector(Lcom/android/camera/one/v2/imagesaver/tuning/RawWriter;Lcom/android/camera/one/v2/imagesaver/tuning/YuvWriter;Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataWriter;)Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollector;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1031
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollector;

    .line 8
    return-object v0
.end method
