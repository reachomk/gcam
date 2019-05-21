.class public final Lcom/android/camera/one/v2/imagesaver/ImageSaverModules_SoftwareYuvImageSaverModule_ProvideImageSaverFactory;
.super Ljava/lang/Object;
.source "ImageSaverModules_SoftwareYuvImageSaverModule_ProvideImageSaverFactory.java"

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
.field private final adviceManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/advice/AdviceManager;",
            ">;"
        }
    .end annotation
.end field

.field private final flagsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/flags/Flags;",
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

.field private final imageSaverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/ImageRotationCalculator;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/advice/AdviceManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/flags/Flags;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/ImageSaverModules_SoftwareYuvImageSaverModule_ProvideImageSaverFactory;->imageRotationCalculatorProvider:Ljavax/inject/Provider;

    .line 30
    iput-object p2, p0, Lcom/android/camera/one/v2/imagesaver/ImageSaverModules_SoftwareYuvImageSaverModule_ProvideImageSaverFactory;->adviceManagerProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p3, p0, Lcom/android/camera/one/v2/imagesaver/ImageSaverModules_SoftwareYuvImageSaverModule_ProvideImageSaverFactory;->imageSaverProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p4, p0, Lcom/android/camera/one/v2/imagesaver/ImageSaverModules_SoftwareYuvImageSaverModule_ProvideImageSaverFactory;->flagsProvider:Ljavax/inject/Provider;

    .line 35
    return-void
.end method

.method public static create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MAACCHGMEPR5E8NMIRJKCLP6SOBC5T362ORKDTP7IEO_(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/ImageRotationCalculator;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/advice/AdviceManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/flags/Flags;",
            ">;)",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 53
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/ImageSaverModules_SoftwareYuvImageSaverModule_ProvideImageSaverFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/camera/one/v2/imagesaver/ImageSaverModules_SoftwareYuvImageSaverModule_ProvideImageSaverFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 11
    .line 1039
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/ImageSaverModules_SoftwareYuvImageSaverModule_ProvideImageSaverFactory;->imageRotationCalculatorProvider:Ljavax/inject/Provider;

    .line 1041
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/ImageRotationCalculator;

    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/ImageSaverModules_SoftwareYuvImageSaverModule_ProvideImageSaverFactory;->adviceManagerProvider:Ljavax/inject/Provider;

    .line 1042
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/advice/AdviceManager;

    iget-object v2, p0, Lcom/android/camera/one/v2/imagesaver/ImageSaverModules_SoftwareYuvImageSaverModule_ProvideImageSaverFactory;->imageSaverProvider:Ljavax/inject/Provider;

    .line 1043
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;

    iget-object v3, p0, Lcom/android/camera/one/v2/imagesaver/ImageSaverModules_SoftwareYuvImageSaverModule_ProvideImageSaverFactory;->flagsProvider:Ljavax/inject/Provider;

    .line 1044
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/util/flags/Flags;

    .line 1040
    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/one/v2/imagesaver/ImageSaverModules$JpegImageSaverModule;->provideImageSaver(Lcom/android/camera/util/ImageRotationCalculator;Lcom/android/camera/advice/AdviceManager;Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;Lcom/android/camera/util/flags/Flags;)Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1039
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagesaver/PreProcessedImageSaver;

    .line 11
    return-object v0
.end method
