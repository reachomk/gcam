.class public final Lcom/android/camera/one/v2/imagesaver/ImageSaverModules_LuckyShotModule_ProvideImageSaverFactory;
.super Ljava/lang/Object;
.source "ImageSaverModules_LuckyShotModule_ProvideImageSaverFactory.java"

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
.field private final imageBackendProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/processing/imagebackend/ImageBackend;",
            ">;"
        }
    .end annotation
.end field

.field private final imageRotationCalculatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/ImageRotationCalculator;",
            ">;"
        }
    .end annotation
.end field

.field private final logProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/Logger$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final luckyShotMetricProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/processing/imagebackend/LuckyShotMetric;",
            ">;"
        }
    .end annotation
.end field

.field private final pictureConfigurationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/util/PictureConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final singleImageSaverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;",
            ">;"
        }
    .end annotation
.end field

.field private final tuningDataCollectorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollector;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/Logger$Factory;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/ImageRotationCalculator;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/processing/imagebackend/ImageBackend;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/util/PictureConfiguration;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollector;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/processing/imagebackend/LuckyShotMetric;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/ImageSaverModules_LuckyShotModule_ProvideImageSaverFactory;->logProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p2, p0, Lcom/android/camera/one/v2/imagesaver/ImageSaverModules_LuckyShotModule_ProvideImageSaverFactory;->imageRotationCalculatorProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p3, p0, Lcom/android/camera/one/v2/imagesaver/ImageSaverModules_LuckyShotModule_ProvideImageSaverFactory;->imageBackendProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p4, p0, Lcom/android/camera/one/v2/imagesaver/ImageSaverModules_LuckyShotModule_ProvideImageSaverFactory;->pictureConfigurationProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p5, p0, Lcom/android/camera/one/v2/imagesaver/ImageSaverModules_LuckyShotModule_ProvideImageSaverFactory;->singleImageSaverProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p6, p0, Lcom/android/camera/one/v2/imagesaver/ImageSaverModules_LuckyShotModule_ProvideImageSaverFactory;->tuningDataCollectorProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p7, p0, Lcom/android/camera/one/v2/imagesaver/ImageSaverModules_LuckyShotModule_ProvideImageSaverFactory;->luckyShotMetricProvider:Ljavax/inject/Provider;

    .line 53
    return-void
.end method

.method public static create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/Logger$Factory;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/ImageRotationCalculator;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/processing/imagebackend/ImageBackend;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/util/PictureConfiguration;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollector;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/processing/imagebackend/LuckyShotMetric;",
            ">;)",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/ImageSaverModules_LuckyShotModule_ProvideImageSaverFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/one/v2/imagesaver/ImageSaverModules_LuckyShotModule_ProvideImageSaverFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 7

    .prologue
    .line 14
    .line 1057
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/ImageSaverModules_LuckyShotModule_ProvideImageSaverFactory;->logProvider:Ljavax/inject/Provider;

    .line 1059
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/debug/Logger$Factory;

    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/ImageSaverModules_LuckyShotModule_ProvideImageSaverFactory;->imageRotationCalculatorProvider:Ljavax/inject/Provider;

    .line 1060
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/util/ImageRotationCalculator;

    iget-object v2, p0, Lcom/android/camera/one/v2/imagesaver/ImageSaverModules_LuckyShotModule_ProvideImageSaverFactory;->imageBackendProvider:Ljavax/inject/Provider;

    .line 1061
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/processing/imagebackend/ImageBackend;

    iget-object v3, p0, Lcom/android/camera/one/v2/imagesaver/ImageSaverModules_LuckyShotModule_ProvideImageSaverFactory;->pictureConfigurationProvider:Ljavax/inject/Provider;

    .line 1062
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/one/v2/util/PictureConfiguration;

    iget-object v4, p0, Lcom/android/camera/one/v2/imagesaver/ImageSaverModules_LuckyShotModule_ProvideImageSaverFactory;->singleImageSaverProvider:Ljavax/inject/Provider;

    .line 1063
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;

    iget-object v5, p0, Lcom/android/camera/one/v2/imagesaver/ImageSaverModules_LuckyShotModule_ProvideImageSaverFactory;->tuningDataCollectorProvider:Ljavax/inject/Provider;

    .line 1064
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollector;

    iget-object v6, p0, Lcom/android/camera/one/v2/imagesaver/ImageSaverModules_LuckyShotModule_ProvideImageSaverFactory;->luckyShotMetricProvider:Ljavax/inject/Provider;

    .line 1065
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/processing/imagebackend/LuckyShotMetric;

    .line 1058
    invoke-static/range {v0 .. v6}, Lcom/android/camera/one/v2/imagesaver/ImageSaverModules$JpegImageSaverModule;->provideImageSaver(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/util/ImageRotationCalculator;Lcom/android/camera/processing/imagebackend/ImageBackend;Lcom/android/camera/one/v2/util/PictureConfiguration;Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;Lcom/android/camera/one/v2/imagesaver/tuning/TuningDataCollector;Lcom/android/camera/processing/imagebackend/LuckyShotMetric;)Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1057
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;

    .line 14
    return-object v0
.end method
