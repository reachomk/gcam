.class public final Lcom/android/camera/one/v2/imagesaver/ImageSaverModules_Reprocessing_ProvideAsyncReprocessableImageSaverFactory;
.super Ljava/lang/Object;
.source "ImageSaverModules_Reprocessing_ProvideAsyncReprocessableImageSaverFactory.java"

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
.field private final fallbackSoftwareJpegImageSaverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver;",
            ">;"
        }
    .end annotation
.end field

.field private final reprocessingImageSaverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;",
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
            "Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/ImageSaverModules_Reprocessing_ProvideAsyncReprocessableImageSaverFactory;->reprocessingImageSaverProvider:Ljavax/inject/Provider;

    .line 23
    iput-object p2, p0, Lcom/android/camera/one/v2/imagesaver/ImageSaverModules_Reprocessing_ProvideAsyncReprocessableImageSaverFactory;->fallbackSoftwareJpegImageSaverProvider:Ljavax/inject/Provider;

    .line 24
    return-void
.end method

.method public static create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TIIJ34C5JMEPBI5TKMST35E9N62R1F8PGM6T3FE9SJM___(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver;",
            ">;)",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/ImageSaverModules_Reprocessing_ProvideAsyncReprocessableImageSaverFactory;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/one/v2/imagesaver/ImageSaverModules_Reprocessing_ProvideAsyncReprocessableImageSaverFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 10
    .line 1028
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/ImageSaverModules_Reprocessing_ProvideAsyncReprocessableImageSaverFactory;->reprocessingImageSaverProvider:Ljavax/inject/Provider;

    .line 1030
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;

    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/ImageSaverModules_Reprocessing_ProvideAsyncReprocessableImageSaverFactory;->fallbackSoftwareJpegImageSaverProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver;

    .line 1029
    invoke-static {v0, v1}, Lcom/android/camera/one/v2/imagesaver/ImageSaverModules$JpegImageSaverModule;->provideAsyncReprocessableImageSaver$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMASR1EPIN4BRICLO74RR3CLPN6QBECSNL4PBGE9NM6PBJEDKMSPQ9DLGMEPAJC5R6ASHR9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIN6OBMCLP2UKRFCPQ7EOBICL570PB795MM2PR5ADGNCPBI7CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BR9DLGMEPBJC5R6ASHF85PNIRJ3ADKMSPRCCL4MQOB7CL9M2TJ5E8TG____(Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingImageSaver;Lcom/android/camera/one/v2/imagesaver/SoftwareJpegImageSaver;)Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1028
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagesaver/AsyncImageProcessor;

    .line 10
    return-object v0
.end method
